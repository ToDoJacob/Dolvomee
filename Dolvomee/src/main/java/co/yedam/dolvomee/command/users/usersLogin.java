package co.yedam.dolvomee.command.users;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.users.service.UsersService;
import co.yedam.dolvomee.users.service.UsersVO;
import co.yedam.dolvomee.users.serviceImpl.UsersServiceImpl;

public class usersLogin implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 로그인 처리
		HttpSession session = request.getSession();
		UsersService usersDao = new UsersServiceImpl();
		UsersVO vo = new UsersVO();
		vo.setUsersEmail(request.getParameter("usersEmail"));
		vo.setUsersPwd(request.getParameter("usersPwd"));
		vo = usersDao.selectUser(vo);
		String viewPage = null;
		if(vo != null) {
			session.setAttribute("usersEmail", vo.getUsersEmail());
			session.setAttribute("usersName", vo.getUsersName());
			session.setAttribute("usersAuthor", vo.getUsersAuthor());
			viewPage = "home.do";
		} else {
			viewPage = "usersLoginForm.do";
		}
		return viewPage;
	}

}
