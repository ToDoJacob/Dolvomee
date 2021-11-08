package co.yedam.dolvomee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.notice.NoticeService;
import co.yedam.dolvomee.service.notice.NoticeServiceImpl;
import co.yedam.dolvomee.service.notice.NoticeVO;

public class NoticeEdit implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 게시글 수정
		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		vo.setNoticeTitle(request.getParameter("noticeTitle"));
		vo.setNoticeContents(request.getParameter("noticeContents"));
		vo.setNoticeNum(Integer.valueOf(request.getParameter("noticeNum")));
		
		System.out.println("2"+vo);
		int n = noticeDao.updatetNotice(vo);
		System.out.println(n);
		String viewPage = null;
		if (n != 0) {
			viewPage = "noticeList.do";
		} else {
			request.setAttribute("message", "수정 실패입니다.");
			viewPage = "users/usersError";
		}
		return viewPage;
	}

}
