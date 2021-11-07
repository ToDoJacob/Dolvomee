package co.yedam.dolvomee.command.dolvomee;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.dolvomee.DolvomeeService;
import co.yedam.dolvomee.service.dolvomee.DolvomeeServiceImpl;
import co.yedam.dolvomee.service.dolvomee.DolvomeeVO;

public class DolvRegister implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 돌보미 회원가입 처리
		DolvomeeService dolvomeeDao = new DolvomeeServiceImpl();
		DolvomeeVO vo = new DolvomeeVO();
		vo.setDolvEmail(request.getParameter("dolvEmail"));
		vo.setDolvName(request.getParameter("dolvName"));
		vo.setDolvPwd(request.getParameter("dolvPwd"));
		vo.setDolvPhone(request.getParameter("dolvPhone"));
		vo.setDolvAddr(request.getParameter("dolvAddr"));
		vo.setDolvCareer(request.getParameter("dolvCareer"));
		vo.setDolvIntro(request.getParameter("dolvIntro"));
		vo.setDolvAuthor(request.getParameter("dolvAuthor"));
		
		int n = dolvomeeDao.insertDolvomee(vo);
		String viewPage = null;
		if(n != 0) {
			viewPage = "usersLoginForm.do";
		} else {
			request.setAttribute("message", "회원가입이 정상적으로 처리되지 않았습니다.");
			viewPage = "users/usersError";
		}
		
		return viewPage;
		
	}

}
