package kr.smhrd.fuddy;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mysql.cj.Session;

import kr.smhrd.pojo.MemberMapper;
import kr.smhrd.pojo.MemberVO;

@Controller
public class MemberController {

	@Inject
	private MemberMapper mapper;

	@RequestMapping("/joinInsert.do")
	public String joinInsert(MemberVO vo) {
		System.out.println("회원가입 기능 동작");
		mapper.joinInsert(vo);
		return "redirect:/Main.do";
	}

	@RequestMapping("/loginSelect.do")
	public String loginSelect(MemberVO vo, HttpSession session) {
		System.out.println("로그인 기능 동작");
		MemberVO info = mapper.loginSelect(vo);
		if (info != null) {
			session.setAttribute("info", info);

		}
		return "redirect:/Main.do";
	}

	@RequestMapping("/logout.do")
	public void logout(HttpSession session) {
		Object info = session.getAttribute("info");
		System.out.println("로그아웃 기능 동작");
		if (info != null) {
			session.removeAttribute("info");
			System.out.println("사용자 로그아웃");
		} else {
			System.out.println("관리자 로그아웃");
			session.removeAttribute("d_info");
			// session.invalidate();  
		}
	}
}
