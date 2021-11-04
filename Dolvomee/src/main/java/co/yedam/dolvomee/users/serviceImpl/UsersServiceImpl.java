package co.yedam.dolvomee.users.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.dolvomee.comm.DataSource;
import co.yedam.dolvomee.users.service.UsersMapper;
import co.yedam.dolvomee.users.service.UsersService;
import co.yedam.dolvomee.users.service.UsersVO;

public class UsersServiceImpl implements UsersService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private UsersMapper map = sqlSession.getMapper(UsersMapper.class);

	@Override
	public List<UsersVO> selectUserList() {
		return map.selectUserList();
	}

	@Override
	public UsersVO selectUser(UsersVO vo) {
		return map.selectUser(vo);
	}

	@Override
	public int insertUser(UsersVO vo) {
		return map.insertUser(vo);
	}

	@Override
	public int updateUser(UsersVO vo) {
		return map.updateUser(vo);
	}

	@Override
	public int deleteUser(UsersVO vo) {
		return map.deleteUser(vo);
	}

}
