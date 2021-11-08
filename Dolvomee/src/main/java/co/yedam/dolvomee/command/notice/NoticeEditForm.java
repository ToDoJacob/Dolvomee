package co.yedam.dolvomee.command.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.notice.NoticeService;
import co.yedam.dolvomee.service.notice.NoticeServiceImpl;
import co.yedam.dolvomee.service.notice.NoticeVO;

public class NoticeEditForm implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 게시글 수정 폼 호출
		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		
		vo.setNoticeNum(Integer.valueOf(request.getParameter("noticeNum")));
		vo = noticeDao.selectNotice(vo);
		System.out.println("1"+vo);
		request.setAttribute("notice", vo);
		
		return "notice/noticeEditForm";
	}

}
