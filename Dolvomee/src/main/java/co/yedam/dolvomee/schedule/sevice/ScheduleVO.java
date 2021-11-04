package co.yedam.dolvomee.schedule.sevice;

import java.sql.Date;

public class ScheduleVO {
	private int serv_num;
	private String users_email;
	private int schedule_num;
	private String serv_list;
	private Date schedule_start_date;
	private Date schedule_end_date;
	private String shcedule_status;
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
	public int getSchedule_num() {
		return schedule_num;
	}
	public void setSchedule_num(int schedule_num) {
		this.schedule_num = schedule_num;
	}
	public String getServ_list() {
		return serv_list;
	}
	public void setServ_list(String serv_list) {
		this.serv_list = serv_list;
	}
	public Date getSchedule_start_date() {
		return schedule_start_date;
	}
	public void setSchedule_start_date(Date schedule_start_date) {
		this.schedule_start_date = schedule_start_date;
	}
	public Date getSchedule_end_date() {
		return schedule_end_date;
	}
	public void setSchedule_end_date(Date schedule_end_date) {
		this.schedule_end_date = schedule_end_date;
	}
	public String getShcedule_status() {
		return shcedule_status;
	}
	public void setShcedule_status(String shcedule_status) {
		this.shcedule_status = shcedule_status;
	}
	
}
