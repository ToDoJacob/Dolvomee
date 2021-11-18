package co.yedam.dolvomee.service.schedulebuf;

import java.util.List;

public interface ScheduleBufMapper {

	List<ScheduleBufVO> selectScheduleBufList();
	int insertScheduleBuf(ScheduleBufVO vo);
	int deleteScheduleBuf(ScheduleBufVO vo);
	int updateScheduleBuf(ScheduleBufVO vo);
	
}
