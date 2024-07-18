package com.javalab.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.javalab.board.vo.ImgVo;
import com.javalab.board.vo.ProductVo;
import com.javalab.board.vo.ProductWithImageVo;

public interface AdminMapper {
	
	/* 상품 등록*/
	public void productEnroll(ProductVo produck);
	
	/* 상품 디테일 조회 */
	ProductVo getProduct(int proId);

	/* 상품 리스트 조회 */
	List<ProductVo> listProduct();

	/* 상품 수정 */
	int updateProduct(ProductVo productVo);

	/* 상품 삭제 */
	int deleteProduct(int proId);

	void insertProduct(ProductVo product);

    //ProductVo getProduct(@Param("productId") Long productId);
    ProductWithImageVo getProductWithImages(@Param("proId") int proId);

    void insertImages(List<ImgVo> images);

    List<ProductWithImageVo> getAllProduct(); // 추가된 메소드
    
    ProductWithImageVo getProductWithAllImages(int proId);
}

