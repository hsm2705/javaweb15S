package com.spring.javaweb15S.service;

import java.util.ArrayList;

import com.spring.javaweb15S.vo.VodVO;

public interface VodService {

	public ArrayList<VodVO> getVodPart();

	public ArrayList<VodVO> getPartVodList(String part);

}
