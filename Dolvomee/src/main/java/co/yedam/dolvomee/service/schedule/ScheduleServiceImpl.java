package co.yedam.dolvomee.service.schedule;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.dolvomee.comm.DataSource;

public class ScheduleServiceImpl implements ScheduleService {

	private SqlSession sqlsession = DataSource.getInstance().openSession(true);
	private ScheduleMapper map = sqlsession.getMapper(ScheduleMapper.class);
	
	@Override
	public List<ScheduleVO> selectScheduleList() {
		// TODO Auto-generated method stub
		return map.selectScheduleList();
	}

	@Override
	public ScheduleVO selectSchedule(ScheduleVO vo) {
		// TODO Auto-generated method stub
		return map.selectSchedule(vo);
	}
	
	@Override
	public int insertSchedule(ScheduleVO vo) {
		// TODO Auto-generated method stub
		return map.insertSchedule(vo);
	}

	@Override
	public int deleteSchedule(ScheduleVO vo) {
		// TODO Auto-generated method stub
		return map.deleteSchedule(vo);
	}

	@Override
	public int updateSchedule(ScheduleVO vo) {
		// TODO Auto-generated method stub
		return map.updateSchedule(vo);
	}


}
