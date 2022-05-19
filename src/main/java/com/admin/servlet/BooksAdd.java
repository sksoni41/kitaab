package com.admin.servlet;

import java.io.File;
import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.BookDAOImpl;
import com.DAO.StockImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;
import com.entity.Stock;
@WebServlet("/add_book")
@MultipartConfig
public class BooksAdd extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			String bookName = req.getParameter("bname");
			String author = req.getParameter("author");
			String price = req.getParameter("price");
			String copies = req.getParameter("copies");
			String categories = req.getParameter("categories");
			String status = req.getParameter("status");
			Part part = req.getPart("bimg");
			String fileName = part.getSubmittedFileName();
			
			BookDtls b = new BookDtls(id,bookName,author,price,categories,status,fileName,"admin");
			Stock s = new Stock(id,bookName,author,copies,price,status);
			//System.out.println(b);
			
			 BookDAOImpl  dao= new BookDAOImpl(DBConnect.getConn());
			 StockImpl dao2 = new StockImpl(DBConnect.getConn());
						// System.out.println(path);
			
			boolean f= dao.addBooks(b);
			dao2.addBooks(s);
			HttpSession session = req.getSession();
			
			
			if(f) {
				 String path = getServletContext().getRealPath("")+"book";
			 
			 
//			 File file  = new File(path);
			 part.write(path+File.separator+ fileName);

				
				session.setAttribute("succMsg", "BOOK ADDED SUCCESSFULLY!");
				resp.sendRedirect("admin/add_book.jsp");
			}
			else {
				session.setAttribute("failedMsg", "something went wroung!");
				resp.sendRedirect("admin/add_book.jsp");
			} 
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

}
