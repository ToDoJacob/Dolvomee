package co.yedam.dolvomee.command.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.review.ReviewService;

public class ReviewList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		
		ReviewService reviewDao = new ReviewServiceImpl();
		
		request.setAttribute("reviews", reviewDao.selectReviewList());
		
		return "review/reviewList";
	}

}
