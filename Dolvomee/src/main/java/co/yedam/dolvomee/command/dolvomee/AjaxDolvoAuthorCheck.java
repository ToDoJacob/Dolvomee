package co.yedam.dolvomee.command.dolvomee;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.dolvomee.DolvomeeService;
import co.yedam.dolvomee.service.dolvomee.DolvomeeServiceImpl;
import co.yedam.dolvomee.service.dolvomee.DolvomeeVO;
import co.yedam.dolvomee.service.users.UsersService;
import co.yedam.dolvomee.service.users.UsersServiceImpl;
import co.yedam.dolvomee.service.users.UsersVO;

public class AjaxDolvoAuthorCheck implements Command {
	private int check = 0;
	
	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		DolvomeeService dolDao = new DolvomeeServiceImpl();
		DolvomeeVO vo = new DolvomeeVO();
		UsersService usersDao = new UsersServiceImpl();
		UsersVO uvo = new UsersVO();
		
		uvo.setUsersEmail(request.getParameter("usersEmail"));
		uvo = usersDao.selectUser(uvo);
		vo.setDolvEmail(request.getParameter("dolvEmail"));
		vo = dolDao.selectDolvomee(vo);
		if(uvo != null) {
			System.out.println(uvo);
			check = 1;
		} else if(vo != null) {
			if(vo.getDolvAuthor().equals("대기")) {
				System.out.println(vo.getDolvAuthor());
				check = 2;
			}else {
				check = 3;
			}
		}
		return "ajax:" + check;
	}

}
