package edu.bit.hbly;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.bit.hbly.service.MemberService;
import edu.bit.hbly.vo.MemberVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Inject
	private MemberService service;

	//@Inject
	//BCryptPasswordEncoder bcryptPasswordEncoder;
	
	
	// pageㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

	// main form
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		logger.info("main page");
		return "home";
	}

	// main market form
	@RequestMapping(value = "/market", method = RequestMethod.GET)
	public String home2() {
		logger.info("main market page");
		return "homemarket";
	}

	// join form
	@RequestMapping(value = "/goodsInfo", method = RequestMethod.GET)
	public String goodsInfo() {
		logger.info("goodsInfo page");
		return "goodsInfo";
	}

	// login form
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		logger.info("login page");
		return "login";
	}

	// join form
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String memberJoin() {
		logger.info("join page");
		return "memberJoinV1";
	}

	// joinㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

	// memberjoin - id(email) check (Ajax)
	@RequestMapping(value = "/checkId", method = RequestMethod.GET)
	@ResponseBody
	public void checkId(@RequestParam("userId") String userId, HttpServletResponse response) throws Exception {
		logger.info("check Id");
		// test code
		System.out.println("HomeController checkId method");
		System.out.println(userId);
		service.checkId(userId, response);
	}

	// memberjoin - nickname check (Ajax)
	@RequestMapping(value = "/checkNickname", method = RequestMethod.GET)
	public void checkNickname(@RequestParam("userNickname") String userNickname, HttpServletResponse response)
			throws Exception {
		logger.info("check Nickname");
		System.out.println("HomeController checkNickname method");
		System.out.println(userNickname);
		service.checkNickname(userNickname, response);
	}

	// memberjoin
	@RequestMapping(value = "/joinMember", method = RequestMethod.POST)
	public String joinMember(@ModelAttribute MemberVO memberVO, RedirectAttributes rttr, HttpServletResponse response)
			throws Exception {
		logger.info("join Member");
		// test code1
		System.out.println(memberVO.getUserId());
		// memberjoin method
		service.joinMember(memberVO, response);

		return "test";
	}

	// ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

	// login get
//	@RequestMapping(value = "/signin", method = RequestMethod.GET)
//	public void getSignin() throws Exception {
//		logger.info("get signin");
//	}
//
//	// login post
//	@RequestMapping(value = "/signin", method = RequestMethod.POST)
//	public String postSignin(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
//		logger.info("post signin");
//
//		MemberVO login = service.signin(vo);
//		HttpSession session = req.getSession();
//
//		boolean passwordMatch = bcryptPasswordEncoder.matches(vo.getUserPassword(), login.getUserPassword());
//
//		if (login != null && passwordMatch) {
//			session.setAttribute("member", login);
//		} else {
//			session.setAttribute("member", null);
//			rttr.addFlashAttribute("msg", false);
//			return "redirect:/member/signin";
//		}
//
//		return "redirect:/";
//	}
//
//	// 로그아웃
//	@RequestMapping(value = "/signout", method = RequestMethod.GET)
//	public String signout(HttpSession session) throws Exception {
//		logger.info("get logout");
//
//		service.signout(session);
//
//		return "redirect:/";
//	}

}
