package kr.smhrd.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ImageVO {

	private int p_num; 
	private String u_id; 
	private String p_name; 
	private String p_path; 
	private String p_date; 
}
