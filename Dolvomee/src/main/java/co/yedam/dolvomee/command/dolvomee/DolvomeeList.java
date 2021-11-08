package co.yedam.dolvomee.command.dolvomee;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.dolvomee.DolvomeeService;
import co.yedam.dolvomee.service.dolvomee.DolvomeeServiceImpl;

public class DolvomeeList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		//펫시터 목록
		DolvomeeService dolvomeeDao = new DolvomeeServiceImpl();
		request.setAttribute("dolvomees", dolvomeeDao.selectDolvomeeLsit());
		
		return "dolvomee/dolvomeeList";
	}

}
