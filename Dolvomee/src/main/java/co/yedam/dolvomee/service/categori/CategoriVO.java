package co.yedam.dolvomee.service.categori;

public class CategoriVO {
	private int categNum;
	private String categCode;
	private String categori;
	private String detailCode;
	private String detailCateg;
	private String detailPrice;
	
	public int getCategNum() {
		return categNum;
	}
	public void setCategNum(int categNum) {
		this.categNum = categNum;
	}
	public String getCategCode() {
		return categCode;
	}
	public void setCategCode(String categCode) {
		this.categCode = categCode;
	}
	public String getCategori() {
		return categori;
	}
	public void setCategori(String categori) {
		this.categori = categori;
	}
	public String getDetailCode() {
		return detailCode;
	}
	public void setDetailCode(String detailCode) {
		this.detailCode = detailCode;
	}
	public String getDetailCateg() {
		return detailCateg;
	}
	public void setDetailCateg(String detailCateg) {
		this.detailCateg = detailCateg;
	}
	public String getDetailPrice() {
		return detailPrice;
	}
	public void setDetailPrice(String detailPrice) {
		this.detailPrice = detailPrice;
	}
	
	@Override
	public String toString() {
		return "CategoriVO [categNum=" + categNum + ", categCode=" + categCode + ", categori=" + categori
				+ ", detailCode=" + detailCode + ", detailCateg=" + detailCateg + ", detailPrice=" + detailPrice + "]";
	}
	
	
	
	
}
