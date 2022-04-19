package kr.smhrd.pojo;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface BoardMapper {

	List<BoardVO> Table(int postStart);

	BoardVO Select(int q_num);

	void boardInsert(BoardVO vo);

	List<BoardVO> d_Table(int postStart);

	BoardVO d_Select(int q_num);

	List<CommentVO> Select_Comment(int q_num);

	List<CommentVO> d_Select_Comment(int q_num);

	void Comment(CommentVO vo);

	int boardAmount();






	
}
