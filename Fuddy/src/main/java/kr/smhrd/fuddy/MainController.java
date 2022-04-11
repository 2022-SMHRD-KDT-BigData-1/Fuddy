package kr.smhrd.fuddy;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.pojo.BoardMapper;
import kr.smhrd.pojo.BoardVO;

@Controller
public class MainController {
	@Inject // autowired 보다 보안성이 좋다
	private BoardMapper mapper; // 의존성주입(DI)!

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
		List<BoardVO> list = mapper.Table();
		System.out.println("문의 게시판 이동 동작");
		model.addAttribute("list", list);
		System.out.println(list);
	}
	@RequestMapping("/d_Table.do")
	public void d_Table(Model model) {
		List<BoardVO> list = mapper.d_Table();
		System.out.println("관리자 문의 게시판 이동 동작");
		model.addAttribute("list", list);
		System.out.println(list);
	}

	@RequestMapping("/Insert.do")
	public void Insert() {
		System.out.println("글작성 이동 동작");
	}
	@RequestMapping("/boardPaging.do")
	public void boardPaging() {
		System.out.println("이동 동작");
	}
}
