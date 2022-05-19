package com.entity;

public class Stock {
private int id;
private String bookname;
private String author;
private String copies;
private String sold;
private String price;
private String status;
private int qty;



public Stock() {
	super();
}

public Stock(int id,String bookname, String author, String copies,  String price, String status) {
	super();
	this.id=id;
	this.bookname = bookname;
	this.author = author;
	this.copies = copies;
	this.qty = Integer.parseInt(copies);
	this.price = price;
	this.status = status;
}

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getBookname() {
	return bookname;
}
public void setBookname(String bookname) {
	this.bookname = bookname;
}
public String getAuthor() {
	return author;
}
public void setAuthor(String author) {
	this.author = author;
}
public String getCopies() {
	return copies;
}
public void setCopies(String copies) {
	this.copies = copies;
}
public String getSold() {
	return sold;
}
public void setSold(String sold) {
	this.sold = sold;
}
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	this.price = price;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}


public int getQty() {
	return qty;
}

public void setQty(int qty) {
	this.qty = qty;
}

@Override
public String toString() {
	return "stock [id=" + id + ", bookname=" + bookname + ", author=" + author + ", copies=" + copies + ", sold=" + sold
			+ ", price=" + price + ", status=" + status + "]";
}



}
