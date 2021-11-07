package co.yedam.dolvomee.command.dolvomee;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.dolvomee.DolvomeeService;
import co.yedam.dolvomee.service.dolvomee.DolvomeeServiceImpl;
import co.yedam.dolvomee.service.dolvomee.DolvomeeVO;

public class DolvLogin implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 돌보미 로그인 처리
		HttpSession session = request.getSession();
		DolvomeeService dolvDao = new DolvomeeServiceImpl();
		DolvomeeVO dvo = new DolvomeeVO();
		dvo.setDolvEmail(request.getParameter("usersEmail"));
		dvo.setDolvPwd(request.getParameter("usersPwd"));
		dvo = dolvDao.loginDolv(dvo);
		
		String viewPage = null;
		if(dvo != null) {
			session.setAttribute("dolvEmail", dvo.getDolvEmail());
			session.setAttribute("dolvName", dvo.getDolvName());
			session.setAttribute("dolvAuthor", dvo.getDolvAuthor());
			viewPage = "home.do";
		}	
		return viewPage;
	}

}
