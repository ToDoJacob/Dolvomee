package co.yedam.dolvomee.command.schedule;

import java.util.ArrayList;
import java.util.List;

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
		List<CartVO> list1 = new ArrayList<>();
		List<CartVO> list2 = new ArrayList<>();
		
		HttpSession session = request.getSession();
		session.getAttribute("usersEmail");
		
		CartService cartDao = new CartServiceImpl();
		
		CartVO vo = new CartVO();  //상태가 결제대기인 것만 출력해주기
		CartVO vo2 = new CartVO();	// 상태가 결제완료인 것만 출력해주기
		CartVO vo3 = new CartVO(); //
		
		vo.setUsersEmail((String)session.getAttribute("usersEmail"));
		System.out.println((String)session.getAttribute("usersEmail")); //로그인한 이메일이 나옴 
		vo2.setUsersEmail((String)session.getAttribute("usersEmail"));
		vo3.setUsersEmail((String)session.getAttribute("usersEmail"));
		
		list1 = cartDao.selectCart(vo); 
		System.out.println(vo);
		list2 = cartDao.selectCart2(vo2); 
		
		vo3 = cartDao.selectCart3(vo3);
				
		vo.toString();
		
		System.out.println(vo);
		System.out.println(vo2);
		
		request.setAttribute("carts", list1);
		request.setAttribute("carts2", list2);
		request.setAttribute("cart3", vo3);
	
		return "users/usersCart";
		
	}

}
