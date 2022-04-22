package kr.smhrd.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data // getter/setter 생성
@AllArgsConstructor // 생성자
@NoArgsConstructor // 기본생성자
public class BoardVO {

	private int q_num;
	private String q_title;
	private String q_content;
	private String u_id;
	private String q_date;

	
}
