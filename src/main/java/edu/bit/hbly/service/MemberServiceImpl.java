package edu.bit.hbly.service;

import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;

import edu.bit.hbly.dao.MemberDAO;
import edu.bit.hbly.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO manager;

	// memberjoin - id(email) check
	@Override
	public void checkId(String userId, HttpServletResponse response) throws Exception {
		PrintWriter out = response.getWriter();
		out.println(manager.checkId(userId));
		out.close();
		System.out.println("MemberServiceImpl checkId");
		System.out.println(userId);
		System.out.println(manager.checkId(userId));
	}

	// memberjoin - nickname check
	@Override
	public void checkNickname(String userNickname, HttpServletResponse response) throws Exception {
		PrintWriter out = response.getWriter();
		out.println(manager.checkNickname(userNickname));
		out.close();
	}

	// memberjoin
	@Override
	public int joinMember(MemberVO memberVO, HttpServletResponse response) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
	
		//test code2
		System.out.println("memberServiceImpl.java joinMembermethod");
		
		/*
		// 중복check ver1
		if (manager.checkId(memberVO.getUserId()) == 1) {
			out.println("<script>");
			out.println("alert('등록된 이메일 입니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
			return 0;
		} else if(manager.checkNickname(memberVO.getUserNickname()) == 1) {
			out.println("<script>");
			out.println("alert('사용중인 닉네임 입니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
			return 0;
		}
		else {
			manager.joinMember(memberVO);
			return 1;
		}
		*/
		
		// 중복check ver2
		manager.joinMember(memberVO);
		return 1;
	}

}
