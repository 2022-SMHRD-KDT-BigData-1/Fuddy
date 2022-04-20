package kr.smhrd.pojo;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PreventionMapper {

	void PreventionInsert(PreventionVO vo);
	
	void imageInsert(ImageVO img);

	int p_num();

	List<ImageVO> imageSelect(ImageVO img);
	
	PreventionVO LookupSelect(int pv_num);

	List<PreventionVO> pv_num();

	List<DeepVO> deepSelect(HashMap<String, String> select);

}
