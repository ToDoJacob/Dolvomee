package co.yedam.dolvomee.service.qna;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.dolvomee.comm.DataSource;

public class QnaServiceImpl implements QnaService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private QnaMapper map = sqlSession.getMapper(QnaMapper.class);

	@Override
	public List<QnaVO> selectQnaList(QnaVO vo) {
		// TODO Auto-generated method stub
		return map.selectQnaList(vo);
	}

	@Override
	public int insertQna(QnaVO vo) {
		// TODO Auto-generated method stub
		return map.insertQna(vo);
	}

	@Override
	public int deleteQna(QnaVO vo) {
		// TODO Auto-generated method stub
		return map.deleteQna(vo);
	}

}
