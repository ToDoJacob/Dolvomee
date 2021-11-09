package co.yedam.dolvomee.command.schedule;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.cart.CartService;
import co.yedam.dolvomee.service.cart.CartServiceImpl;
import co.yedam.dolvomee.service.cart.CartVO;

public class UsersCart implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		//회원 로그인시 장바구니 보이게 
		HttpSession session = request.getSession();
		session.getAttribute("usersEmail");
		CartService cartDao = new CartServiceImpl();
		CartVO vo = new CartVO();
		
		vo.setUsersEmail((String)session.getAttribute("usersEmail"));
		
		System.out.println((String)session.getAttribute("usersEmail")); //로그인한 이메일이 나옴 
		
		vo = cartDao.selectCart(vo); 
	
		System.out.println(vo);
		
		request.setAttribute("cart", vo);
		
	
		return "users/usersCart";
	}

}
