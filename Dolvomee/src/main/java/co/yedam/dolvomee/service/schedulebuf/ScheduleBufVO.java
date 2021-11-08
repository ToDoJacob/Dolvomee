package co.yedam.dolvomee.service.schedulebuf;

public class ScheduleBufVO {
	private int scheBufNum;
	private int scheduleNum;
	private String categCode;
	private String detailCode;
	private String multiCon;
	private String detailPrice;
	
	public int getScheBufNUm() {
		return scheBufNum;
	}
	public void setScheBufNUm(int scheBufNUm) {
		this.scheBufNum = scheBufNUm;
	}
	public int getScheduleNum() {
		return scheduleNum;
	}
	public void setScheduleNum(int scheduleNum) {
		this.scheduleNum = scheduleNum;
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
		return "SchedulebufVO [scheBufNUm=" + scheBufNum + ", scheduleNum=" + scheduleNum + ", categCode=" + categCode
				+ ", detailCode=" + detailCode + ", multiCon=" + multiCon + ", detailPrice=" + detailPrice + "]";
	}
	
	
	
}
