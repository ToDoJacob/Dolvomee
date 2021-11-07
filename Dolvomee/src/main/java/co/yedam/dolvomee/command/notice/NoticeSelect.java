package co.yedam.dolvomee.command.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.notice.NoticeService;
import co.yedam.dolvomee.service.notice.NoticeServiceImpl;
import co.yedam.dolvomee.service.notice.NoticeVO;

public class NoticeSelect implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 세부내역보기
		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		vo.setNoticeNum(Integer.valueOf(request.getParameter("noticeNum")));
		vo = noticeDao.selectNotice(vo);
		request.setAttribute("notice", vo);
		return "notice/noticeSelect";
	}

}
