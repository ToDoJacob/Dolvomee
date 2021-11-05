package co.yedam.dolvomee.command.users;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.users.UsersService;
import co.yedam.dolvomee.service.users.UsersServiceImpl;
import co.yedam.dolvomee.service.users.UsersVO;

public class UsersSelect implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		//회원 세부내역
		UsersService usersDao = new UsersServiceImpl();
		UsersVO vo = new UsersVO();
		
		vo.setUsersEmail(request.getParameter("usersEmail"));
		
		System.out.println(request.getParameter("usersEmail"));
		
		vo = usersDao.selectUser(vo);
		request.setAttribute("users", vo);
		
		return "users/usersSelect";
	}

}
