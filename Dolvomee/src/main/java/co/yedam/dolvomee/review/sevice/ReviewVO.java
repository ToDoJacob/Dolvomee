package co.yedam.dolvomee.review.sevice;

public class ReviewVO {
	private int rev_num;
	private int serv_num;
	private String users_email;
	private String rev_contents;
	private int rev_like;
	
	public int getRev_num() {
		return rev_num;
	}
	public void setRev_num(int rev_num) {
		this.rev_num = rev_num;
	}
	public int getServ_num() {
		return serv_num;
	}
	public void setServ_num(int serv_num) {
		this.serv_num = serv_num;
	}
	public String getUsers_email() {
		return users_email;
	}
	public void setUsers_email(String users_email) {
		this.users_email = users_email;
	}
	public String getRev_contents() {
		return rev_contents;
	}
	public void setRev_contents(String rev_contents) {
		this.rev_contents = rev_contents;
	}
	public int getRev_like() {
		return rev_like;
	}
	public void setRev_like(int rev_like) {
		this.rev_like = rev_like;
	}
	
	
	
}
