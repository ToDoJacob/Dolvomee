package co.yedam.dolvomee.service.review;

import java.util.List;

import co.yedam.dolvomee.service.users.UsersVO;

public interface ReviewMapper {
	List<ReviewVO> selectReviewList();
	ReviewVO selectReview(ReviewVO vo);
	int insertReview(ReviewVO vo);
	int updateReview(ReviewVO vo);
	int deleteReview(ReviewVO vo);
}
