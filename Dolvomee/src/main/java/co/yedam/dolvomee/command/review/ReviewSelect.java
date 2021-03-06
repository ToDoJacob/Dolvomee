package co.yedam.dolvomee.command.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.review.ReviewService;
import co.yedam.dolvomee.service.review.ReviewServiceImpl;
import co.yedam.dolvomee.service.review.ReviewVO;

public class ReviewSelect implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		ReviewService reviewDao = new ReviewServiceImpl();
		String usersEmail = (String)session.getAttribute("usersEmail");
		ReviewVO vo = new ReviewVO();
		
		vo.setRevNum(Integer.parseInt(request.getParameter("revNum")));
		
		
		request.setAttribute("review", reviewDao.selectReview(vo));
		request.setAttribute("users", reviewDao.selectImage(usersEmail));
		return "review/reviewSelect";
	}

}
