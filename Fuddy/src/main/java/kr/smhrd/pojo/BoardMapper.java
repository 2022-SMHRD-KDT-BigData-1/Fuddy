package kr.smhrd.pojo;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {

	void boardInsert(BoardVO vo);



}
