package kr.or.ddit.dao;

import java.util.ArrayList;
import java.util.List;

import kr.or.ddit.dto.Product;

public class ProductRepository {
	
	//상품 목록 저장할 리스트 작성
	private List<Product> listOfProducts = new ArrayList<Product>();
	
	/*
		기본 생성자
		3개의 상품 정보 설정 후 Product 객체만 담는 List인 listOfProducts 변수에 저장
	*/

	public ProductRepository() {
		
		//생성자(상품 아이디, 상품명, 상품 가격 초기화)
		Product phone = new Product("P1234", "iPhone 6s", 800000);
		
		//상품 설명
		phone.setDescription("4.7-inch, 1334x750 Renina HD display. 8-megapixel iSight Camera");
		
		//분류
		phone.setCategory("Smart Phone");
		
		//제조사
		phone.setManufacturer("Apple");
		
		//재고 수
		phone.setUnitsInStock(3);
		
		//신상품 or 중고품 or 재생품
		phone.setCondition("New");
		
		/////////////////////////////////////////휴대폰 등록 끝////////////////////////////////////////////
		
		
		
		
		/////////////////////////////////////////노트북 등록 쟉////////////////////////////////////////////
		
		//생성자(상품 아이디, 상품명, 상품 가격 초기화)
		Product notebook = new Product("P1235", "LG PC 그램", 1500000);
		
		//상품 설명
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
		
		//분류
		notebook.setCategory("Notebook");
		
		//제조사
		notebook.setManufacturer("LG");
		
		//재고 수
		notebook.setUnitsInStock(1000);
		
		//신상품 or 중고품 or 재생품
		notebook.setCondition("Refurbished");
		
		/////////////////////////////////////////노트북 등록 끝////////////////////////////////////////////
		
		
		
		
		/////////////////////////////////////////태블릿 등록 쟉////////////////////////////////////////////
		
		//생성자(상품 아이디, 상품명, 상품 가격 초기화)
		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		
		//상품 설명
		tablet.setDescription("212.8*125.5*6.6m, Super AMOLED display, Octa-Core processor");
		
		//분류
		tablet.setCategory("Tablet");
		
		//제조사
		tablet.setManufacturer("Samsung");
		
		//재고 수
		tablet.setUnitsInStock(1000);
		
		//신상품 or 중고품 or 재생품
		tablet.setCondition("Old");
		
		/////////////////////////////////////////태블릿 등록 끝////////////////////////////////////////////
		
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
		
	}
	
	//Product 객체 타입의 변수 listOfProducts에 저장된 모든 상품 목록을 가져옴
	public List<Product> getAllProducts(){
		
		return listOfProducts;
	}
	
	//상품 상세보기
	//listOfProducts 변수에 저장된 3개(이상)의 상품 목록 중 선택 상품의 아이디와 일치하는 정보 가져오는 메소드
	public Product getProductById(String productId) {
		Product productById = null;
		
		//상품 목록(listOfProducts) 반복
		for(Product pro : listOfProducts) {
			if(pro.getProductId().equals(productId)) {
				productById = pro;
				break;
			}
		}
		return productById;
	}
}
