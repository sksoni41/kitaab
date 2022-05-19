package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.entity.Stock;

public class StockImpl implements StockDAO {
	
	private Connection conn;
	

	public StockImpl(Connection conn) {
		super();
		this.conn = conn;
	}


	public boolean addBooks(Stock b) {
		boolean f = false;
		try {
			String sql = "insert into stock(id,bookname,author,copies,price,status)values(?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, b.getId());
			ps.setString(2, b.getBookname());
			ps.setString(3, b.getAuthor());	
			ps.setString(4, b.getCopies());
			
			ps.setString(5, b.getPrice());
			ps.setString(6, b.getStatus());
		
			

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}


	public List<Stock> getAllBooks() {
		
			List<Stock> list = new ArrayList<Stock>();
		Stock b = null;
			try {
				String sql = "select * from stock";
				PreparedStatement ps = conn.prepareStatement(sql);

				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
					b = new Stock();
					b.setId(rs.getInt(1));
					b.setBookname(rs.getString(2));
					b.setAuthor(rs.getString(3));
					b.setCopies(rs.getString(4));
					b.setSold(rs.getString(5));
					b.setPrice(rs.getString(6));
					b.setStatus(rs.getString(7));
					b.setQty(rs.getInt(8));
					
					list.add(b);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return list;
		}
	}
	


