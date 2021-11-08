package co.yedam.dolvomee.command.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.review.ReviewService;
import co.yedam.dolvomee.service.review.ReviewServiceImpl;
import co.yedam.dolvomee.service.review.ReviewVO;

public class ReviewInsert implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		ReviewService reviewDao = new ReviewServiceImpl();
		ReviewVO vo = new ReviewVO();
		
		vo.setUsersEmail(request.getParameter("usersEmail"));
		vo.setRevContents(request.getParameter("revContents"));
		vo.setRevLike(Integer.parseInt(request.getParameter("revLike")));
		vo.setUsersAddr(request.getParameter("usersAddr"));
		vo.setUsersImage(request.getParameter("usersImage"));
		
		int n = reviewDao.insertReview(vo);
		String viewPage = null;
		if(n != 0) {
			request.setAttribute("message", "후기 등록을 성공하였습니다.");
			viewPage = "review/reviewError.jsp";
		}else {
			request.setAttribute("message", "후기 등록이 실패하였습니다.");
			viewPage = "review/reviewError.jsp";
		}
		return viewPage;
	}

}
