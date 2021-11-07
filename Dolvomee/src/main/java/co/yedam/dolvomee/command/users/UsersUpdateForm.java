package co.yedam.dolvomee.command.users;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.users.UsersService;
import co.yedam.dolvomee.service.users.UsersServiceImpl;
import co.yedam.dolvomee.service.users.UsersVO;

public class UsersUpdateForm implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		UsersService usersDao = new UsersServiceImpl();
		UsersVO vo = new UsersVO();

		vo.setUsersEmail(request.getParameter("usersEmail"));

		vo = usersDao.selectUser(vo);
		request.setAttribute("users", vo);

		return "users/usersUpdateForm";
	}

}
