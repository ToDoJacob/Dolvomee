package co.yedam.dolvomee.command.users;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.users.UsersService;
import co.yedam.dolvomee.service.users.UsersServiceImpl;

public class UsersList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		//멤버 목록
		UsersService usersDao = new UsersServiceImpl();	
		request.setAttribute("users", usersDao.selectUserList());

		return "users/usersList.jsp";
	}

}
