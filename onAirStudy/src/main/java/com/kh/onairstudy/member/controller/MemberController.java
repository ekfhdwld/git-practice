package com.kh.onairstudy.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.onairstudy.member.model.service.MemberService;
import com.kh.onairstudy.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
//	@Autowired
//	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	//회원가입 POST
	@RequestMapping(value = "/memberEnroll.do",
					method = RequestMethod.POST)
	public String memberEnroll(RedirectAttributes redirectAttr, Member member) {
		
		//사용자 비밀번호 암호화 표시
//		String rawPassword = member.getPassword();
//		String encodePassword = bcryptPasswordEncoder.encode(rawPassword);
//		member.setPassword(encodePassword);
//		
		log.debug("member=" + member);
	
		
		int result = memberService.insertMember(member);
		String msg = result > 0 ? "회원가입성공!" : "회원가입실패!";
		redirectAttr.addFlashAttribute("msg", msg);
		
		
	return "rediret:/";
	}
	
	
	
}
