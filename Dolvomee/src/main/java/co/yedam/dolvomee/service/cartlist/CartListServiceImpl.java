package co.yedam.dolvomee.service.cartlist;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.dolvomee.comm.DataSource;

public class CartListServiceImpl implements CartListService {

	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private CartListMapper map = sqlSession.getMapper(CartListMapper.class);
	
	@Override
	public List<CartListVO> selectCartList() {
		
		return map.selectCartList();
	}

	@Override
	public CartListVO selectCart(CartListVO vo) {
		
		return map.selectCart(vo);
	}

	@Override
	public int insertCart(CartListVO vo) {
		
		return map.insertCart(vo);
	}

	@Override
	public int updateCart(CartListVO vo) {
		
		return map.updateCart(vo);
	}

	@Override
	public int deleteCart(CartListVO vo) {
		
		return map.deleteCart(vo);
	}

}
