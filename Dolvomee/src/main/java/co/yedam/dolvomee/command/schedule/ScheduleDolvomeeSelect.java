package co.yedam.dolvomee.command.schedule;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.dolvomee.DolvomeeService;
import co.yedam.dolvomee.service.dolvomee.DolvomeeServiceImpl;
import co.yedam.dolvomee.service.dolvomee.DolvomeeVO;

public class ScheduleDolvomeeSelect implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 하단에서 돌보미를 선택해서 상단 카드에 돌보미의 정보를 출력해주는 용도
		DolvomeeService dolvomeeDao = new DolvomeeServiceImpl();
		DolvomeeVO vo = new DolvomeeVO();
		
		vo.setDolvName(request.getParameter("dolvName"));
		
		vo = dolvomeeDao.selectDolvomeeName(vo);
		
		vo.toString();
		
		return "ajax:";
	}

}
