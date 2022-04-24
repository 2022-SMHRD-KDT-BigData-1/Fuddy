package kr.smhrd.pojo;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PreventionMapper {

	void PreventionInsert(PreventionVO vo);

	void imageInsert(ImageVO img);

	List<ImageVO> imageSelect(ImageVO img);

	List<DeepVO> deepSelect(DeepVO deepCheck);

	int AdminAmount();

	D_MemberVO AdminSelect(String admin_id);

	List<PreventionVO> preventionList(String u_id);

	List<PreventionVO> LookupSelect(String pv_date);

	List<ImageVO> MylookupImage(String p_folder);

	void lookupUpdate(PreventionVO vo);

	List<ImageVO> P_name(int p_num);

	List<ImageVO> p_name(String p_folder);

}
