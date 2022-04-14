package kr.smhrd.fuddy;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.pojo.PreventionMapper;
import kr.smhrd.pojo.PreventionVO;

@Controller
public class PreventionController {
	@Inject
	private PreventionMapper mapper;
	
	@RequestMapping("/PreventionInsert.do")
	public String PreventionInsert(PreventionVO vo) {
		System.out.println("방제 신청 기능 동작");
		mapper.PreventionInsert(vo);
		System.out.println(vo);
		return "redirect:/Main.do" ; //나중에 수정
	}
}
