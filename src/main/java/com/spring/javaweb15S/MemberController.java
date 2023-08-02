package com.spring.javaweb15S;

import java.util.UUID;

import javax.mail.MessagingException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.spring.javaweb15S.pagination.PageProcess;
import com.spring.javaweb15S.service.MemberService;
import com.spring.javaweb15S.vo.MemberVO;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	PageProcess pageProcess;
	
	@Autowired
	JavaMailSender mailSender;
	
	@RequestMapping(value = "/memberLogin", method = RequestMethod.GET)
	public String memberLoginGet(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(int i=0; i<cookies.length; i++) {
				if(cookies[i].getName().equals("cMid")) {
					request.setAttribute("mid", cookies[i].getValue());
					break;
				}
			}
		}
		return "member/memberLogin";
	}
	
	// 카카오 로그인 완료후 수행할 내용들을 기술한다.
	@RequestMapping(value="/memberKakaoLogin", method=RequestMethod.GET)
	public String memberKakaoLoginGet(HttpSession session, HttpServletRequest request, HttpServletResponse response,
			String nickName,
			String email) throws MessagingException {
		
		session.setAttribute("sLogin", "kakao");
		
		// 카카오로그인한 회원이 현재 우리 회원인지를 조회한다.(메일주소 @앞의 값을 아이디로 간주하고 처리한다.)
		// 이미 가입된 회원이라면 바로 서비스를 사용하게 하고, 그렇지 않으면 강제로 회원 가입시킨다.
		MemberVO vo = memberService.getMemberNickNameEmailCheck(nickName, email);
		
		//System.out.println("vo : " + vo);
		
		// 현재 우리회원이 아니면 자동회원가입처리..(가입필수사항: 아이디,닉네임,이메일) - 아이디는 이메일주소의 '@'앞쪽 이름을 사용하기로 한다.
		if(vo == null) {
			// 아이디 결정하기
			String mid = email.substring(0, email.indexOf("@"));
			
			// 같은 아이디가 존재하면 가입할 수 없도록 처리했다.
			MemberVO vo2 = memberService.getMemberIdCheck(mid);
			if(vo2 != null) return "redirect:/message/midSameSearch";
			
			// 임시 비밀번호 발급하기(UUID 8자리로 발급하기로 한다. -> 발급후 암호화시켜 DB에 저장)
			UUID uid = UUID.randomUUID();
			String pwd = uid.toString().substring(0,8);
			session.setAttribute("sImsiPwd", pwd);	// 임시비밀번호를 발급하여 로그인후 변경처리하도록 한다.
			pwd = passwordEncoder.encode(pwd);
			
			// 새로 발급된 임시비밀번호를 메일로 전송처리한다.
			//  메일 처리부분... 생략함.
			mailSend(email, pwd);
			
			// 자동 회원 가입처리한다.
			memberService.setKakaoMemberInputOk(mid, pwd, nickName, email);
			
			// 가입 처리된 회원의 정보를 다시 읽어와서 vo에 담아준다.
			vo = memberService.getMemberIdCheck(mid);
		}
		// 만약에 탈퇴신청한 회원이 카카오로그인처리하였다라면 'userDel'필드를 'NO'로 업데이트한다.
		if(!vo.getUserDel().equals("NO")) {
			memberService.setMemberUserDelCheck(vo.getMid());
		}
		
		// 회원 인증처리된 경우 수행할 내용? strLevel처리, session에 필요한 자료를 저장, 쿠키값처리, 그날 방문자수 1 증가(방문포인트도 증가), ..
		String strLevel = "";
		if(vo.getLevel() == 0) strLevel = "관리자";
		else if(vo.getLevel() == 1) strLevel = "정회원";
		
		session.setAttribute("sLevel", vo.getLevel());
		session.setAttribute("sStrLevel", strLevel);
		session.setAttribute("sMid", vo.getMid());
		session.setAttribute("sNickName", vo.getNickName());
		
		return "redirect:/message/memberLoginOk?mid="+vo.getMid();
	}

	
	private void mailSend(String email, String pwd) {
		// TODO Auto-generated method stub
		
	}

	// 일반 로그인 ok 때 수행하는 곳
	@RequestMapping(value = "/memberLogin", method = RequestMethod.POST)
	public String memberLoginPost(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(name="mid", defaultValue = "", required=false) String mid,
			@RequestParam(name="pwd", defaultValue = "", required=false) String pwd,
			@RequestParam(name="idSave", defaultValue = "", required=false) String idSave,
			HttpSession session) {
		MemberVO vo = memberService.getMemberIdCheck(mid);
		
		if(vo != null && vo.getUserDel().equals("NO") && passwordEncoder.matches(pwd, vo.getPwd())) {
			// 회원 인증처리된 경우는? strLevel, session에 저장, 쿠키저장, 방문자수, 방문포인트증가....
			String strLevel = "";
			if(vo.getLevel() == 0) strLevel = "관리자";
			else if(vo.getLevel() == 1) strLevel = "정회원";
			
			session.setAttribute("sLevel", vo.getLevel());
			session.setAttribute("strLevel", strLevel);
			session.setAttribute("sMid", vo.getMid());
			session.setAttribute("sNickName", vo.getNickName());
			
			if(idSave.equals("on")) {
				Cookie cookie = new Cookie("cMid", mid);
				cookie.setMaxAge(60*60*24*7);
				response.addCookie(cookie);
			}
			else {
				Cookie[] cookies = request.getCookies();
				for(int i=0; i<cookies.length; i++) {
					if(cookies[i].getName().equals("cMid")) {
						cookies[i].setMaxAge(0);
						response.addCookie(cookies[i]);
						break;
					}
				}
			}
			return "redirect:/message/memberLoginOk?mid="+mid;
		}
		else {
			return "redirect:/message/memberLoginNo";
		}
	}
	
	@RequestMapping(value = "/memberLogout", method = RequestMethod.GET)
	public String memberLogoutGet(HttpSession session) {
		String mid = (String) session.getAttribute("sMid");
		
		session.invalidate();
		
		return "redirect:/message/memberLogout?mid="+mid;
	}
	
	@RequestMapping(value = "/memberJoin", method = RequestMethod.GET)
	public String memberJoinGet() {
		return "member/memberJoin";
	}
	
	@RequestMapping(value = "/memberJoin", method = RequestMethod.POST)
	public String memberJoinPost(MemberVO vo) {
		// 아이디 중복 체크
		if(memberService.getMemberIdCheck(vo.getMid()) != null) return "redirect:/message/idCheckNo";
		if(memberService.getMemberNickCheck(vo.getNickName()) != null) return "redirect:/message/nickCheckNo";
		
		
		// 비밀번호 암호화
		vo.setPwd(passwordEncoder.encode(vo.getPwd()));
		
		// 사진파일이 업로드되었으면 사진파일을 서버 파일시스템에 저장시켜준다.(서비스객체에서 수행처리한다.)
		// 체크가 완료되면 vo에 담긴 자료를 DB에 저장시켜준다.(회원가입)
		int res = memberService.setMemberJoinOk(vo);
		
		if(res == 1) return "redirect:/message/memberJoinOk";
		else return "redirect:/message/memberJoinNo";
	}
	
	// 아이디 중복체크
	@ResponseBody
	@RequestMapping(value = "/memberIdCheck", method = RequestMethod.POST)
	public String memberIdCheckPost(String mid) {
		MemberVO vo = memberService.getMemberIdCheck(mid);
		
		if(vo != null ) return "1";
		else return "0";
	}
	
	// 닉네임 중복체크
	@ResponseBody
	@RequestMapping(value = "/memberNickCheck", method = RequestMethod.POST)
	public String memberNickCheckPost(String nickName) {
		MemberVO vo = memberService.getMemberNickCheck(nickName);
		
		if(vo != null ) return "1";
		else return "0";
	}
	
	
	@RequestMapping(value = "/memberMain", method = RequestMethod.GET)
	public String memberMainGet(Model model, HttpSession session) {
		String mid = (String) session.getAttribute("sMid");
		MemberVO vo = memberService.getMemberIdCheck(mid);
		
		model.addAttribute("vo", vo);
		
		return "member/memberMain";
	}
	
	
	@RequestMapping(value = "/memberMain", method = RequestMethod.POST)
	public String memberMainPost(String mid, String pwd, Model model, HttpSession session) {
		
		MemberVO vo = memberService.getMemberIdCheck(mid);
		String sMid = (String) session.getAttribute("sMid");
		String sNickName = (String) session.getAttribute("sNickName");
		
		if(vo != null && passwordEncoder.matches(pwd, vo.getPwd())) {
			model.addAttribute("vo", vo);
			model.addAttribute("sMid", sMid);
			model.addAttribute("sNickName", sNickName);
			
			return "member/memberUpdate";
		}
		else {
			return "redirect:/message/memberPwdCheckNo2";
		}
	}
	
	
	
	
	

}
