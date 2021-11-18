package co.yedam.dolvomee.service.schedule;

import java.sql.Date;

public class ScheduleVO {
	private int scheduleNum;
	private String dolvEmail;
	private String usersEmail;	
	private String scheduleStartDate;
	private String scheduleEndDate;
	private String shceduleStatus;
	
	public int getScheduleNum() {
		return scheduleNum;
	}
	public void setScheduleNum(int scheduleNum) {
		this.scheduleNum = scheduleNum;
	}
	public String getDolvEmail() {
		return dolvEmail;
	}
	public void setDolvEmail(String dolvEmail) {
		this.dolvEmail = dolvEmail;
	}
	public String getUsersEmail() {
		return usersEmail;
	}
	public void setUsersEmail(String usersEmail) {
		this.usersEmail = usersEmail;
	}
	public String getScheduleStartDate() {
		return scheduleStartDate;
	}
	public void setScheduleStartSate(String scheduleStartDate) {
		this.scheduleStartDate = scheduleStartDate;
	}
	public String getScheduleEndDate() {
		return scheduleEndDate;
	}
	public void setScheduleEndDate(String scheduleEndDate) {
		this.scheduleEndDate = scheduleEndDate;
	}
	public String getShceduleStatus() {
		return shceduleStatus;
	}
	public void setShceduleStatus(String shceduleStatus) {
		this.shceduleStatus = shceduleStatus;
	}
	
	@Override
	public String toString() {
		return "ScheduleVO [scheduleNum=" + scheduleNum + ", dolvEmail=" + dolvEmail + ", usersEmail=" + usersEmail
				+ ", scheduleStartSate=" + scheduleStartDate + ", scheduleEndDate=" + scheduleEndDate
				+ ", shceduleStatus=" + shceduleStatus + "]";
	}
	
	
		
}
