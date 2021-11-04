package co.yedam.dolvomee.users.service;

public class UsersVO {

	private String users_email;
	private String users_name;
	private String users_pwd;
	private String users_phone;
	private String users_addr;
	private String users_author;
	
	public String getUsers_email() {
		return users_email;
	}
	public void setUsers_email(String users_email) {
		this.users_email = users_email;
	}
	public String getUsers_name() {
		return users_name;
	}
	public void setUsers_name(String users_name) {
		this.users_name = users_name;
	}
	public String getUsers_pwd() {
		return users_pwd;
	}
	public void setUsers_pwd(String users_pwd) {
		this.users_pwd = users_pwd;
	}
	public String getUsers_phone() {
		return users_phone;
	}
	public void setUsers_phone(String users_phone) {
		this.users_phone = users_phone;
	}
	public String getUsers_addr() {
		return users_addr;
	}
	public void setUsers_addr(String users_addr) {
		this.users_addr = users_addr;
	}
	public String getUsers_author() {
		return users_author;
	}
	public void setUsers_author(String users_author) {
		this.users_author = users_author;
	}
	
	@Override
	public String toString() {
		return "UsersVO [users_email=" + users_email + ", users_name=" + users_name + ", users_pwd=" + users_pwd
				+ ", users_phone=" + users_phone + ", users_addr=" + users_addr + ", users_author=" + users_author
				+ "]";
	}
	
	
	
}
