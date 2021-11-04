package co.yedam.dolvomee.qna.sevice;

import java.util.Date;

public class QnaVO {
	private int q_num;
	private String users_email;
	private String dolv_email;
	private String q_contents;
	private Date q_time;
	public int getQ_num() {
		return q_num;
	}
	public void setQ_num(int q_num) {
		this.q_num = q_num;
	}
	public String getUsers_email() {
		return users_email;
	}
	public void setUsers_email(String users_email) {
		this.users_email = users_email;
	}
	public String getDolv_email() {
		return dolv_email;
	}
	public void setDolv_email(String dolv_email) {
		this.dolv_email = dolv_email;
	}
	public String getQ_contents() {
		return q_contents;
	}
	public void setQ_contents(String q_contents) {
		this.q_contents = q_contents;
	}
	public Date getQ_time() {
		return q_time;
	}
	public void setQ_time(Date q_time) {
		this.q_time = q_time;
	}
	
	
}
