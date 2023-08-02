package com.spring.javaweb15S.service;

import java.io.IOException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.spring.javaweb15S.common.JavawebProvide;
import com.spring.javaweb15S.dao.MemberDAO;
import com.spring.javaweb15S.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO memberDAO;
	
	@Override
	public MemberVO getMemberIdCheck(String mid) {
		return memberDAO.getMemberIdCheck(mid);
	}

	@Override
	public MemberVO getMemberNickCheck(String nickName) {
		return memberDAO.getMemberNickCheck(nickName);
	}

	@Override
	public int setMemberJoinOk(MemberVO vo) {
		int res = 0;
		
			memberDAO.setMemberJoinOk(vo);
			res = 1;
		return res;
	}

	@Override
	public MemberVO getMemberNickNameEmailCheck(String nickName, String email) {
		return memberDAO.getMemberNickNameEmailCheck(nickName, email);
	}

	@Override
	public void setKakaoMemberInputOk(String mid, String pwd, String nickName, String email) {
		
	}

	@Override
	public void setMemberUserDelCheck(String mid) {
		
	}


}
