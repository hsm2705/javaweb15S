package com.spring.javaweb15S.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.javaweb15S.dao.VodDAO;
import com.spring.javaweb15S.vo.VodVO;

@Service
public class VodServiceImpl implements VodService {
	
	@Autowired
	VodDAO vodDAO;

	@Override
	public ArrayList<VodVO> getVodPart() {
		return vodDAO.getVodPart();
	}

	@Override
	public ArrayList<VodVO> getPartVodList(String part) {
		return vodDAO.getPartVodList(part);
	}


}
