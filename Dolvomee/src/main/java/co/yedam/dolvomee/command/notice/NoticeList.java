package co.yedam.dolvomee.command.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.notice.NoticeService;
import co.yedam.dolvomee.service.notice.NoticeServiceImpl;

public class NoticeList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 게시글 목록
		NoticeService noticeDao = new NoticeServiceImpl();
		request.setAttribute("notices", noticeDao.selectNoticeList());
		return "notice/noticeList";
	}

}
