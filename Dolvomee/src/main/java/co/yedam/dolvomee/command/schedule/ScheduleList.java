package co.yedam.dolvomee.command.schedule;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.dolvomee.DolvomeeService;
import co.yedam.dolvomee.service.dolvomee.DolvomeeServiceImpl;

public class ScheduleList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession(); 
		DolvomeeService dolvomeeDao = new DolvomeeServiceImpl();
				
		request.setAttribute("dolvs", dolvomeeDao.selectDolvomeeLsit());
		request.setAttribute("usersEmail", (String)session.getAttribute("usersEmail"));
		
		//vo.setDolvEmail(request.getParameter(""));
		//request.setAttribute("displaydolv", dolvomeeDao.selectDolvomee(null));
		
		
		return "schedule/scheduleList";
	}

}
