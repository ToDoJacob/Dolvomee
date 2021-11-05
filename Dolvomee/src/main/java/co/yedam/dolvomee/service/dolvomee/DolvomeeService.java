package co.yedam.dolvomee.service.dolvomee;

import java.util.List;

public interface DolvomeeService {
	List<DolvomeeVO> selectDolvomeeLsit();
	DolvomeeVO selectDolvomee(DolvomeeVO vo);
	int insertDolvomee(DolvomeeVO vo);
	int updateDolvomee(DolvomeeVO vo);
	int deleteDolvomee(DolvomeeVO vo);
}
