package co.yedam.dolvomee.command.users;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.cartlist.CartListService;
import co.yedam.dolvomee.service.cartlist.CartListServiceImpl;
import co.yedam.dolvomee.service.cartlist.CartListVO;

public class UsersCart implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		CartListService CartListDao = new CartListServiceImpl();
		CartListVO vo = new CartListVO();
	
		
		vo.setUsersEmail((String)session.getAttribute("usersEmail"));
		
		vo = CartListDao.selectCart(vo);
		request.setAttribute("cartList", vo);
		
		return "users/usersCart";
	}

}
