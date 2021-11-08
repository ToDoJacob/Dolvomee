package co.yedam.dolvomee.service.review;

import java.util.List;

import co.yedam.dolvomee.service.users.UsersVO;


public interface ReviewService {
	List<ReviewVO> selectReviewList();
	ReviewVO selectReview(ReviewVO vo);
	UsersVO selectImage(String session);
	int insertReview(ReviewVO vo);
	int updateReview(ReviewVO vo);
	int deleteReview(ReviewVO vo);
}
