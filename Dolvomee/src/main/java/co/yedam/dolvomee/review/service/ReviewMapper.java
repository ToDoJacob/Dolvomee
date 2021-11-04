package co.yedam.dolvomee.review.service;

import java.util.List;

import co.yedam.dolvomee.users.service.UsersVO;

public interface ReviewMapper {
	List<UsersVO> selectReviewList();
	UsersVO selectReview(ReviewVO vo);
	int insertReview(ReviewVO vo);
	int updateReview(ReviewVO vo);
	int deleteReview(ReviewVO vo);
}
