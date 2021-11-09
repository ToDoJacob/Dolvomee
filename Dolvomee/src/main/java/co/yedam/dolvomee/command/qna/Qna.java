package co.yedam.dolvomee.command.qna;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.qna.QnaService;
import co.yedam.dolvomee.service.qna.QnaServiceImpl;
import co.yedam.dolvomee.service.qna.QnaVO;

public class Qna implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		QnaService qnaDao = new QnaServiceImpl();
		List<QnaVO> list = new ArrayList<>();
		QnaVO vo = new QnaVO();
		
		vo.setDolvEmail(request.getParameter("dolvEmail"));
		vo.setUsersEmail((String)session.getAttribute("usersEmail"));
		
		list = qnaDao.selectQnaList(vo);
		
		
		String today = String.valueOf(LocalDate.now()).substring(2);
		
		for(int i=0; i<list.size(); i++) {
			String qnaDate = list.get(i).getQnaTime().substring(0,13);
			System.out.println("대화날짜" + qnaDate);
			
			if(qnaDate.equals(today)) {
				String qnaTime = list.get(i).getQnaTime().substring(13);
				System.out.println("대화작성시분" + qnaTime);
				list.get(i).setQnaTime(qnaTime);
//				continue;
			}else {
				list.get(i).setQnaTime(qnaDate);
//				continue;
			}
				
		}
		request.setAttribute("qnas", list);
		request.setAttribute("dolvEmail", request.getParameter("dolvEmail"));
		return "qna/qna";
	}
}