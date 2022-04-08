package kr.smhrd.fuddy;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.pojo.D_MemberMapper;
import kr.smhrd.pojo.D_MemberVO;

@Controller
public class D_MemberController {
	@Inject
	private D_MemberMapper mapper;
	
	@RequestMapping("/dlogin.do")
	private String dlogin(D_MemberVO vo, HttpSession session) {
      System.out.println("드론기사 로그인 기능");
		D_MemberVO d_info = mapper.dlogin(vo);
		
		
		//로그인 성공시에만 세션에 넣기
		if(d_info != null) {
			session.setAttribute("d_info", d_info);	
		}
		return "redirect:/Main.do";
	}

}
