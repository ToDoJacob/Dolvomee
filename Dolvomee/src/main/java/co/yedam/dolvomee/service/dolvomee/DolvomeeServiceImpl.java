package co.yedam.dolvomee.service.dolvomee;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.dolvomee.comm.DataSource;

public class DolvomeeServiceImpl implements DolvomeeService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private DolvomeeMapper map = sqlSession.getMapper(DolvomeeMapper.class);
	
	@Override
	public List<DolvomeeVO> selectDolvomeeLsit() {
		
		return map.selectDolvomeeLsit();
	}

	@Override
	public DolvomeeVO selectDolvomee(DolvomeeVO vo) {
		
		return map.selectDolvomee(vo);
	}

	@Override
	public int insertDolvomee(DolvomeeVO vo) {
		
		return map.insertDolvomee(vo);
	}

	@Override
	public int updateDolvomee(DolvomeeVO vo) {
		
		return map.updateDolvomee(vo);
	}

	@Override
	public int deleteDolvomee(DolvomeeVO vo) {
		
		return map.deleteDolvomee(vo);
	}

	@Override
	public DolvomeeVO loginDolv(DolvomeeVO vo) {
		return map.loginDolv(vo);
	}

}
