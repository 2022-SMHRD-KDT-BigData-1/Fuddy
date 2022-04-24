package kr.smhrd.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ImageVO {

	private int p_num; //사진번호
	private String u_id; //회원 아이디
	private String p_path; //사진 경로
	private String p_folder; //폴더 이름
	private String p_name; //사진 이름
	private String p_date; //등록 날짜
	
	public ImageVO(String u_id, String p_folder) {

		this.u_id = u_id;
		this.p_folder = p_folder;

	}

	
	
}
