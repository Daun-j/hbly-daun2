package edu.bit.hbly;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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

	// main form
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		logger.info("main page");
		return "home";
	}

	// join form
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String memberJoin() {
		logger.info("join page");
		return "memberJoinV1";
	}

	// memberjoin - id(email) check (Ajax)
	@RequestMapping(value = "/checkId", method = RequestMethod.GET)
	@ResponseBody
	public void checkId(@RequestParam("userId") String userId, HttpServletResponse response) throws Exception {
		logger.info("check Id");
		//test code
		System.out.println("HomeController checkId method");
		System.out.println(userId);
		service.checkId(userId, response);
	}

	// memberjoin - nickname check (Ajax)
	@RequestMapping(value = "/checkNickname", method = RequestMethod.GET)
	public void checkNickname(@RequestParam("userNickname") String userNickname, HttpServletResponse response) throws Exception {
		logger.info("check Nickname");
		System.out.println("HomeController checkNickname method");
		System.out.println(userNickname);
		service.checkNickname(userNickname, response);
	}
	
	// memberjoin
	@RequestMapping(value = "/joinMember", method = RequestMethod.POST)
	public String joinMember(@ModelAttribute MemberVO memberVO, RedirectAttributes rttr, HttpServletResponse response) throws Exception {
		logger.info("join Member");
		//test code1
		System.out.println(memberVO.getUserId());
		//memberjoin method
		service.joinMember(memberVO, response);
				
		return "test";
	}

}
