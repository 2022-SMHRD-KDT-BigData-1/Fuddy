package kr.smhrd.pojo;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {
	
	public void joinInsert(MemberVO vo);


	public MemberVO loginSelect(MemberVO vo);


	public MemberVO idCheck(String id);


		

}
