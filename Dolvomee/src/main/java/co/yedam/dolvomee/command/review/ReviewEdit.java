package co.yedam.dolvomee.command.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.review.ReviewService;
import co.yedam.dolvomee.service.review.ReviewServiceImpl;
import co.yedam.dolvomee.service.review.ReviewVO;

public class ReviewEdit implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		ReviewService reviewDao = new ReviewServiceImpl();
		ReviewVO vo = new ReviewVO();
		vo.setRevNum(Integer.parseInt(request.getParameter("revNum")));
		vo.setRevLike(Integer.parseInt(request.getParameter("modRevLike")));
		vo.setRevContents((String)request.getParameter("modContents"));
		
		int n = reviewDao.updateReview(vo);
		if(n == 1) {
			request.setAttribute("message", "수정이 완료되었습니다.");
		} else {
			request.setAttribute("message", "수정에 실패하였습니다.");
		}
		
		return "review/reviewError.jsp";
	}
}
