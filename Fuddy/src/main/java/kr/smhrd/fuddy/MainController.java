package kr.smhrd.fuddy;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("/Main.do")
	public void Main() {
		System.out.println("메인 이동 동작");
	}
	@RequestMapping("/Login.do")
	public void Login() {
		System.out.println("로그인 이동 동작");
	}
	@RequestMapping("/Join.do")
	public void Join() {
		System.out.println("회원가입 이동 동작");
	}
	@RequestMapping("/Table.do")
	public void Table(Model model) {
		List<Board> list = model.Table();
		mo
		System.out.println("문의 게시판 이동 동작");
	}
	@RequestMapping("/Insert.do")
	public void Insert() {
		System.out.println("글작성 이동 동작");
	}
	
	}
	
