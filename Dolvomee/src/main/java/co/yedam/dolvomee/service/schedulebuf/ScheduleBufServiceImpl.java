package co.yedam.dolvomee.service.schedulebuf;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.dolvomee.comm.DataSource;

public class ScheduleBufServiceImpl implements ScheduleBufService {

	private SqlSession sqlsession = DataSource.getInstance().openSession(true);
	private ScheduleBufMapper map = sqlsession.getMapper(ScheduleBufMapper.class);
	
	
	@Override
	public List<ScheduleBufVO> selectScheduleBufList() {
		// TODO Auto-generated method stub
		return map.selectScheduleBufList();
	}

	@Override
	public ScheduleBufVO selectScheduleBuf(ScheduleBufVO vo) {
		// TODO Auto-generated method stub
		return map.selectScheduleBuf(vo);
	}

	@Override
	public int insertScheduleBuf(ScheduleBufVO vo) {
		// TODO Auto-generated method stub
		return map.insertScheduleBuf(vo);
	}

	@Override
	public int deleteScheduleBuf(ScheduleBufVO vo) {
		// TODO Auto-generated method stub
		return map.deleteScheduleBuf(vo);
	}

	@Override
	public int updateScheduleBuf(ScheduleBufVO vo) {
		// TODO Auto-generated method stub
		return map.updateScheduleBuf(vo);
	}

}
