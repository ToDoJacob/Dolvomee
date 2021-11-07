package co.yedam.dolvomee.command.notice;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.notice.NoticeService;
import co.yedam.dolvomee.service.notice.NoticeServiceImpl;
import co.yedam.dolvomee.service.notice.NoticeVO;

public class NoticeInsert implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 게시글 저장
		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		vo.setNoticeId(request.getParameter("noticeId"));
		vo.setNoticeDate(Date.valueOf(request.getParameter("noticeDate")));
		vo.setNoticeTitle(request.getParameter("noticeTitle"));
		vo.setNoticeContents(request.getParameter("noticeContents"));
		
		int n = noticeDao.insertNotice(vo);
		String viewPage = null;
		if(n != 0) {
			viewPage = "noticeList.do";
		} else {
			request.setAttribute("message", "등록이 실패했습니다.");
			viewPage = "users/usersError";
		}
		return viewPage;
	}

}
