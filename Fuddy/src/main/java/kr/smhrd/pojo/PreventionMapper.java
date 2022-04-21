package kr.smhrd.pojo;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PreventionMapper {

	List<DeepVO> PreventionInsert(PreventionVO vo);
	
	void imageInsert(ImageVO img);

	List<ImageVO> imageSelect(ImageVO img);
	
	PreventionVO LookupSelect(int pv_num);

	List<PreventionVO> pv_num();

	List<DeepVO> deepSelect(DeepVO deepCheck);

	int AdminAmount();

	D_MemberVO AdminSelect(String admin_id);
	



}
