package co.yedam.dolvomee.command.dolvomee;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.dolvomee.DolvomeeService;
import co.yedam.dolvomee.service.dolvomee.DolvomeeServiceImpl;
import co.yedam.dolvomee.service.dolvomee.DolvomeeVO;

public class DolvomeeDelete implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		//펫시터 삭제
		DolvomeeService dolvomeeDao = new DolvomeeServiceImpl();
		DolvomeeVO vo = new DolvomeeVO();
		vo.setDolvEmail(request.getParameter("dolvEmail"));
		
		System.out.println(request.getParameter("dolvEmail"));
		
		int n = dolvomeeDao.deleteDolvomee(vo);
		
		System.out.println(n);
		
		String viewPage = null;
		
		if ( n != 0) {
			viewPage = "dolvomeeList.do";
		}else {
			viewPage = "home/home";
		}
		
		return viewPage;
	}

}
