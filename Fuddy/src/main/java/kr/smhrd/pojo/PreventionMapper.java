package kr.smhrd.pojo;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PreventionMapper {

	void PreventionInsert(PreventionVO vo);

	void image(HashMap<String, String> img);

	int p_num();

	List<ImageVO> imageSelect(int p_num);



}
