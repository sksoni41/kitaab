package com.DAO;


import java.util.List;


import com.entity.Stock;

public interface StockDAO {
	public boolean addBooks(Stock b);
	public List<Stock> getAllBooks();
}
