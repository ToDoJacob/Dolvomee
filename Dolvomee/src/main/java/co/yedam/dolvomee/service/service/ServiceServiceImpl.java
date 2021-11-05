package co.yedam.dolvomee.service.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.dolvomee.comm.DataSource;

public class ServiceServiceImpl implements ServiceService {

	private SqlSession sqlsession = DataSource.getInstance().openSession(true);
	private ServiceMapper map = sqlsession.getMapper(ServiceMapper.class);
	
	@Override
	public List<ServiceVO> selectServiceList() {
		// TODO Auto-generated method stub
		return map.selectServiceList();
	}

	@Override
	public ServiceVO selectService(ServiceVO vo) {
		// TODO Auto-generated method stub
		return map.selectService(vo);
	}

	@Override
	public int insertService(ServiceVO vo) {
		// TODO Auto-generated method stub
		return map.insertService(vo);
	}

	@Override
	public int deleteService(ServiceVO vo) {
		// TODO Auto-generated method stub
		return map.deleteService(vo);
	}

	@Override
	public int updateService(ServiceVO vo) {
		// TODO Auto-generated method stub
		return map.updateService(vo);
	}

}
