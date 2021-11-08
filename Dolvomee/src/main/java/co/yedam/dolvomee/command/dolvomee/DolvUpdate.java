package co.yedam.dolvomee.command.dolvomee;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.dolvomee.DolvomeeService;
import co.yedam.dolvomee.service.dolvomee.DolvomeeServiceImpl;
import co.yedam.dolvomee.service.dolvomee.DolvomeeVO;

public class DolvUpdate implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		DolvomeeService dolvomeeDao = new DolvomeeServiceImpl();
		DolvomeeVO vo = new DolvomeeVO();

		vo.setDolvPwd(request.getParameter("dolvPwd"));
		vo.setDolvPhone(request.getParameter("dolvPhone"));
		vo.setDolvAddr(request.getParameter("dolvAddr"));
		//vo.setDolvImage(request.getParameter("dolvImage"));
		vo.setDolvIntro(request.getParameter("dolvIntro"));
		vo.setDolvAuthor(request.getParameter("dolvAuthor"));
		vo.setDolvEmail(request.getParameter("dolvEmail"));

		System.out.println(request.getParameter("dolvEmail"));

		int n = dolvomeeDao.updateDolvomee(vo);

		System.out.println(n);

		String viewPage = null;

		if (n != 0) {
			viewPage = "dolvomeeSelect.do";
		} else {
			viewPage = "home/home";
		}

		return viewPage;
	}

}
