package com.example.lavrastore.domain;

import java.io.Serializable;

@SuppressWarnings("serial")
public class PTPItem implements Serializable {

	Item item;
	int state; // 0: 진행중, 1: 구매 요청, 2: 거래 완료
	int devP;
	int sellerId;
	
	public Item getItem() {
		return item;
	}
	public void setItem(Item item) {
		this.item = item;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getDevP() {
		return devP;
	}
	public void setDevP(int devP) {
		this.devP = devP;
	}
	public int getSellerId() {
		return sellerId;
	}
	public void setSellerId(int sellerId) {
		this.sellerId = sellerId;
	}
	
	
}
