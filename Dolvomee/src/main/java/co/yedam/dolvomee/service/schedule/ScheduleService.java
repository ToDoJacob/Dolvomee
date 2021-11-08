package co.yedam.dolvomee.service.schedule;

import java.util.List;

public interface ScheduleService {

	List<ScheduleVO> selectScheduleList();
	ScheduleVO selectSchedule(ScheduleVO vo);
	int insertSchedule(ScheduleVO vo);
	int deleteSchedule(ScheduleVO vo);
	int updateSchedule(ScheduleVO vo);
	
}
