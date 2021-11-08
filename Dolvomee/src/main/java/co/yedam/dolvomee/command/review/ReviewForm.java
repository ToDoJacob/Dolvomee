package co.yedam.dolvomee.command.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.review.ReviewService;
import co.yedam.dolvomee.service.review.ReviewServiceImpl;

public class ReviewForm implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		ReviewService reviewDao = new ReviewServiceImpl();
		String usersEmail = (String)session.getAttribute("usersEmail");
		request.setAttribute("user", reviewDao.selectImage(usersEmail));
		
		
		return "review/reviewForm";
	}

}
