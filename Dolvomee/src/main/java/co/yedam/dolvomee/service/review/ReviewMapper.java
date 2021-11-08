package co.yedam.dolvomee.service.review;

import java.util.List;


public interface ReviewMapper {
	List<ReviewVO> selectReviewList();
	ReviewVO selectReview(ReviewVO vo);
	int insertReview(ReviewVO vo);
	int updateReview(ReviewVO vo);
	int deleteReview(ReviewVO vo);
}
