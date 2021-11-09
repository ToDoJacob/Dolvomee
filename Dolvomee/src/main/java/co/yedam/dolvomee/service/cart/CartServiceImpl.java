package co.yedam.dolvomee.service.cart;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.dolvomee.comm.DataSource;

public class CartServiceImpl implements CartService {
	
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private CartMapper map = sqlSession.getMapper(CartMapper.class);
	
	@Override
	public List<CartVO> selectCartList() {
	
		return map.selectCartList();
	}

	@Override
	public List<CartVO> selectCart(CartVO vo) {
		
		return map.selectCart(vo);
	}
	
	@Override
	public List<CartVO> selectCart2(CartVO vo) {
		
		return map.selectCart2(vo);
	}

	@Override
	public int insertCart(CartVO vo) {
		
		return map.insertCart(vo);
	}

	@Override
	public int deleteCart(CartVO vo) {
		
		return map.deleteCart(vo);
	}

	@Override
	public int updateCart(CartVO vo) {
		
		return map.updateCart(vo);
	}

	@Override
	public CartVO selectCart3(CartVO vo) {
		
		return map.selectCart3(vo);
	}


}
