package kr.smhrd.pojo;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {

	List<BoardVO> Table();

	BoardVO Select(int q_num);

	void boardInsert(BoardVO vo);

	List<BoardVO> d_Table();

	BoardVO d_Select(int q_num);

	void Comment(int q_num, String admin_id, String cmt_comment, CommentVO vo);

	List<CommentVO> Select_Comment(int q_num);

	List<CommentVO> d_Select_Comment(int q_num);



	
}
