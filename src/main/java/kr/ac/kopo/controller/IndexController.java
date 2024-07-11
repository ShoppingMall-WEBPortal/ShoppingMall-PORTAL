package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.dao.GoodsDAObatis;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.GoodsVO;

public class IndexController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("Controller 테스트");
		GoodsDAObatis goodsbatis = new GoodsDAObatis();
		
		List<GoodsVO> goodsListAdios = goodsbatis.selectAdios();
		for(GoodsVO goods : goodsListAdios) {
			goods.setItemAddr("http://172.31.9.177:8080/ShoppingMall"+goods.getItemAddr());
		}
		
		List<GoodsVO> goodsListJeonBok = goodsbatis.selectJeonBok();
		
		List<GoodsVO> goodsListStoneAIsland = goodsbatis.selectStoneAIsland();
		for(GoodsVO goods : goodsListStoneAIsland) {
			goods.setItemAddr(goods.getItemAddr()+"00.jpg");
		}
		
		request.setAttribute("goodsList1", goodsListAdios);
		request.setAttribute("goodsList2", goodsListJeonBok);
		request.setAttribute("goodsList3", goodsListStoneAIsland);
		return "index.jsp";
	}

}
