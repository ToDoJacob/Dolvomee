package co.yedam.dolvomee.service.service;

import java.util.List;

public interface ServiceService {
	List<ServiceVO> selectServiceList();
	ServiceVO selectService(ServiceVO vo);
	int insertService(ServiceVO vo);
	int deleteService(ServiceVO vo);
	int updateService(ServiceVO vo);
}
