package co.yedam.dolvomee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;

public class HomeCommand implements Command {

	public String run(HttpServletRequest request, HttpServletResponse response) {
		return "home/home";
	}

}
