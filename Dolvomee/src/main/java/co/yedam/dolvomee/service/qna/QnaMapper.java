package co.yedam.dolvomee.service.qna;

import java.util.List;

public interface QnaMapper {
	List<QnaVO> selectQnaList();
	int insertQna(QnaVO vo);
	int deleteQna(QnaVO vo);
}
