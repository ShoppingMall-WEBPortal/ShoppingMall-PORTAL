package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.dao.MemberDAObatis;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.MemberVO;

public class SignUpProcessController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email")+"@"+request.getParameter("domain");
		//String date = request.getParameter("birthday");
		String gender = request.getParameter("genderType");
		int postCode = Integer.parseInt(request.getParameter("postcode"));
		String homeAddr = request.getParameter("basicAddr");
		String detailAddr = request.getParameter("detailAddr");
		
		if(gender.equals("1") || gender.equals("3")) {
			gender = "M";
		}else {
			gender = "F";
		}
		
		MemberVO member = new MemberVO();
		member.setId(id);
		member.setPassword(password);
		member.setName(name);
		member.setPhone(phone);
		member.setGender(gender);
		member.setEmail(email);
		member.setPostCode(postCode);
		member.setHome_address(homeAddr);
		member.setDetail_address(detailAddr);
		
		MemberDAObatis memberbatis = new MemberDAObatis();
		memberbatis.insertMember(member);
		
		return "shoppingmallPortalWEB.do";
	}

}
