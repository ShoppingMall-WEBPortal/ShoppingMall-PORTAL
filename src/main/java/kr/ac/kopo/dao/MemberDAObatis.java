package kr.ac.kopo.dao;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.vo.MemberVO;

public class MemberDAObatis {

	private SqlSession session;

	public MemberDAObatis() {
		session = new MyBatisConfig().getInstance();
	}
	
	public void insertMember(MemberVO member) {
		try {
			session.insert("member.dao.memberDAO.insertMember",member);
			session.commit();
		} catch (Exception e) {
			System.out.println("insertMember() 실패");
			e.printStackTrace();
		}
	}
}
