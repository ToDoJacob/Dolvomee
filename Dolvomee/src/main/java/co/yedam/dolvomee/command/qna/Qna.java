package co.yedam.dolvomee.command.qna;

import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.qna.QnaService;
import co.yedam.dolvomee.service.qna.QnaServiceImpl;
import co.yedam.dolvomee.service.qna.QnaVO;

public class Qna implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		QnaService qnaDao = new QnaServiceImpl();
		List<QnaVO> list = qnaDao.selectQnaList();
		
		String today = String.valueOf(LocalDate.now()).substring(2);
		
		for(int i=0; i<list.size(); i++) {
			String qnaDate = list.get(i).getqnaTime().substring(0,13);
			System.out.println("대화날짜" + qnaDate);
			
			if(qnaDate.equals(today)) {
				String qnaTime = list.get(i).getqnaTime().substring(13);
				System.out.println("대화작성시분" + qnaTime);
				list.get(i).setqnaTime(qnaTime);
//				continue;
			}else {
				list.get(i).setqnaTime(qnaDate);
//				continue;
			}
				
		}			
		request.setAttribute("qnas", qnaDao.selectQnaList());
		return "qna/qnaList";
	}
}