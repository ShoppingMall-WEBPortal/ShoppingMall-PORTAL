package kr.ac.kopo.vo;

public class GoodsVO {
	
	private String itemCode;
	private String itemName;
	private String itemPrice;
	private String itemAddr;
	
	public GoodsVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public String getItemCode() {
		return itemCode;
	}
	
	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}
	
	public String getItemName() {
		return itemName;
	}
	
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	
	public String getItemPrice() {
		return itemPrice;
	}
	
	public void setItemPrice(String itemPrice) {
		this.itemPrice = itemPrice;
	}
	
	public String getItemAddr() {
		return itemAddr;
	}
	
	public void setItemAddr(String itemAddr) {
		this.itemAddr = itemAddr;
	}

	@Override
	public String toString() {
		return "GoodsVO [itemCode=" + itemCode + ", itemName=" + itemName + ", itemPrice=" + itemPrice + ", itemAddr="
				+ itemAddr + "]";
	}
}
