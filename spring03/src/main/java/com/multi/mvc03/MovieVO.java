package com.multi.mvc03;

public class MovieVO {
	private String title;
	private int price;
	private int count;
	private int sum;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	@Override
	public String toString() {
		return "MovieVO [title=" + title + ", price=" + price + ", count=" + count + ", sum=" + sum + "]";
	}

	
	
}
