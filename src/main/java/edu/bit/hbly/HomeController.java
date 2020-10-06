package edu.bit.hbly;

import java.util.HashMap;
import java.util.Map;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.binary.Base64;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.bit.hbly.service.MemberService;
import edu.bit.hbly.vo.MemberVO;
import edu.bit.hbly.vo.MessageVO;

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
		System.out.println(memberVO.getUserGender());
		System.out.println(memberVO.getUserId());
		// memberjoin method
		service.joinMember(memberVO, response);

		return "test";
	}
	
	// test
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(@ModelAttribute MemberVO memberVO, RedirectAttributes rttr, HttpServletResponse response)
			throws Exception {
		logger.info("test");

		return "test2";
	}
	
	// memberjoin - phonenumber check / sms send -- 1
	@RequestMapping(value = "/sms", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<String> supporterSms(@RequestBody String jsonData) throws Exception {
		
		System.out.println(jsonData.toString());
		Map<String,String> signature = makeSignature();
		
		//요청 URL HTTP : POST https://sens.apigw.ntruss.com/sms/v2/services/{serviceId}/messages
		//{serviceId} : 프로젝트 등록 시 발급받은 서비스 아이디 : ncp:sms:kr:260797945287:hbly_sms
		String url = "https://sens.apigw.ntruss.com/sms/v2/services/ncp:sms:kr:260797945287:hbly_sms/messages";

		HttpHeaders headers = new HttpHeaders();
		headers.set("Content-Type", "application/json; charset=UTF-8");
		headers.set("x-ncp-apigw-timestamp", signature.get("timestamp"));
		headers.set("x-ncp-iam-access-key", signature.get("accessKey"));
		headers.set("x-ncp-apigw-signature-v2", signature.get("signature"));
		
		HttpEntity<String> request = new HttpEntity<String>(jsonData,headers);
		
		RestTemplate rt = new RestTemplate();
		ResponseEntity<String> responseEntity = rt.postForEntity(url, request, String.class);
		
		return responseEntity;
	}
	
	// memberjoin - phonenumber check / sms send -- 2 making signature	
	public Map<String,String> makeSignature() throws Exception {
		String space = " ";						// one space
		String newLine = "\n";					// new line
		String method = "POST";					// method
		String url = "/sms/v2/services/ncp:sms:kr:260797945287:hbly_sms/messages";	// url (include query string)
		String timestamp = System.currentTimeMillis()+"";			// current timestamp (epoch)
		String accessKey = "JdlX8LeIrOsfM2oDZyZb";			// access key id (from portal or Sub Account)
		String secretKey = "E98bFDlrbeEmvUuyupDQr8jKZvhZh8CXj5lSMTNA";
		
		String message = new StringBuilder()
			.append(method)
			.append(space)
			.append(url)
			.append(newLine)
			.append(timestamp)
			.append(newLine)
			.append(accessKey)
			.toString();

		SecretKeySpec signingKey = new SecretKeySpec(secretKey.getBytes("UTF-8"), "HmacSHA256");
		Mac mac = Mac.getInstance("HmacSHA256");
		mac.init(signingKey);

		byte[] rawHmac = mac.doFinal(message.getBytes("UTF-8"));
		String encodeBase64String = Base64.encodeBase64String(rawHmac);
		
		Map<String,String> map = new HashMap<String,String>();
		map.put("signature", encodeBase64String);
		map.put("accessKey", accessKey);
		map.put("timestamp", timestamp);

	  return map;
	}


}
