package co.yedam.dolvomee.service.review;

public class ReviewListVO {
	private int revNum;
	private int servNum;
	private String usersEmail;
	private String revContents;
	private int revLike;
	private String usersAddr;
	
	public int getRevNum() {
		return revNum;
	}
	public void setRevNum(int revNum) {
		this.revNum = revNum;
	}
	public int getServNum() {
		return servNum;
	}
	public void setServNum(int servNum) {
		this.servNum = servNum;
	}
	public String getUsersEmail() {
		return usersEmail;
	}
	public void setUsersEmail(String usersEmail) {
		this.usersEmail = usersEmail;
	}
	public String getRevContents() {
		return revContents;
	}
	public void setRevContents(String revContents) {
		this.revContents = revContents;
	}
	public int getRevLike() {
		return revLike;
	}
	public void setRevLike(int revLike) {
		this.revLike = revLike;
	}
	public String getUsersAddr() {
		return usersAddr;
	}
	public void setUsersAddr(String usersAddr) {
		this.usersAddr = usersAddr;
	}
	
	
	
}
