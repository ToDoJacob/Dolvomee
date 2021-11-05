package co.yedam.dolvomee.command.users;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.users.UsersService;
import co.yedam.dolvomee.service.users.UsersServiceImpl;
import co.yedam.dolvomee.service.users.UsersVO;

public class UsersRegister implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 사용자회원가입 처리
		UsersService usersDao = new UsersServiceImpl();
		UsersVO vo = new UsersVO();
		vo.setUsersEmail(request.getParameter("usersEmail"));
		vo.setUsersName(request.getParameter("usersName"));
		vo.setUsersPwd(request.getParameter("usersPwd"));
		vo.setUsersPhone(request.getParameter("usersPhone"));
		vo.setUsersAddr(request.getParameter("usersAddr"));
		vo.setUsersAuthor(request.getParameter("usersAuthor"));
		
		int n = usersDao.insertUser(vo);
		String viewPage = null;
		if (n != 0) {
			viewPage = "usersLoginForm.do";
		} else {
			request.setAttribute("message", "회원가입이 정상적으로 처리되지 않았습니다.");
			viewPage = "users/usersError";
		}
		return viewPage;
	}

}
