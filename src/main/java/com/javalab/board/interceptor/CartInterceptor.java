package com.javalab.board.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.javalab.board.vo.MemberVo;

public class CartInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession session = request.getSession();
		
		MemberVo mvo = (MemberVo)session.getAttribute("member");
		
		if(mvo == null) {
			response.sendRedirect("/main");
			return false;
		} else {
			return true;
		}		
		
	}

	
	
}
