package co.yedam.dolvomee.command.qna;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.qna.QnaService;
import co.yedam.dolvomee.service.qna.QnaServiceImpl;
import co.yedam.dolvomee.service.qna.QnaVO;
import co.yedam.dolvomee.service.review.ReviewVO;

public class QnaList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		QnaService qnaDao = new QnaServiceImpl();
		List<QnaVO> list = qnaDao.selectQnaList();
		
		String today = String.valueOf(LocalDate.now()).substring(2);
		LocalTime now = LocalTime.now();
		
		int currentHour = now.getHour();
		if(currentHour < 12) {
			 String.valueOf(currentHour); = "0" + currentHour;
		}
//		System.out.println("curruntHour" +currentHour);
		String currentMin = String.valueOf(now.getMinute());
		if(currentMin.length()<2) {
			currentMin = "0" + currentMin;
		}
//		System.out.println("curruntMin" +currentMin);
		String currentSec = String.valueOf(now.getSecond());
		if(currentSec.length()<2) {
			currentSec = "0" + currentSec;
		}
//		System.out.println("curruntSec" +currentSec);
		for(int i=0; i<list.size(); i++) {
			String reviewDate = list.get(i).getWriteDate().substring(0,8);
//			System.out.println("리뷰작성날짜" + reviewDate);
			
			if(reviewDate.equals(today)) {
				String reviewTime = list.get(i).getWriteDate().substring(9);
//				System.out.println("리뷰작성시분초" + reviewTime);
				
				String reviewHour = reviewTime.substring(0, 2);
//				System.out.println("리뷰작성시간" + reviewHour);
				if(!currentHour.equals(reviewHour)) {
					int hour = Integer.parseInt(currentHour)- Integer.parseInt(reviewHour);
					String hourNow = hour + "시간 전";
//					System.out.println("hourNow" + hourNow);
					list.get(i).setWriteDate(hourNow);
					continue;
				}
				
				String reviewMin = reviewTime.substring(3, 5);
//				System.out.println("리뷰작성분" + reviewMin);
				if(!currentMin.equals(reviewMin)) {
					int min = Integer.parseInt(currentMin)- Integer.parseInt(reviewMin);
					String minNow = min + "분 전";
//					System.out.println("minNow" + minNow);
					list.get(i).setWriteDate(minNow);
					continue;
				}
				
				String reviewSec = reviewTime.substring(6);
//				System.out.println("리뷰작성초" + reviewSec);
				if(!currentSec.equals(reviewSec)) {
					int sec = Integer.parseInt(currentSec)- Integer.parseInt(reviewSec);
					String secNow = sec + "초 전";
//					System.out.println("secNow" + secNow);
					list.get(i).setWriteDate(secNow);
					
				}
				
			}else {
				list.get(i).setWriteDate(reviewDate);
			}
		}
		request.setAttribute("reviews", reviewDao.selectReviewList());
		return "qna/qnaList";
	}
}