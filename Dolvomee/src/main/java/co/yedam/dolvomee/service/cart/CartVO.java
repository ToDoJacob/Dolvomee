package co.yedam.dolvomee.service.cart;

import java.sql.Date;

public class CartVO {
	private int scheduleNum;
	private String dolvEmail;
	private String usersEmail;	
	private Date scheduleStartdate;
	private Date scheduleEndDate;
	private String scheduleStatus; 
	private int scheBufNum;
	private String categCode;
	private String detailCode;
	private String multiCon;
	private String detailPrice;
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
	public Date getScheduleStartdate() {
		return scheduleStartdate;
	}
	public void setScheduleStartdate(Date scheduleStartdate) {
		this.scheduleStartdate = scheduleStartdate;
	}
	public Date getScheduleEndDate() {
		return scheduleEndDate;
	}
	public void setScheduleEndDate(Date scheduleEndDate) {
		this.scheduleEndDate = scheduleEndDate;
	}
	public String getScheduleStatus() {
		return scheduleStatus;
	}
	public void setScheduleStatus(String scheduleStatus) {
		this.scheduleStatus = scheduleStatus;
	}
	public int getScheBufNum() {
		return scheBufNum;
	}
	public void setScheBufNum(int scheBufNum) {
		this.scheBufNum = scheBufNum;
	}
	public String getCategCode() {
		return categCode;
	}
	public void setCategCode(String categCode) {
		this.categCode = categCode;
	}
	public String getDetailCode() {
		return detailCode;
	}
	public void setDetailCode(String detailCode) {
		this.detailCode = detailCode;
	}
	public String getMultiCon() {
		return multiCon;
	}
	public void setMultiCon(String multiCon) {
		this.multiCon = multiCon;
	}
	public String getDetailPrice() {
		return detailPrice;
	}
	public void setDetailPrice(String detailPrice) {
		this.detailPrice = detailPrice;
	}
	@Override
	public String toString() {
		return "CartVO [scheduleNum=" + scheduleNum + ", dolvEmail=" + dolvEmail + ", usersEmail=" + usersEmail
				+ ", scheduleStartdate=" + scheduleStartdate + ", scheduleEndDate=" + scheduleEndDate
				+ ", scheduleStatus=" + scheduleStatus + ", scheBufNum=" + scheBufNum + ", categCode=" + categCode
				+ ", detailCode=" + detailCode + ", multiCon=" + multiCon + ", detailPrice=" + detailPrice + "]";
	}

	
}
