package edu.bit.hbly.service;

import javax.servlet.http.HttpServletResponse;

import edu.bit.hbly.vo.MemberVO;

public interface MemberService {

	// join - id check
	public void checkId(String userId, HttpServletResponse response) throws Exception;

	// join - nickname check
	public void checkNickname(String userNickname, HttpServletResponse response) throws Exception;

	// memberjoin
	public int joinMember(MemberVO memberVO, HttpServletResponse response) throws Exception;

}
