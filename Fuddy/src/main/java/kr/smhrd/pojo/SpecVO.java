package kr.smhrd.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SpecVO {

	private int spec_seq; 
	private int admin_id; 
	private int spec_name; 
	private int spec_cnt; 
	private int spec_note; 
}
