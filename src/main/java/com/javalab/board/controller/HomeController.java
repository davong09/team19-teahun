package com.javalab.board.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javalab.board.service.AdminService;
import com.javalab.board.service.MemberService;
import com.javalab.board.service.ProductService;
import com.javalab.board.vo.ProductVo;
import com.javalab.board.vo.ProductWithImageVo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private ProductService productService;

	@Autowired
	private AdminService adminService;
	
	@Autowired
	private MemberService memberService;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		return "/main"; // index.jsp
	}

	/**
	 * 신상품 목록 보기 메소드
	 */
	/*
	 * @GetMapping("/product1") public String listProduct(Model model) {
	 * List<ProductVo> productList = productService.listProduct();
	 * model.addAttribute("productList", productList); return
	 * "/product/productList"; // jsp 이름 }
	 */
	
	/*
	 * @GetMapping("/product1") public String listProducts(Model model) {
	 * List<ProductWithImageVo> productList = adminService.getAllProduct();
	 * model.addAttribute("productList", productList); return
	 * "/product/productList"; }
	 */
	
	@GetMapping("/list")
	public String listProducts(Model model) {
		List<ProductWithImageVo> productList = adminService.getAllProduct();
		model.addAttribute("productList", productList);
		return "/product/productList";
	}
	
	
	
}
