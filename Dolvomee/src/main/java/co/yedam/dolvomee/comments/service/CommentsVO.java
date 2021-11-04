package co.yedam.dolvomee.comments.service;

import java.util.Date;

public class CommentsVO {
	private int revNum;
	private String usersName;
	private int commentsNum;
	private String commentsContents;
	private Date commentsDate;
	public int getRevNum() {
		return revNum;
	}
	public void setRevNum(int revNum) {
		this.revNum = revNum;
	}
	public String getUsersName() {
		return usersName;
	}
	public void setUsersName(String usersName) {
		this.usersName = usersName;
	}
	public int getCommentsNum() {
		return commentsNum;
	}
	public void setCommentsNum(int commentsNum) {
		this.commentsNum = commentsNum;
	}
	public String getCommentsContents() {
		return commentsContents;
	}
	public void setCommentsContents(String commentsContents) {
		this.commentsContents = commentsContents;
	}
	public Date getCommentsDate() {
		return commentsDate;
	}
	public void setCommentsDate(Date commentsDate) {
		this.commentsDate = commentsDate;
	}
	
	
	
}
