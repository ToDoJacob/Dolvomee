package co.yedam.dolvomee.service.schedulebuf;

import java.util.List;

public interface ScheduleBufService {

	List<ScheduleBufVO> selectScheduleBufList();
	int insertScheduleBuf(ScheduleBufVO vo);
	int deleteScheduleBuf(ScheduleBufVO vo);
	int updateScheduleBuf(ScheduleBufVO vo);
	
}
