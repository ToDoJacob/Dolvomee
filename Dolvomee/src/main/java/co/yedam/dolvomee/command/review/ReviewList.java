package co.yedam.dolvomee.command.review;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.review.ReviewService;
import co.yedam.dolvomee.service.review.ReviewServiceImpl;
import co.yedam.dolvomee.service.review.ReviewVO;

public class ReviewList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		ReviewService reviewDao = new ReviewServiceImpl();
		List<ReviewVO> list = reviewDao.selectReviewList();
		
		String today = String.valueOf(LocalDate.now()).substring(2);
		LocalTime now = LocalTime.now();
		
		String currentHour = String.valueOf(now.getHour());
		if(currentHour.length()<2) {
			currentHour = "0" + currentHour;
		}
		String currentMin = String.valueOf(now.getMinute());
		if(currentMin.length()<2) {
			currentMin = "0" + currentMin;
		}
		String currentSec = String.valueOf(now.getSecond());
		if(currentSec.length()<2) {
			currentSec = "0" + currentSec;
		}
		
		for(int i=0; i<list.size(); i++) {
			String reviewDate = list.get(i).getWriteDate().substring(0,8);
			System.out.println("리뷰작성날짜" + reviewDate);
			
			if(reviewDate.equals(today)) {
				String reviewTime = list.get(i).getWriteDate().substring(9);
				System.out.println("리뷰작성시분초" + reviewTime);
				
				String reviewHour = reviewTime.substring(0, 2);
				System.out.println("리뷰작성시간" + reviewHour);
				if(!currentHour.equals(reviewHour)) {
					int hour = Integer.parseInt(currentHour)- Integer.parseInt(reviewHour);
					String hourNow = hour + "시간 전";
					list.get(i).setWriteDate(hourNow);
					continue;
				}
				String reviewMin = reviewTime.substring(3, 5);
				System.out.println("리뷰작성분" + reviewMin);
				if(!currentMin.equals(reviewMin)) {
					int min = Integer.parseInt(currentMin)- Integer.parseInt(reviewMin);
					String minNow = min + "분 전";
					list.get(i).setWriteDate(minNow);
					continue;
				}
				String reviewSec = reviewTime.substring(6);
				System.out.println("리뷰작성초" + reviewSec);
				if(!currentSec.equals(reviewSec)) {
					int sec = Integer.parseInt(currentSec)- Integer.parseInt(reviewSec);
					String secNow = sec + "초 전";
					list.get(i).setWriteDate(secNow);
					continue;
				}
				
			}else {
				list.get(i).setWriteDate(reviewDate);
			}
		}
		request.setAttribute("reviews", reviewDao.selectReviewList());
		
		return "review/reviewList";
	}
}
