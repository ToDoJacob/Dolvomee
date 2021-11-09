package co.yedam.dolvomee.service.qna;

import java.util.List;

public interface QnaMapper {
	List<QnaVO> selectQnaList(QnaVO vo);
	int insertQna(QnaVO vo);
	int deleteQna(QnaVO vo);
}
