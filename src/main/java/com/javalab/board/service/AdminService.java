package com.javalab.board.service;

import java.util.List;

import com.javalab.board.vo.ImgVo;
import com.javalab.board.vo.ProductVo;
/*import com.vam.model.AttachImageVO;
import com.vam.model.BookVO;
import com.vam.model.CateVO;
import com.vam.model.Criteria;
import com.vam.model.OrderDTO;*/
import com.javalab.board.vo.ProductWithImageVo;

public interface AdminService {

	/* 상품 등록 */
	public void productEnroll(ProductVo product);

	public ProductVo getProduct(int proId); // 상품 디테일
	 //* 카테고리 리스트 
	 //public List<CateVO> cateList();
	  
	 //* 상품 리스트 
	public List<ProductVo> listProduct(); // 상품 리스트
	  
	  //상품 총 개수 
	 //public int goodsGetTotal(Criteria cri);
	  
	 //* 상품 조회 페이지 
	 //public BookVO goodsGetDetail(int bookId);
	 
	 //* 상품 수정 
	public int updateProduct(ProductVo productVo); // 상품 수정
	  
	 //* 상품 정보 삭제 
	public int deleteProduct(int proId); // 상품 삭제
	  
	 //* 지정 상품 이미지 정보 얻기 
	 //public List<AttachImageVO> getAttachInfo(int bookId);
	  
	 //* 주문 상품 리스트 
	 //public List<OrderDTO> getOrderList(Criteria cri);
	  
	 //* 주문 총 갯수 
	 //public int getOrderTotal(Criteria cri);
	 

	// 이미지 추가 관련
	void addProduct(ProductVo product);
    ProductWithImageVo getProductWithImages(int proId);
    void insertImages(List<ImgVo> images); 
    List<ProductWithImageVo> getAllProduct(); 
    ProductWithImageVo getProductWithAllImages(int proId);
}
