package co.yedam.dolvomee.command.users;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.schedule.ScheduleService;
import co.yedam.dolvomee.service.schedule.ScheduleServiceImpl;
import co.yedam.dolvomee.service.schedule.ScheduleVO;

public class UsersCart implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		ScheduleService scheduleDao = new ScheduleServiceImpl();
		ScheduleVO vo = new ScheduleVO();
	
		
		vo.setUsersEmail((String)session.getAttribute("usersEmail"));
		
		vo = scheduleDao.selectSchedule(vo);
		request.setAttribute("cartList", vo);
		
		return "users/usersCart";
	}

}
