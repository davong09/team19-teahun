package com.javalab.board.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javalab.board.mapper.MemberMapper;
import com.javalab.board.vo.MemberVo;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberMapper membermapper;

	/* 회원가입 */
	@Override
	public void memberJoin(MemberVo member) throws Exception {
		
		membermapper.memberJoin(member);
		
	}

	/* 아이디 중복 검사 */
	@Override
	public int idCheck(String memberId) throws Exception {
		
		return membermapper.idCheck(memberId);
	}

	/* 로그인 */
	@Override
	public MemberVo memberLogin(MemberVo member) throws Exception {
		
		return membermapper.memberLogin(member);
	}
	
	/* 주문자 정보 */
	@Override
	public MemberVo getMemberInfo(String memberId) {
		
		return membermapper.getMemberInfo(memberId);
		
	}
	
	
	
}
