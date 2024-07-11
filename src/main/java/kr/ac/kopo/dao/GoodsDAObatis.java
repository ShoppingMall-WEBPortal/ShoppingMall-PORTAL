package kr.ac.kopo.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.vo.GoodsVO;

public class GoodsDAObatis {

	private SqlSession session;

	public GoodsDAObatis() {
		session = new MyBatisConfig().getInstance();
	}
	
	public List<GoodsVO> selectAdios() {
		
		List<GoodsVO> goodsList = new ArrayList<>();
		try {
			goodsList = session.selectList("goods.dao.goodsDAO.selectAdios");
			return goodsList;
		} catch (Exception e) {
			System.out.println("selectAdios() 실패");
			e.printStackTrace();
			return null;
		}
	}
	
	public List<GoodsVO> selectJeonBok() {
		
		List<GoodsVO> goodsList = new ArrayList<>();
		try {
			goodsList = session.selectList("goods.dao.goodsDAO.selectJeonBok");
			return goodsList;
		} catch (Exception e) {
			System.out.println("selectJeonBok() 실패");
			e.printStackTrace();
			return null;
		}
	}

	public List<GoodsVO> selectStoneAIsland() {
		
		List<GoodsVO> goodsList = new ArrayList<>();
		try {
			goodsList = session.selectList("goods.dao.goodsDAO.selectStoneAIsland");
			return goodsList;
		} catch (Exception e) {
			System.out.println("selectStoneAIsland() 실패");
			e.printStackTrace();
			return null;
		}
	}
	
}
