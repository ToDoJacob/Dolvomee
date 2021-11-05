package co.yedam.dolvomee.command.users;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;

public class UsersRegisterForm implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 사용자회원가입 폼 호출
		return "users/usersRegisterForm.jsp";
	}

}
