package co.yedam.dolvomee.service.schedule;

import java.sql.Date;

public class ScheduleVO {
	private int scheduleNum;
	private String dolvEmail;
	private String usersEmail;	
	private Date scheduleStartSate;
	private Date scheduleEndDate;
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
	
	@Override
	public String toString() {
		return "ScheduleVO [scheduleNum=" + scheduleNum + ", dolvEmail=" + dolvEmail + ", usersEmail=" + usersEmail
				+ ", scheduleStartSate=" + scheduleStartSate + ", scheduleEndDate=" + scheduleEndDate
				+ ", shceduleStatus=" + shceduleStatus + "]";
	}
	
	
		
}
