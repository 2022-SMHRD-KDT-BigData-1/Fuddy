package kr.smhrd.pojo;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface D_MemberMapper {

	D_MemberVO dlogin(D_MemberVO vo);

//	D_MemberVO AdminSelect(String admin_id);

	
}
