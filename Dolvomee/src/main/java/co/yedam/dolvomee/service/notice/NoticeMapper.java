package co.yedam.dolvomee.service.notice;

import java.util.List;

public interface NoticeMapper {
	List<NoticeVO> selectNoticeList();
	NoticeVO selectNotice(NoticeVO vo);
	int insertNotice(NoticeVO vo);
	int updatetNotice(NoticeVO vo);
	int deleteNotice(NoticeVO vo);
	int hitUpdate(NoticeVO vo);
}
