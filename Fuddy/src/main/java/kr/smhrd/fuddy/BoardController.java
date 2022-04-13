package kr.smhrd.fuddy;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.pojo.BoardMapper;
import kr.smhrd.pojo.BoardVO;
import kr.smhrd.pojo.CommentVO;

@Controller
public class BoardController {

	@Inject
	private BoardMapper mapper;

	@RequestMapping("/boardInsert.do")
	public String boardInsert(BoardVO vo) {
		System.out.println("글작성 기능 동작");
		mapper.boardInsert(vo);
		return "redirect:/Table2.do?pageNum=" + 1 ;
	}

	@RequestMapping("/Select.do")
	public void Select(int q_num, Model model) {
		System.out.println("게시판 글 확인 기능 동작 성공!");
		// 게시판
		BoardVO board = mapper.Select(q_num);
		// 댓글 mapper
		List<CommentVO> comment_list = mapper.Select_Comment(q_num);
		model.addAttribute("vo", board);
		model.addAttribute("comment_list", comment_list);

		System.out.println(comment_list.toString());
	}

	@RequestMapping("/d_Select.do")
	public void d_Select(int q_num, Model model) {
		System.out.println("관리자 게시판 글 확인 기능 동작 성공!");
		// 게시판
		BoardVO board = mapper.Select(q_num);
		// 댓글 mapper
		List<CommentVO> d_comment_list = mapper.d_Select_Comment(q_num);
		model.addAttribute("vo", board);
		model.addAttribute("d_comment_list", d_comment_list);
		System.out.println(d_comment_list.toString());

	}

	@RequestMapping("/Comment.do")
	public String Comment(CommentVO vo) {
		System.out.println("게시판 댓글 기능 동작 성공!");
		// 조회수
		System.out.println(vo.getAdmin_id());
		System.out.println(vo.getCmt_content());
		System.out.println(vo.getQ_num());
		System.out.println(vo);

		mapper.Comment(vo);
		System.out.println("게시판 댓글 저장 완료");

		return "redirect:/d_Select.do?q_num=" + vo.getQ_num();
	}

}
