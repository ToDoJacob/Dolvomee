package co.yedam.dolvomee.command.users;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.users.UsersService;
import co.yedam.dolvomee.service.users.UsersServiceImpl;
import co.yedam.dolvomee.service.users.UsersVO;

public class UsersDelete implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {

		UsersService usersDao = new UsersServiceImpl();
		UsersVO vo = new UsersVO();
		vo.setUsersEmail(request.getParameter("usersEmail"));
		
		System.out.println(request.getParameter("usersEmail"));
		
		int n = usersDao.deleteUser(vo);
		
		System.out.println(n);
		
		String viewPage = null;
		if (n != 0) {
			viewPage = "usersList";
		} else {
			viewPage = "home/home";
		}

		return viewPage;
	}

}
