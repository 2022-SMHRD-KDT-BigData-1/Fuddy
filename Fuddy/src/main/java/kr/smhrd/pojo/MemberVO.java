package kr.smhrd.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data //getter/setter 생성
@AllArgsConstructor //생성자
@NoArgsConstructor //기본생성자
public class MemberVO {

	private String u_id;
	private String u_pw;
	private String u_name;
	private String u_gender;
	private String u_phone;
	private String u_addr;
	private String u_email;
}
