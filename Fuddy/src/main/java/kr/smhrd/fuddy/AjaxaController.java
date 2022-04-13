package kr.smhrd.fuddy;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.smhrd.pojo.MemberMapper;
import kr.smhrd.pojo.MemberVO;

@RestController
public class AjaxaController {

	@Inject
	private MemberMapper mapper;

	@RequestMapping("/idCheck.do")
	public MemberVO idCheck(String id) {

		System.out.println(id);

		MemberVO vo = mapper.idCheck(id);
		System.out.println(vo);

		if (vo == null) {
			vo = new MemberVO(); // null일 때 에러방지를 위해 아무것도 없는 MemberVO를 넣어준다
		}

		return vo;
	}

}
