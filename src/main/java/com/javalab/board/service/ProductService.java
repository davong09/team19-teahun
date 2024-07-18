package com.javalab.board.service;

import java.util.List;

import com.javalab.board.vo.ProductVo;


/**
 * ProductService 인터페이스
 *
 */
public interface ProductService {
	// 게시물 상세 보기
	public ProductVo getProduct(int proId); // 상품 디테일
	// 게시물 목록 보기
	public List<ProductVo> listProduct(); // 상품 리스트
	// 게시물 등록
	public int createProduct(ProductVo productVo); // 상품 추가
	// 게시물 업데이트
	public int updateProduct(ProductVo productVo); // 상품 수정
	// 게시물 삭제
	public int deleteProduct(int proId); // 상품 삭제

}
