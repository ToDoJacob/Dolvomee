package co.yedam.dolvomee.command.schedule;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.cart.CartService;
import co.yedam.dolvomee.service.cart.CartServiceImpl;

public class CartList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 구매 목록
		CartService cartDao = new CartServiceImpl();
		request.setAttribute("cart", cartDao.selectCartList());
		
		return "users/cartList";
	}

}
