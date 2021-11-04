package co.yedam.dolvomee.cartlist.service;

import java.util.Date;

public class CartListVO {
	private int servNum;
	private String usersEmail;
	private Date cartStartDate;
	private Date cartEndDate;
	private	String servList;
	private int cartPrive;
	private int cartNum;
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
	public Date getCartStartDate() {
		return cartStartDate;
	}
	public void setCartStartDate(Date cartStartDate) {
		this.cartStartDate = cartStartDate;
	}
	public Date getCartEndDate() {
		return cartEndDate;
	}
	public void setCartEndDate(Date cartEndDate) {
		this.cartEndDate = cartEndDate;
	}
	public String getServList() {
		return servList;
	}
	public void setServList(String servList) {
		this.servList = servList;
	}
	public int getCartPrive() {
		return cartPrive;
	}
	public void setCartPrive(int cartPrive) {
		this.cartPrive = cartPrive;
	}
	public int getCartNum() {
		return cartNum;
	}
	public void setCartNum(int cartNum) {
		this.cartNum = cartNum;
	}
	
	
}
