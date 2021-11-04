package co.yedam.dolvomee.notice.service;

import java.util.Date;

public class NoticeVO {
	private int noticeNum;
	private String noticeId;
	private String noticeContents;
	private Date notuiceDate;
	public int getNoticeNum() {
		return noticeNum;
	}
	public void setNoticeNum(int noticeNum) {
		this.noticeNum = noticeNum;
	}
	public String getNoticeId() {
		return noticeId;
	}
	public void setNoticeId(String noticeId) {
		this.noticeId = noticeId;
	}
	public String getNoticeContents() {
		return noticeContents;
	}
	public void setNoticeContents(String noticeContents) {
		this.noticeContents = noticeContents;
	}
	public Date getNotuiceDate() {
		return notuiceDate;
	}
	public void setNotuiceDate(Date notuiceDate) {
		this.notuiceDate = notuiceDate;
	}
	
}
