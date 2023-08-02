package com.spring.javaweb15S.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.javaweb15S.dao.AdminDAO;
import com.spring.javaweb15S.vo.InquiryReplyVO;
import com.spring.javaweb15S.vo.InquiryVO;
import com.spring.javaweb15S.vo.QrCodeVO;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	AdminDAO adminDAO;
	
	@Override
	public ArrayList<QrCodeVO> getInquiryListAdmin(int startIndexNo, int pageSize, String part) {
		return adminDAO.getInquiryListAdmin(startIndexNo, pageSize, part);
	}

	@Override
	public InquiryVO getInquiryContent(int idx) {
		return adminDAO.getInquiryContent(idx);
	}

	@Override
	public void setInquiryInputAdmin(InquiryReplyVO vo) {
		adminDAO.setInquiryInputAdmin(vo);
	}

	@Override
	public InquiryReplyVO getInquiryReplyContent(int idx) {
		return adminDAO.getInquiryReplyContent(idx);
	}

	@Override
	public void setInquiryReplyUpdate(InquiryReplyVO reVO) {
		adminDAO.setInquiryReplyUpdate(reVO);
	}

	@Override
	public void setInquiryReplyDelete(int reIdx) {
		adminDAO.setInquiryReplyDelete(reIdx);
	}

	@Override
	public void setInquiryUpdateAdmin(int inquiryIdx) {
		adminDAO.setInquiryUpdateAdmin(inquiryIdx);
	}

	@Override
	public void setInquiryUpdateAdmin2(int inquiryIdx) {
		adminDAO.setInquiryUpdateAdmin2(inquiryIdx);
	}
	
}
