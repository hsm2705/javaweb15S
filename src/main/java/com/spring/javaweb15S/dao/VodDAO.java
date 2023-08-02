package com.spring.javaweb15S.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.spring.javaweb15S.vo.VodVO;

public interface VodDAO {

	public ArrayList<VodVO> getVodPart();

	public ArrayList<VodVO> getPartVodList(@Param("part") String part);


}
