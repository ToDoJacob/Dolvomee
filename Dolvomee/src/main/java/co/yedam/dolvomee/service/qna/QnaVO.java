package co.yedam.dolvomee.service.qna;

import java.util.Date;

public class QnaVO {
	private int qnaNum;
	private String usersEmail;
	private String dolvEmail;
	private String qnaContents;
	private Date qnaTime;
	public int getqnaNum() {
		return qnaNum;
	}
	public void setqnaNum(int qNum) {
		this.qnaNum = qNum;
	}
	public String getUsersEmail() {
		return usersEmail;
	}
	public void setUsersEmail(String usersEmail) {
		this.usersEmail = usersEmail;
	}
	public String getDolvEmail() {
		return dolvEmail;
	}
	public void setDolvEmail(String dolvEmail) {
		this.dolvEmail = dolvEmail;
	}
	public String getqnaContents() {
		return qnaContents;
	}
	public void setqnaContents(String qContents) {
		this.qnaContents = qContents;
	}
	public Date getqnaTime() {
		return qnaTime;
	}
	public void setqnaTime(Date qTime) {
		this.qnaTime = qTime;
	}
	
	
	
}
