package kr.smhrd.pojo;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PreventionMapper {

	void PreventionInsert(PreventionVO vo);

}
