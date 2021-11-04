package co.yedam.dolvomee.notice.sevice;

import java.util.Date;

public class NoticeVO {
	private int notice_num;
	private String notice_id;
	private String notice_contents;
	private Date notuice_date;
	public int getNotice_num() {
		return notice_num;
	}
	public void setNotice_num(int notice_num) {
		this.notice_num = notice_num;
	}
	public String getNotice_id() {
		return notice_id;
	}
	public void setNotice_id(String notice_id) {
		this.notice_id = notice_id;
	}
	public String getNotice_contents() {
		return notice_contents;
	}
	public void setNotice_contents(String notice_contents) {
		this.notice_contents = notice_contents;
	}
	public Date getNotuice_date() {
		return notuice_date;
	}
	public void setNotuice_date(Date notuice_date) {
		this.notuice_date = notuice_date;
	}
	
}
