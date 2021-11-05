package co.yedam.dolvomee.command.dolvomee;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;

public class DolvRegisterForm implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 돌보미 회원가입 폼 호출 
		return "dolvomee/dolvRegisterForm.jsp";
	}

}
