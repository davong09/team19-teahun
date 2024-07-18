package com.javalab.board.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.javalab.board.service.AdminService;
import com.javalab.board.service.ProductService;
import com.javalab.board.vo.MemberVo;
import com.javalab.board.vo.ProductVo;
import com.javalab.board.vo.ProductWithImageVo;

import lombok.extern.slf4j.Slf4j;

/**
 * Board 컨트롤러 - 클라이언트 요청을 받는 메소드(핸들러)를 갖고 있는 클래스 - 받은 요청을 서비스 레이어로 전달하는 역할. -
 * 서비스로 부터 전달받은 쿼리결과를 model에 담고 담은 값을 보여줄 jsp 페이지 이름 리턴
 */
@Controller
@RequestMapping("/product") // 컨트롤러 차원의 Url 연결 문자열 설정
@Slf4j
public class ProductController {

	// Board 서비스 레이어 의존성 주입
	@Autowired
	private ProductService productService;

	@Autowired
	private AdminService adminService;

	/**
	 * 상품 내용 보기 메소드
	 */
	/*
	 * @GetMapping("/detail/{proId}") public String
	 * getProduct(@PathVariable("proId") int proId, Model model) {
	 * log.info("ProductController getProduct"); ProductVo productVo =
	 * productService.getProduct(proId); model.addAttribute("productVo", productVo);
	 * return "product/productDetail"; // jsp 이름 }
	 */
	
	@GetMapping("/detail/{proId}")
    public String productDetail(@PathVariable("proId") int proId, Model model) {
        ProductWithImageVo productWithImages = adminService.getProductWithAllImages(proId);
        model.addAttribute("productWithImageVo", productWithImages);
        return "/product/productDetail";
    }

	/**
	 * 상품 목록 보기 메소드
	 */
	@GetMapping("/list")
	public String listProducts(Model model) {
		List<ProductWithImageVo> productList = adminService.getAllProduct();
		model.addAttribute("productList", productList);
		return "/product/productList";
	}

}
