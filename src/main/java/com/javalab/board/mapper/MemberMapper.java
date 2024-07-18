package com.javalab.board.mapper;

import com.javalab.board.vo.MemberVo;

public interface MemberMapper {

	/* 회원가입 */
	public void memberJoin(MemberVo member);

	/* 아이디 중복 검사 */
	public int idCheck(String memberId);
	
	/* 로그인 */
	public MemberVo memberLogin(MemberVo member);
	
	/* 주문자 주소 정보 */
	public MemberVo getMemberInfo(String memberId);		
	
}
