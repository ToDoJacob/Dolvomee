package co.yedam.dolvomee.command.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;

public class ReviewForm implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		return "review/reviewForm";
	}

}
