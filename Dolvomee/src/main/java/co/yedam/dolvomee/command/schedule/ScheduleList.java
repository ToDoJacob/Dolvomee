package co.yedam.dolvomee.command.schedule;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;

public class ScheduleList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 
		return "schedule/scheduleList";
	}

}
