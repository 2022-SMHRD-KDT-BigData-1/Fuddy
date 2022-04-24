package kr.smhrd.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PreventionVO {

	private int pv_num; //방제 신청번호
	private String u_id; //회원 아이디
	private String admin_id; //관리자 아이디
	private int p_num; //사진 번호
	private String pv_addr; //지번
	private String pv_area; //방제면적
	private String pv_crop; //작물명
	private String pv_date; //방제 신청일
	private String pv_st_dt; //방제 시작일
	private String pv_ed_dt; //방제 종료일
	private String pv_price; //방제 가격
	private String pv_disease; //작물 병명
	private String pv_drug; //방제 약
	private String pv_note; //특이사항

	public PreventionVO(String u_id) {

		this.u_id = u_id;
		}
}
