package com.javalab.board.service;

import com.javalab.board.vo.MemberVo;

public interface MemberService {

	/* 회원가입 */
	public void memberJoin(MemberVo member) throws Exception;
	
	/* 아이디 중복 검사 */
	public int idCheck(String memberId) throws Exception;
	
	/* 로그인 */
	public MemberVo memberLogin(MemberVo member) throws Exception;
	
	/* 주문자 정보 */
	public MemberVo getMemberInfo(String memberId);	
	
}
