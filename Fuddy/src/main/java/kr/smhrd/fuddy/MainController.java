package kr.smhrd.fuddy;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.pojo.BoardMapper;
import kr.smhrd.pojo.BoardVO;
import kr.smhrd.pojo.ImageVO;
import kr.smhrd.pojo.MemberVO;
import kr.smhrd.pojo.PreventionMapper;
import kr.smhrd.pojo.PreventionVO;

@Controller
public class MainController {
	@Inject
	private BoardMapper mapper; // 의존성주입(DI)!
	@Inject
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

	/*
	 * @RequestMapping("/Lookup.do") public String Lookup(HttpSession session, Model
	 * model) { System.out.println("방제 현황 이동 동작"); MemberVO info = (MemberVO)
	 * session.getAttribute("info"); String u_id = info.getU_id();
	 * System.out.println(u_id); List<PreventionVO> lookup =
	 * p_mapper.LookupSelect(u_id); System.out.println("성공");
	 * System.out.println(lookup); model.addAttribute("lookup", lookup); return
	 * "Lookup"; }
	 */

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
		// 마지막페이지
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

	@RequestMapping("/Spec_Drone.do")
	public void Spec_Drone() {
		System.out.println("드론 관리 이동 동작");
	}

	@RequestMapping("/Spec_Drug.do")
	public void Spec_Drug() {
		System.out.println("방제약 관리 이동 동작");
	}

	@RequestMapping("/AdminList.do")
	public void AdminList() {
		System.out.println("관리자 리스트 이동 동작");
	}

	@RequestMapping("/AdminCheck.do")
	public void AdminCheck() {
		System.out.println("관리자 체크 이동 동작");
	}

	@RequestMapping("/MembeCheck.do")
	public void MembeCheck() {
		System.out.println("회원 체크 이동 동작");
	}

	@RequestMapping("/MembeLookup.do")
	public void MembeLookup() {
		System.out.println("회원 방제 내역  이동 동작");
	}

	@RequestMapping("/PreventionList.do")
	public void PreventionList() {
		System.out.println(" 방제 내역 이동 동작");
	}

	@RequestMapping("/MyPrevention.do") // 완료
	public void MyPrevention(HttpSession session, Model model) {
		System.out.println("나의 방제 내역 이동 동작");
		MemberVO info = (MemberVO) session.getAttribute("info");
		String u_id = info.getU_id();
		List<PreventionVO> list = p_mapper.preventionList(u_id);
		System.out.println("list 확인용 : " + list);
		System.out.println("성공");
		model.addAttribute("list", list);

	}

	@RequestMapping("/MyLookup1.do")
	public String MyLookup(String pv_date, int pv_num, int p_num, HttpSession session, Model model) {
		System.out.println("방제 내역 이동 동작");

		pv_date = (String) session.getAttribute("pv_date");
		p_num = (int) session.getAttribute("p_num");
		List<PreventionVO> lookup = p_mapper.LookupSelect(pv_date);
		List<ImageVO> img = p_mapper.P_name(p_num);// 이미지  select
		for (int i = 0; i < img.size(); i++) {
			String p_folder = img.get(i).getP_folder(); // 폴더 이름 가져오기
			List<ImageVO> p_folderSelect = p_mapper.p_name(p_folder); // 파일 이름 가져오기
			model.addAttribute("p_folderSelect", p_folderSelect);
		}
		System.out.println("성공");
		model.addAttribute("lookup", lookup);
	
		return "MyLookup";
	}

}
