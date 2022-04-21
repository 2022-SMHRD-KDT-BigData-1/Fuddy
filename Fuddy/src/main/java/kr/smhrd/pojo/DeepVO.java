package kr.smhrd.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DeepVO {

	private int deep_num;
	private String u_id;
	private int p_num;
	private String deep_path;
	private String deep_name;
	private String deep_folder;
	private String deep_result1;
	private String deep_result0;
	private String deep_date;
	
	public DeepVO(String u_id, String deep_folder) {
		super();
		this.u_id = u_id;
		this.deep_folder = deep_folder;
	}

}
