package co.yedam.dolvomee.command.dolvomee;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.dolvomee.DolvomeeService;
import co.yedam.dolvomee.service.dolvomee.DolvomeeServiceImpl;
import co.yedam.dolvomee.service.dolvomee.DolvomeeVO;

public class DolvUpdateForm implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		DolvomeeService dolvomeeDao = new DolvomeeServiceImpl();
		DolvomeeVO vo = new DolvomeeVO();
		
		vo.setDolvEmail(request.getParameter("dolvEmail"));
		vo = dolvomeeDao.selectDolvomee(vo);
		request.setAttribute("dolvomee", vo);
		
		return "dolvomee/dolvUpdateForm";
	}

}
