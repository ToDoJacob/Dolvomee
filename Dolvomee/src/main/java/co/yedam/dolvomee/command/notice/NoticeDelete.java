package co.yedam.dolvomee.command.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.notice.NoticeService;
import co.yedam.dolvomee.service.notice.NoticeServiceImpl;
import co.yedam.dolvomee.service.notice.NoticeVO;

public class NoticeDelete implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 게시글 삭제
		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		vo.setNoticeNum(Integer.valueOf(request.getParameter("noticeNum")));
		
		int n = noticeDao.deleteNotice(vo);
		String viewPage = null;
		if(n != 0) {
			viewPage = "noticeList.do";
		} else {
			request.setAttribute("message", "삭제 실패입니다.");
			viewPage = "users/usersError";
		}
		return viewPage;
	}

}
