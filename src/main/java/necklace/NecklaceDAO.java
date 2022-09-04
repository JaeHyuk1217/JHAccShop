package necklace;

import java.util.ArrayList;

import necklace.Necklace;

public class NecklaceDAO {

   private ArrayList<Necklace> listOfProducts = new ArrayList<Necklace>();
   private static NecklaceDAO instance = new NecklaceDAO();

   public static NecklaceDAO getInstance(){
      return instance;
   } 


   public NecklaceDAO() {
      
      
	   Necklace neck01 = new Necklace("neck001.jpg", "더블 달러 팬던트 목걸이", 15000);
	   Necklace neck02 = new Necklace("neck002.jpg", "블루 스노우 나비 목걸이", 14500);
	   Necklace neck03 = new Necklace("neck003.jpg", "뉴 스톤 딥 블루 목걸이", 14000);
	   Necklace neck04 = new Necklace("neck004.jpg", "1979 베코 군번줄 먹걸이", 15200);
	   Necklace neck05 = new Necklace("neck005.jpg", "퍼즐 심플 스퀘어 목걸이", 17000);
	   Necklace neck06 = new Necklace("neck006.jpg", "양면 마리아 원형 목걸이", 15000);
	   Necklace neck07 = new Necklace("neck007.jpg", "블랙 실버 투링 목걸이", 18000);
	   Necklace neck08 = new Necklace("neck008.jpg", "써지컬 엔젤 팬던트 목걸이", 16000);
	   Necklace neck09 = new Necklace("neck009.jpg", "다크 블랙 써클 목걸이", 17000);
	   Necklace neck10 = new Necklace("neck010.jpg", "데칼 나비 목걸이", 16500);
	   
	   listOfProducts.add(neck01);
	   listOfProducts.add(neck02);
	   listOfProducts.add(neck03);
	   listOfProducts.add(neck04);
	   listOfProducts.add(neck05);
	   listOfProducts.add(neck06);
	   listOfProducts.add(neck07);
	   listOfProducts.add(neck08);
	   listOfProducts.add(neck09);
	   listOfProducts.add(neck10);

   }

   	

   
   public ArrayList<Necklace> getProductsList(){
		ArrayList<Necklace> ProductsList = new ArrayList<Necklace>();
		ProductsList.add(new Necklace("neck001.jpg", "더블 달러 팬던트 목걸이", 15000));
		ProductsList.add(new Necklace("neck002.jpg", "블루 스노우 나비 목걸이", 15000));
		ProductsList.add(new Necklace("neck003.jpg", "뉴 스톤 딥 블루 목걸이", 15000));
		ProductsList.add(new Necklace("neck004.jpg", "1979 베코 군번줄 먹걸이", 15000));
		ProductsList.add(new Necklace("neck005.jpg", "퍼즐 심플 스퀘어 목걸이", 15000));
		ProductsList.add(new Necklace("neck006.jpg", "양면 마리아 원형 목걸이", 15000));
		ProductsList.add(new Necklace("neck007.jpg", "블랙 실버 투링 목걸이", 15000));
		ProductsList.add(new Necklace("neck008.jpg", "써지컬 엔젤 팬던트 목걸이", 15000));
		ProductsList.add(new Necklace("neck009.jpg", "다크 블랙 써클 목걸이", 15000));
		ProductsList.add(new Necklace("neck010.jpg", "데칼 나비 목걸이", 15000));
		return ProductsList;
	}
   
   public Necklace getProductById(String productId) {
	   Necklace productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Necklace product = listOfProducts.get(i);
			if (product != null && product.getPnumber() != null && product.getPnumber().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}

   
   public void addProduct(Necklace necklace) {
      listOfProducts.add(necklace);
   }
}