package kr.smhrd.fuddy;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.pojo.BoardMapper;
import kr.smhrd.pojo.BoardVO;
import kr.smhrd.pojo.PreventionMapper;
import kr.smhrd.pojo.PreventionVO;

@Controller
public class MainController {
	@Inject // autowired 보다 보안성이 좋다
	private BoardMapper mapper; // 의존성주입(DI)!
	private PreventionMapper p_mapper; // 의존성주입(DI)!

	@RequestMapping("/ImgInput.do")
	public void ImgInput() {
		System.out.println("이미지 업로드 이동 동작");
	}

	@RequestMapping("/ImgCheck.do")
	public void ImgCheck() {
		System.out.println("이미지 확인 이동 동작");
	}

	@RequestMapping("/ImgCom.do")
	public void ImgCom() {
		System.out.println("이미지 결과 확인 이동 동작");
	}

	@RequestMapping("/schedule.do")
	public void schedule() {
		System.out.println("스케줄 이동 동작");
	}

	@RequestMapping("/Lookup.do")
	public void Lookup(@RequestParam("pv_num") int pv_num, Model model) {
		PreventionVO lookup = p_mapper.LookupSelect(pv_num);
		model.addAttribute("lookup", lookup);
		System.out.println("방제 현황 이동 동작");
	}

	@RequestMapping("/Main.do")
	public void Main(Model model) {
		/*
		 * List<PreventionVO> PreventionList = p_mapper.pv_num();
		 * model.addAttribute("PreventionList", PreventionList);
		 */
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
	@RequestMapping("/AdminJoin.do")
	public void AdminJoin() {
		System.out.println("관리자 회원가입 이동 동작");
	}

	@RequestMapping("/Table2.do")
	public String Table(@RequestParam("pageNum") int pageNum, Model model, BoardVO page) {
		System.out.println("게시물 수" + pageNum);
		// 시작 게시물
		int postStart = 0;
		if (pageNum >= 1) {
			postStart = (pageNum - 1) * 10;
		}
		// 전체 게시글 수
		int amount = mapper.boardAmount();
		System.out.println(amount);
		// 마지막페이지w
		int endPageNum = (amount - 1) / 10 + 1;
		int postStart1 = postStart;
		System.out.println(postStart);
		List<BoardVO> list = mapper.Table(postStart);
		System.out.println("문의 게시판 이동 동작");
		model.addAttribute("endPageNum", endPageNum);
		model.addAttribute("postStart", postStart1);
		model.addAttribute("list", list);
		System.out.println("끝");
		return "Table";
	}

	@RequestMapping("/d_Table2.do")
	public String d_Table(@RequestParam("pageNum") int pageNum, Model model, BoardVO page) {
		System.out.println("게시물 수" + pageNum);

		// 시작 게시물
		int postStart = 0;

		if (pageNum >= 1) {
			postStart = (pageNum - 1) * 10;
		}
		// 전체 게시글 수
		int amount = mapper.boardAmount();
		System.out.println(amount);
		// 마지막페이지w
		int endPageNum = (amount - 1) / 10 + 1;
		int postStart1 = postStart;
		System.out.println(postStart);

		List<BoardVO> list = mapper.Table(postStart);
		System.out.println("문의 게시판 이동 동작");
		model.addAttribute("endPageNum", endPageNum);
		model.addAttribute("postStart", postStart1);
		model.addAttribute("list", list);
		System.out.println("끝");
		return "d_Table";
	}

	@RequestMapping("/Insert.do")
	public void Insert() {
		System.out.println("글작성 이동 동작");
	}

	@RequestMapping("/Prevention.do")
	public void Prevention() {
		System.out.println("방제신청 이동 동작");
	}

}
