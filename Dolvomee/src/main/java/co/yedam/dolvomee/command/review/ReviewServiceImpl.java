package co.yedam.dolvomee.command.review;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.dolvomee.comm.DataSource;
import co.yedam.dolvomee.service.review.ReviewMapper;
import co.yedam.dolvomee.service.review.ReviewService;
import co.yedam.dolvomee.service.review.ReviewVO;
import co.yedam.dolvomee.service.users.UsersVO;

public class ReviewServiceImpl implements ReviewService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ReviewMapper map = sqlSession.getMapper(ReviewMapper.class);
	
	@Override
	public List<UsersVO> selectReviewList() {
		// TODO Auto-generated method stub
		return map.selectReviewList();
	}

	@Override
	public UsersVO selectReview(ReviewVO vo) {
		// TODO Auto-generated method stub
		return map.selectReview(vo);
	}

	@Override
	public int insertReview(ReviewVO vo) {
		// TODO Auto-generated method stub
		return map.insertReview(vo);
	}

	@Override
	public int updateReview(ReviewVO vo) {
		// TODO Auto-generated method stub
		return map.updateReview(vo);
	}

	@Override
	public int deleteReview(ReviewVO vo) {
		// TODO Auto-generated method stub
		return map.deleteReview(vo);
	}

}
