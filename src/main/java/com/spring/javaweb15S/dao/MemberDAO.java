package com.spring.javaweb15S.dao;

import org.apache.ibatis.annotations.Param;

import com.spring.javaweb15S.vo.MemberVO;

public interface MemberDAO {
	
	public MemberVO getMemberIdCheck(@Param("mid") String mid);

	public MemberVO getMemberNickCheck(@Param("nickName") String nickName);

	public int setMemberJoinOk(@Param("vo") MemberVO vo);

	public int totRecCnt(@Param("mid") String mid);

	public MemberVO getMemberNickNameEmailCheck(@Param("nickName") String nickName, @Param("email") String email);

}
