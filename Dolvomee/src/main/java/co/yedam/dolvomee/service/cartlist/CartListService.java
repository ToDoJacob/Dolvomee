package co.yedam.dolvomee.service.cartlist;

import java.util.List;

public interface CartListService {
	List<CartListVO> selectCartList();
	CartListVO selectCart(CartListVO vo);
	int insertCart(CartListVO vo);
	int updateCart(CartListVO vo);
	int deleteCart(CartListVO vo);
}
