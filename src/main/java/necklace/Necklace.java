package necklace;

import java.io.Serializable;

public class Necklace implements Serializable {

   private static final long serialVersionUID = -4274700572038677000L;

   private String pnumber;   //상품 아이디
   private String name;      //상품명
   private Integer price; //상품 가격

   public Necklace() {
      super();
   }

   public Necklace(String pnumber, String name, Integer price) {
      this.pnumber = pnumber;
      this.name = name;
      this.price = price;
   }

   public String getPnumber() {
      return pnumber;
   }

   public String getName() {
      return name;
   }
   
   public Integer getPrice() {
	      return price;
	   }

   
}