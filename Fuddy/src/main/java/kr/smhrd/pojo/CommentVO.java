package kr.smhrd.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data // getter/setter 생성
@AllArgsConstructor // 생성자
@NoArgsConstructor // 기본생성자
public class CommentVO {

	private int cmt_num;
	private int q_num;
	private String cmt_content;
	private String admin_id;
	private String cmt_date;
	
	
}
