package co.yedam.dolvomee.comments.sevice;

import java.util.Date;

public class CommentsVO {
	private int rev_num;
	private String users_name;
	private int comments_num;
	private String comments_contents;
	private Date comments_date;
	public int getRev_num() {
		return rev_num;
	}
	public void setRev_num(int rev_num) {
		this.rev_num = rev_num;
	}
	public String getUsers_name() {
		return users_name;
	}
	public void setUsers_name(String users_name) {
		this.users_name = users_name;
	}
	public int getComments_num() {
		return comments_num;
	}
	public void setComments_num(int comments_num) {
		this.comments_num = comments_num;
	}
	public String getComments_contents() {
		return comments_contents;
	}
	public void setComments_contents(String comments_contents) {
		this.comments_contents = comments_contents;
	}
	public Date getComments_date() {
		return comments_date;
	}
	public void setComments_date(Date comments_date) {
		this.comments_date = comments_date;
	}
	
	
}
