package edu.bit.hbly.dao;

import edu.bit.hbly.vo.MemberVO;

public interface MemberDAO {
	
	//join - id check
	public int checkId(String userId) throws Exception;

	//join - nickname check
	public int checkNickname(String userNickname) throws Exception;
	
	//memberjoin
	public int joinMember(MemberVO vo) throws Exception;

}
