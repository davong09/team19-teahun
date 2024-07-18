package com.javalab.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.javalab.board.mapper.AdminMapper;
import com.javalab.board.vo.ImgVo;
import com.javalab.board.vo.ProductVo;
import com.javalab.board.vo.ProductWithImageVo;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper adminMapper;

	/* 상품 등록 */
	@Transactional
	@Override
	public void productEnroll(ProductVo product) {
		log.info("(service)productEnroll........");
		adminMapper.productEnroll(product);
	}

	/* 상품 디테일 조회 */
	@Override
	public ProductVo getProduct(int proId) {
		log.info("(service)getProduct........" + proId);
		return adminMapper.getProduct(proId);
	}

	/* 상품 리스트 조회 */
	@Override
	public List<ProductVo> listProduct() {
		log.info("(service)listProduct........");
		return adminMapper.listProduct();
	}

	/* 상품 수정 */
	@Transactional
	@Override
	public int updateProduct(ProductVo productVo) {
		log.info("(service)updateProduct........");
		return adminMapper.updateProduct(productVo);
	}

	/* 상품 삭제 */
	@Transactional
	@Override
	public int deleteProduct(int proId) {
		log.info("(service)deleteProduct........" + proId);
		return adminMapper.deleteProduct(proId);
	}
	
	// 이미지 추가 관련
	@Override
    public void addProduct(ProductVo product) {
		adminMapper.insertProduct(product);
    }

    @Override
    public ProductWithImageVo getProductWithImages(int proId) {
        return adminMapper.getProductWithImages(proId);
    }

    @Override
    public void insertImages(List<ImgVo> images) {
    	adminMapper.insertImages(images);
    }

    @Override
    public List<ProductWithImageVo> getAllProduct() {
        return adminMapper.getAllProduct(); // 추가된 메소드
    }
    
    @Override
    public ProductWithImageVo getProductWithAllImages(int proId) {
        return adminMapper.getProductWithAllImages(proId);
    }

}