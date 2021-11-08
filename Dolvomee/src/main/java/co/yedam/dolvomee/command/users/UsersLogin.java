package co.yedam.dolvomee.command.users;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.users.UsersService;
import co.yedam.dolvomee.service.users.UsersServiceImpl;
import co.yedam.dolvomee.service.users.UsersVO;

public class UsersLogin implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 로그인 처리
		HttpSession session = request.getSession();
		UsersService usersDao = new UsersServiceImpl();
		UsersVO vo = new UsersVO();
		vo.setUsersEmail(request.getParameter("usersEmail"));
		System.out.println(vo.getUsersEmail());
		vo.setUsersPwd(request.getParameter("usersPwd"));
		
		vo = usersDao.loginUser(vo);
		String viewPage = null;
		System.out.println(vo);
		if(vo != null) {
			session.setAttribute("usersEmail", vo.getUsersEmail());
			session.setAttribute("usersName", vo.getUsersName());
			session.setAttribute("usersAuthor", vo.getUsersAuthor());
			viewPage = "home.do";
		} else {
			request.setAttribute("message", "로그인이 정상적으로 처리되지 않았습니다.");
			viewPage = "users/usersError";
		}
		return viewPage;
	}

}
