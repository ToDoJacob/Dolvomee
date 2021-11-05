package co.yedam.dolvomee.command.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.service.ServiceService;
import co.yedam.dolvomee.service.service.ServiceServiceImpl;

public class ServiceList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		ServiceService serviceDAO = new ServiceServiceImpl();
		request.setAttribute("services", serviceDAO.selectServiceList());
		return "service/serviceList";
	}

}
