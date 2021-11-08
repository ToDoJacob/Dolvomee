package co.yedam.dolvomee.service.schedulebuf;

import java.util.List;

public interface ScheduleBufService {

	List<ScheduleBufVO> selectScheduleBufList();
	ScheduleBufVO selectScheduleBuf(ScheduleBufVO vo);
	int insertScheduleBuf(ScheduleBufVO vo);
	int deleteScheduleBuf(ScheduleBufVO vo);
	int updateScheduleBuf(ScheduleBufVO vo);
	
}
