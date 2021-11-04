package co.yedam.dolvomee.review.sevice;

import java.util.List;

import co.yedam.dolvomee.users.service.UsersVO;

public interface ReviewService {
	List<UsersVO> selectReviewList();
	UsersVO selectReview(ReviewVO vo);
	int insertReview(ReviewVO vo);
	int updateReview(ReviewVO vo);
	int deleteReview(ReviewVO vo);
}
