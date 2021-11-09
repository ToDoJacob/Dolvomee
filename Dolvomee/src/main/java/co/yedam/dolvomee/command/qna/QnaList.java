package co.yedam.dolvomee.command.qna;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.dolvomee.DolvomeeService;
import co.yedam.dolvomee.service.dolvomee.DolvomeeServiceImpl;

public class QnaList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		DolvomeeService dolvomeeDao = new DolvomeeServiceImpl();
		request.setAttribute("dolvomees", dolvomeeDao.selectDolvomeeLsit());
		
		return "qna/qnaList";
	}

}
