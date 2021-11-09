package co.yedam.dolvomee.service.cart;

import java.util.List;

public interface CartMapper {
	
	List<CartVO> selectCartList();
	CartVO selectCart(CartVO vo);
	int insertCart(CartVO vo);
	int deleteCart(CartVO vo);
	int updateCart(CartVO vo);
}
