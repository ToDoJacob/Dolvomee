package co.yedam.dolvomee.service.categori;

import java.util.List;

public interface CategoriService {
	
	List<CategoriVO> selectCategoriList();
	CategoriVO selectCategori(CategoriVO vo);
	int insertCategori(CategoriVO vo);
	int deleteCategori(CategoriVO vo);
	int updateCategori(CategoriVO vo);

}
