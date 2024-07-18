package com.javalab.board.vo;

import java.util.Date;

public class ProductVo {
	private int proId;			// 게시물번호	
	private int categoryKey_ID;		// 게시물 제목
	private String name;		// 게시물 내용
	private String img1;	// 게시물 작성자ID
	private String img2;
	private String img3;
	private String img4;
	private String img5;
	private String content;			// 조회수
	private int price ;		// 게시물 작성일자
	private double Discount;
	public int getProId() {
		return proId;
	}
	public void setProId(int proId) {
		this.proId = proId;
	}
	public int getCategoryKey_ID() {
		return categoryKey_ID;
	}
	public void setCategoryKey_ID(int category_ID) {
		this.categoryKey_ID = category_ID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	public String getImg3() {
		return img3;
	}
	public void setImg3(String img3) {
		this.img3 = img3;
	}
	public String getImg4() {
		return img4;
	}
	public void setImg4(String img4) {
		this.img4 = img4;
	}
	public String getImg5() {
		return img5;
	}
	public void setImg5(String img5) {
		this.img5 = img5;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public double getDiscount() {
		return Discount;
	}
	public void setDiscount(double discount) {
		Discount = discount;
	}
	@Override
	public String toString() {
		return "ProduckVo [proId=" + proId + ", categoryKey_ID=" + categoryKey_ID + ", name=" + name + ", img1=" + img1
				+ ", img2=" + img2 + ", img3=" + img3 + ", img4=" + img4 + ", img5=" + img5 + ", content=" + content
				+ ", price=" + price + ", Discount=" + Discount + "]";
	}
	
	
	
}
