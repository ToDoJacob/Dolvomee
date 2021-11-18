package co.yedam.dolvomee.command.schedule;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.schedule.ScheduleService;
import co.yedam.dolvomee.service.schedule.ScheduleServiceImpl;
import co.yedam.dolvomee.service.schedule.ScheduleVO;
import co.yedam.dolvomee.service.schedulebuf.ScheduleBufService;
import co.yedam.dolvomee.service.schedulebuf.ScheduleBufServiceImpl;
import co.yedam.dolvomee.service.schedulebuf.ScheduleBufVO;

public class ScheduleAdd implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 폼에서 받아온 데이터로 스케쥴과 스케쥴 버퍼를 등록하는 용도
		ScheduleService scheduleDao = new ScheduleServiceImpl();
		ScheduleVO svo = new ScheduleVO();
		ScheduleBufService scheduleBufDao = new ScheduleBufServiceImpl();
		ScheduleBufVO sbvo = new ScheduleBufVO();
		
		svo.setDolvEmail(request.getParameter("dolvEmail"));
		svo.setUsersEmail(request.getParameter("usersEmail"));
		svo.setScheduleStartSate(request.getParameter("scheduleStartDate"));
		svo.setScheduleEndDate(request.getParameter("scheduleEndDate"));
		
		scheduleDao.insertSchedule(svo);
		
		sbvo.setCategCode(request.getParameter("amCode"));
		sbvo.setDetailCode(request.getParameter("acCode"));
		
		scheduleBufDao.insertScheduleBuf(sbvo);
		
		
		return "users/usersCart";
	}

}
