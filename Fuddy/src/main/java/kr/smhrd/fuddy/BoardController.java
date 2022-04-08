package kr.smhrd.fuddy;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.pojo.BoardMapper;
import kr.smhrd.pojo.BoardVO;

@Controller
public class BoardController {

	@Inject
	private BoardMapper mapper;

	@RequestMapping("/boardInsert.do")
	public String boardInsert(BoardVO vo) {
		mapper.boardInsert(vo);

		return "redirect:/Table.do";
	}

}
