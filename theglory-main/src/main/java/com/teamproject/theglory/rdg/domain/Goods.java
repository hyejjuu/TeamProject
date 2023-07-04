package com.teamproject.theglory.rdg.domain;

public class Goods {
	
	private int no;
	private String name_goods;
	private String explain_goods;
	private String pic_goods;
	private String value_goods;
	
	public Goods() {}
	public Goods(int no, String name_goods, String explain_goods, String pic_goods, String value_goods) {
		this.no = no;
		this.name_goods = name_goods;
		this.explain_goods = explain_goods;
		this.pic_goods = pic_goods;
		this.value_goods = value_goods;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName_goods() {
		return name_goods;
	}
	public void setName_goods(String name_goods) {
		this.name_goods = name_goods;
	}
	public String getExplain_goods() {
		return explain_goods;
	}
	public void setExplain_goods(String explain_goods) {
		this.explain_goods = explain_goods;
	}
	public String getPic_goods() {
		return pic_goods;
	}
	public void setPic_goods(String pic_goods) {
		this.pic_goods = pic_goods;
	}
	public String getValue_goods() {
		return value_goods;
	}
	public void setValue_goods(String value_goods) {
		this.value_goods = value_goods;
	}	
}
