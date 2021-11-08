package co.yedam.dolvomee.service.notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.dolvomee.comm.DataSource;

public class NoticeServiceImpl implements NoticeService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private NoticeMapper map = sqlSession.getMapper(NoticeMapper.class);
	
	@Override
	public List<NoticeVO> selectNoticeList() {
		return map.selectNoticeList();
	}

	@Override
	public NoticeVO selectNotice(NoticeVO vo) {
		return map.selectNotice(vo);
	}

	@Override
	public int insertNotice(NoticeVO vo) {
		return map.insertNotice(vo);
	}

	@Override
	public int updatetNotice(NoticeVO vo) {
		return map.updatetNotice(vo);
	}

	@Override
	public int deleteNotice(NoticeVO vo) {
		return map.deleteNotice(vo);
	}

	@Override
	public int hitUpdate(NoticeVO vo) {
		return map.hitUpdate(vo);	
	}

}
