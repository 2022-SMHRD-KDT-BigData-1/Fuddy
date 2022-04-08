package kr.smhrd.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data // getter/setter 생성
@AllArgsConstructor // 생성자
@NoArgsConstructor // 기본생성자
public class D_MemberVO {

	private String admin_id;
	private String admin_pw;
	private String admin_name;
	private String admin_gender;
	private String admin_tel;
	private String admin_sales_region;
	private String admin_hopeness;
	private String admin_license;
}
