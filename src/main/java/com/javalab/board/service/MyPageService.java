package com.javalab.board.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javalab.board.mapper.MyPageMapper;
import com.javalab.board.vo.MemberVo;

@Service
public class MyPageService {

    @Autowired
    private MyPageMapper myPageMapper;

    public MemberVo getMember(String memberId) {
        return myPageMapper.getMember(memberId);
    }

    public int updateMember(MemberVo memberVo) {
        return myPageMapper.updateMember(memberVo);
    }

	/*
	 * public List<OrderVo> getOrderList(String memberId) { return
	 * myPageMapper.getOrderList(memberId); }
	 */

    // 추가적인 로직이 필요한 경우 여기에 작성합니다.
}
