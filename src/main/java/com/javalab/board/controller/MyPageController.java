package com.javalab.board.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javalab.board.service.MyPageService;
import com.javalab.board.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/MyPage")
public class MyPageController {

    @Autowired
    private MyPageService myPageService;

    @GetMapping
    public String myPage(HttpSession session, Model model) {
        MemberVo memberVo = (MemberVo) session.getAttribute("memberVo");

        if (memberVo == null) {
        	log.info("난 login으로 간다");
            return "redirect:/"; // 로그인 페이지로 리다이렉트
        }

        // 필요한 로직 수행 (예: 추가 정보 가져오기 등)
        model.addAttribute("memberVo", memberVo);
        log.info("난 MyPage로 간다");
        return "MyPage"; // MyPage.jsp 또는 MyPage.html 같은 뷰 이름
    }
    
    
    
    @PostMapping("/update")
    public String updateMemberInfo(@ModelAttribute MemberVo updatedMemberVo, HttpSession session) {
    	log.info("updateMember : " + updatedMemberVo);
    	MemberVo logedMemberVo = (MemberVo) session.getAttribute("memberVo");
    	if (logedMemberVo != null) {
    		updatedMemberVo.setMemberId(logedMemberVo.getMemberId());
    	}
        // 수정된 회원 정보를 서비스를 통해 업데이트
        myPageService.updateMember(updatedMemberVo);
        
        // 업데이트 후 세션 정보도 갱신 (예: 이름 변경 시 세션 정보도 함께 변경)
        MemberVo updatedSessionMemberVo = myPageService.getMember(updatedMemberVo.getMemberId());
        session.setAttribute("memberVo", updatedSessionMemberVo);
        
        return "redirect:/MyPage";
    }

}
