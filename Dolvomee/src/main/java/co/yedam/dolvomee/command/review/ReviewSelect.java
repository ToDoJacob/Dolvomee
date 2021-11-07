package co.yedam.dolvomee.command.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.review.ReviewService;
import co.yedam.dolvomee.service.review.ReviewServiceImpl;
import co.yedam.dolvomee.service.review.ReviewVO;

public class ReviewSelect implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		ReviewService reviewDao = new ReviewServiceImpl();
		ReviewVO vo = new ReviewVO();
		vo.setRevNum(Integer.parseInt(request.getParameter("revNum")));
		request.setAttribute("review", reviewDao.selectReview(vo));
		System.out.println(reviewDao.selectReview(vo).getRevLike());
		return "review/reviewSelect";
	}

}
