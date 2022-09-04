package bracelet;

import java.util.ArrayList;

import bracelet.Bracelet;

public class BraceletDAO {

   private ArrayList<Bracelet> listOfProducts = new ArrayList<Bracelet>();
   private static BraceletDAO instance = new BraceletDAO();

   public static BraceletDAO getInstance(){
      return instance;
   } 


   public BraceletDAO() {
      
      
	   Bracelet brac01 = new Bracelet("brac001.jpg", "미니 크로스 볼드 체인 팔찌", 18000);
	   Bracelet brac02 = new Bracelet("brac002.jpg", "Series Square Chain Black Bracelet", 21000);
	   Bracelet brac03 = new Bracelet("brac003.jpg", "Series Antic Oil Chain Bracele", 21000);
	   Bracelet brac04 = new Bracelet("brac004.jpg", "퓨처 엔틱 체인 팔찌", 19000);
	   Bracelet brac05 = new Bracelet("brac005.jpg", "써클 플랫폼 체인 팔찌", 18000);
	   Bracelet brac06 = new Bracelet("brac006.jpg", "체인 레이어드 블랙 체인 팔찌", 21000);
	   Bracelet brac07 = new Bracelet("brac007.jpg", "언밸런스 체인 드랍 팔찌", 20000);
	   Bracelet brac08 = new Bracelet("brac008.jpg", "인트 토글 심플 팔찌", 16000);
	   Bracelet brac09 = new Bracelet("brac009.jpg", "미니 마린 웨일 테일 토글 팔찌", 19000);
	   Bracelet brac10 = new Bracelet("brac010.jpg", "커브 빅 크로스 체인 팔찌", 19000);
	   
	   listOfProducts.add(brac01);
	   listOfProducts.add(brac02);
	   listOfProducts.add(brac03);
	   listOfProducts.add(brac04);
	   listOfProducts.add(brac05);
	   listOfProducts.add(brac06);
	   listOfProducts.add(brac07);
	   listOfProducts.add(brac08);
	   listOfProducts.add(brac09);
	   listOfProducts.add(brac10);

   }

   
   
   
   public ArrayList<Bracelet> getProductsList(){
		ArrayList<Bracelet> ProductsList = new ArrayList<Bracelet>();
		ProductsList.add(new Bracelet("brac001.jpg", "미니 크로스 볼드 체인 팔찌", 18000));
		ProductsList.add(new Bracelet("brac002.jpg", "Series Square Chain Black Bracelet", 21000));
		ProductsList.add(new Bracelet("brac003.jpg", "Series Antic Oil Chain Bracele", 21000));
		ProductsList.add(new Bracelet("brac004.jpg", "퓨처 엔틱 체인 팔찌", 19000));
		ProductsList.add(new Bracelet("brac005.jpg", "써클 플랫폼 체인 팔찌", 18000));
		ProductsList.add(new Bracelet("brac006.jpg", "체인 레이어드 블랙 체인 팔찌", 21000));
		ProductsList.add(new Bracelet("brac007.jpg", "언밸런스 체인 드랍 팔찌", 20000));
		ProductsList.add(new Bracelet("brac008.jpg", "인트 토글 심플 팔찌", 16000));
		ProductsList.add(new Bracelet("brac009.jpg", "미니 마린 웨일 테일 토글 팔찌", 19000));
		ProductsList.add(new Bracelet("brac010.jpg", "커브 빅 크로스 체인 팔찌", 19000));
		return ProductsList;
	}
   
   public Bracelet getProductById(String productId) {
	   Bracelet productById = null;

	   for (int i = 0; i < listOfProducts.size(); i++) {
		   Bracelet product = listOfProducts.get(i);
			if (product != null && product.getPnumber() != null && product.getPnumber().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
   
   public void addProduct(Bracelet bracelet) {
      listOfProducts.add(bracelet);
   }
}