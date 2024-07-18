package com.javalab.board.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.javalab.board.vo.MemberVo;

/**
 * MyPageMapper 인터페이스
 * - MyPageService와 MyPageMapper.xml을 연결시켜주는 역할.
 */
@Mapper
public interface MyPageMapper {
    // 회원 정보 조회
    MemberVo getMember(@Param("memberId") String memberId);
    
    // 회원 정보 수정
    int updateMember(MemberVo memberVo);

    // 주문 내역 조회
    //List<OrderVo> getOrderList(@Param("memberId") String memberId);

    // 찜한 상품 조회
    //List<WishlistVo> getWishlist(@Param("memberId") String memberId);

    // 자주 구매한 상품 조회
    //List<FrequentPurchaseVo> getFrequentPurchases(@Param("memberId") String memberId);

    // 결제 수단 조회
    //List<PaymentMethodVo> getPaymentMethods(@Param("memberId") String memberId);

    // 상품 후기 조회
    //List<ReviewVo> getReviews(@Param("memberId") String memberId);

    // 상품 문의 조회
    //List<QuestionVo> getQuestions(@Param("memberId") String memberId);

    // 배송지 관리 조회
    //List<DeliveryAddressVo> getDeliveryAddresses(@Param("memberId") String memberId);
    
    // 배송지 추가
    //int addDeliveryAddress(DeliveryAddressVo deliveryAddressVo);
    
    // 배송지 삭제
    //int deleteDeliveryAddress(@Param("addressId") int addressId);
}

