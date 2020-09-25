package edu.bit.hbly.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import edu.bit.hbly.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject
	private SqlSession sql = null;
	
	//memberjoin - id(email) check
	@Override
	public int checkId(String userId) throws Exception{
		return sql.selectOne("member.checkId", userId);
	};
	
	//memberjoin - nickname check
	@Override
	public int checkNickname(String userNickname) throws Exception{
		return sql.selectOne("member.checkNickname", userNickname);
	};
	
	//memberjoin
	@Override
	public int joinMember(MemberVO memberVO) throws Exception{
		return sql.insert("member.joinMember",memberVO);
	}
	
	
	
}
