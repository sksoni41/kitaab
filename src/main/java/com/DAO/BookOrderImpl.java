package com.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



import com.entity.Book_order;

public class BookOrderImpl implements BookOrderDao{
private Connection conn;

public BookOrderImpl(Connection conn) {
	super();
	this.conn = conn;
}


public boolean saveOrder(List<Book_order> blist) {
	
	boolean f=false;
	try {
		String sql = "insert into book_order (order_id,user_name,email,address,phone,book_name,author,price,payment,date) values(?,?,?,?,?,?,?,?,?,?) ";
		
		
		conn.setAutoCommit(false);
		PreparedStatement ps =conn.prepareStatement(sql);
		 long millis=System.currentTimeMillis();
		 Date date=new java.sql.Date(millis); 
		
	for (Book_order b:blist) {
		ps.setString(1, b.getOrderId());
		ps.setString(2, b.getUsername());
		ps.setString(3, b.getEmail());
		ps.setString(4, b.getFulladd());
		ps.setString(5, b.getPhno());
		ps.setString(6, b.getBook_name());
		ps.setString(7, b.getAuthor());
		ps.setString(8, b.getPrice());
		ps.setString(9, b.getPaymentType());
		ps.setDate(10, date);
		ps.addBatch();
	}
	
	 ps.executeBatch();
	conn.commit();
	f= true;
	conn.setAutoCommit(true);
	} catch (Exception e) {
	e.printStackTrace();
	}
	return f;
}


public List<Book_order> getBook(String email) {
	List<Book_order> list = new ArrayList<Book_order>();
	Book_order o = null;
	try {
		
		String sql = "select * from book_order where email=?";
	
		PreparedStatement ps =conn.prepareStatement(sql);
		ps.setString(1, email);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			o = new Book_order();
			o.setId(rs.getInt(1));
			o.setOrderId(rs.getString(2));
			o.setUsername(rs.getString(3));
			o.setEmail(rs.getString(4));
			o.setFulladd(rs.getString(5));
			o.setPhno(rs.getString(6));
			o.setBook_name(rs.getString(7));
			o.setAuthor(rs.getString(8));
			o.setPrice(rs.getString(9));
			o.setPaymentType(rs.getString(10));
			o.setDate(rs.getDate(11));
			list.add(o);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return list ;
}


public List<Book_order> getBook() {
	List<Book_order> list = new ArrayList<Book_order>();
	Book_order o = null;
	try {
		
		String sql = "select * from book_order";
	
		PreparedStatement ps =conn.prepareStatement(sql);
		
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			o = new Book_order();
			o.setId(rs.getInt(1));
			o.setOrderId(rs.getString(2));
			o.setUsername(rs.getString(3));
			o.setEmail(rs.getString(4));
			o.setFulladd(rs.getString(5));
			o.setPhno(rs.getString(6));
			o.setBook_name(rs.getString(7));
			o.setAuthor(rs.getString(8));
			o.setPrice(rs.getString(9));
			o.setPaymentType(rs.getString(10));
			o.setDate(rs.getDate(11));
			list.add(o);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return list ;
}


public List<Book_order> getRevenue() {
	List<Book_order> list = new ArrayList<Book_order>();
	Book_order o = null;
	try {
		
		String sql = "SELECT COUNT(id) as total_sold,monthname(date) as month,sum(price) as revenue FROM book_order group by monthname(date);";
	
		PreparedStatement ps =conn.prepareStatement(sql);
		
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			o = new Book_order();
			o.setTotalSold(rs.getString(1));
			o.setMonth(rs.getString(2));
			o.setRevenue(rs.getString(3));
			list.add(o);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return list ;
}


public List<Book_order> getTotRevenue() {
	List<Book_order> list = new ArrayList<Book_order>();
	Book_order o = null;
	try {
		
		String sql = "SELECT sum(price)  FROM book_order;";
	
		PreparedStatement ps =conn.prepareStatement(sql);
		
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			o = new Book_order();
			
			o.setTotRevenue(rs.getString(1));
			list.add(o);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return list ;
}


public List<Book_order> getBookByDate(String email, String date) {
	List<Book_order> list = new ArrayList<Book_order>();
	Book_order o = null;
	try {
		
		String sql = "select * from book_order where email=? and date=?";
	
		PreparedStatement ps =conn.prepareStatement(sql);
		ps.setString(1, email);
		ps.setString(2, date);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			o = new Book_order();
			o.setId(rs.getInt(1));
			o.setOrderId(rs.getString(2));
			o.setUsername(rs.getString(3));
			o.setEmail(rs.getString(4));
			o.setFulladd(rs.getString(5));
			o.setPhno(rs.getString(6));
			o.setBook_name(rs.getString(7));
			o.setAuthor(rs.getString(8));
			o.setPrice(rs.getString(9));
			o.setPaymentType(rs.getString(10));
			o.setDate(rs.getDate(11));
			list.add(o);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return list ;
}


}




