package co.yedam.dolvomee.schedule.sevice;

import java.sql.Date;

public class ScheduleVO {
	private int servNum;
	private String usersEmail;
	private int scheduleNum;
	private String servList;
	private Date scheduleStartSate;
	private Date scheduleEndDate;
	private String shceduleStatus;
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
	public int getScheduleNum() {
		return scheduleNum;
	}
	public void setScheduleNum(int scheduleNum) {
		this.scheduleNum = scheduleNum;
	}
	public String getServList() {
		return servList;
	}
	public void setServList(String servList) {
		this.servList = servList;
	}
	public Date getScheduleStartSate() {
		return scheduleStartSate;
	}
	public void setScheduleStartSate(Date scheduleStartSate) {
		this.scheduleStartSate = scheduleStartSate;
	}
	public Date getScheduleEndDate() {
		return scheduleEndDate;
	}
	public void setScheduleEndDate(Date scheduleEndDate) {
		this.scheduleEndDate = scheduleEndDate;
	}
	public String getShceduleStatus() {
		return shceduleStatus;
	}
	public void setShceduleStatus(String shceduleStatus) {
		this.shceduleStatus = shceduleStatus;
	}
	
}
