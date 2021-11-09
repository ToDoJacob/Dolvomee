package co.yedam.dolvomee.command.schedule;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.dolvomee.DolvomeeService;
import co.yedam.dolvomee.service.dolvomee.DolvomeeServiceImpl;
import co.yedam.dolvomee.service.dolvomee.DolvomeeVO;

public class ScheduleList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 
		DolvomeeService dolvomeeDao = new DolvomeeServiceImpl();
		DolvomeeVO vo = new DolvomeeVO();
		
		request.setAttribute("dolvs", dolvomeeDao.selectDolvomeeLsit());
		
		//vo.setDolvEmail(request.getParameter(""));
		//request.setAttribute("displaydolv", dolvomeeDao.selectDolvomee(null));
		
		
		return "schedule/scheduleList";
	}

}
