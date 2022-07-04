package kr.or.ddit.dto;

import java.io.Serializable;

public class Product implements Serializable{
	//임의의 숫자. (Serialize와 함께 생략 가능)
	private static final long serialVersionUID = -4274700572038677000L;
	
	//멤버변수(필드)
	private String productId; //상품 아이디
	private String pName; //상품명
	private Integer unitPrice; //상품 가격
	private String description; //상품 설명
	private String manufacturer; //제조사
	private String category; //분류
	private long unitsInStock; //재고수
	private String condition; //신상품 or 중고품 or 재생품
	private String filename; //이미지 파일명
	
	//기본 생성자(생략가능)
	public Product() {}

	//생성자(상품 아이디, 상품명, 상품 가격 초기화)
	public Product(String productId, String pName, Integer unitPrice) {
		this.productId = productId;
		this.pName = pName;
		this.unitPrice = unitPrice;
	}

	//getter, setter
	
	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public Integer getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public long getUnitsInStock() {
		return unitsInStock;
	}

	public void setUnitsInStock(long unitsInStock) {
		this.unitsInStock = unitsInStock;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	@Override
	public String toString() {
		return "Product [productId=" + productId + ", pName=" + pName + ", unitPrice=" + unitPrice + ", description="
				+ description + ", manufacturer=" + manufacturer + ", category=" + category + ", unitsInStock="
				+ unitsInStock + ", condition=" + condition + ", filename=" + filename + "]";
	}
	
}
