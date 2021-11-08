package co.yedam.dolvomee.service.categori;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.dolvomee.comm.DataSource;

public class CategoriServiceImpl implements CategoriService {

	
	private SqlSession sqlsession = DataSource.getInstance().openSession(true);
	private CategoriMapper map = sqlsession.getMapper(CategoriMapper.class);
	
	@Override
	public List<CategoriVO> selectCategoriList() {
		// TODO Auto-generated method stub
		return map.selectCategoriList();
	}

	@Override
	public CategoriVO selectCategori(CategoriVO vo) {
		// TODO Auto-generated method stub
		return map.selectCategori(vo);
	}

	@Override
	public int insertCategori(CategoriVO vo) {
		// TODO Auto-generated method stub
		return map.insertCategori(vo);
	}

	@Override
	public int deleteCategori(CategoriVO vo) {
		// TODO Auto-generated method stub
		return map.deleteCategori(vo);
	}

	@Override
	public int updateCategori(CategoriVO vo) {
		// TODO Auto-generated method stub
		return map.updateCategori(vo);
	}

}
