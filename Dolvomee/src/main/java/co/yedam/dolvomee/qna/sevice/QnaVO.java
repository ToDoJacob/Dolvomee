package co.yedam.dolvomee.qna.sevice;

import java.util.Date;

public class QnaVO {
	private int qNum;
	private String usersEmail;
	private String dolvEmail;
	private String qContents;
	private Date qTime;
	public int getqNum() {
		return qNum;
	}
	public void setqNum(int qNum) {
		this.qNum = qNum;
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
	public String getqContents() {
		return qContents;
	}
	public void setqContents(String qContents) {
		this.qContents = qContents;
	}
	public Date getqTime() {
		return qTime;
	}
	public void setqTime(Date qTime) {
		this.qTime = qTime;
	}
	
	
	
}
