package co.yedam.dolvomee.service.review;

import java.util.List;

import co.yedam.dolvomee.service.users.UsersVO;

public interface ReviewMapper {
	List<UsersVO> selectReviewList();
	UsersVO selectReview(ReviewVO vo);
	int insertReview(ReviewVO vo);
	int updateReview(ReviewVO vo);
	int deleteReview(ReviewVO vo);
}
