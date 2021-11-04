package co.yedam.dolvomee.cartlist.service;

import java.util.Date;

public class CartListVO {
	private int serv_num;
	private String users_email;
	private Date cart_start_date;
	private Date cart_end_date;
	private	String serv_list;
	private int cart_prive;
	private int cart_num;
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
	public Date getCart_start_date() {
		return cart_start_date;
	}
	public void setCart_start_date(Date cart_start_date) {
		this.cart_start_date = cart_start_date;
	}
	public Date getCart_end_date() {
		return cart_end_date;
	}
	public void setCart_end_date(Date cart_end_date) {
		this.cart_end_date = cart_end_date;
	}
	public String getServ_list() {
		return serv_list;
	}
	public void setServ_list(String serv_list) {
		this.serv_list = serv_list;
	}
	public int getCart_prive() {
		return cart_prive;
	}
	public void setCart_prive(int cart_prive) {
		this.cart_prive = cart_prive;
	}
	public int getCart_num() {
		return cart_num;
	}
	public void setCart_num(int cart_num) {
		this.cart_num = cart_num;
	}
	
}
