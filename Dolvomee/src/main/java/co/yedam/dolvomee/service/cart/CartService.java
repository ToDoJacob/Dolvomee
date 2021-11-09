package co.yedam.dolvomee.service.cart;

import java.util.List;

public interface CartService {
	
	List<CartVO> selectCartList();
	List<CartVO> selectCart(CartVO vo);
	List<CartVO> selectCart2(CartVO vo);
	CartVO selectCart3(CartVO vo);
	int insertCart(CartVO vo);
	int deleteCart(CartVO vo);
	int updateCart(CartVO vo);
}
