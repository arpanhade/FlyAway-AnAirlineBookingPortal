package com;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;

@WebServlet("/Payment")
public class DoPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			Dao dao=new Dao();
			jakarta.servlet.http.HttpSession session=request.getSession();
			if(dao.doPaymemnt()) {
				
				session.setAttribute("message", "Payment Done !");
			}
			else {
				session.setAttribute("message", "Invalid Details");
			}
		} catch (ClassNotFoundException | SQLException e) {
			
			System.out.print("error");
			e.printStackTrace();
		}
		response.sendRedirect("BookFlight.jsp");
	}
	
}
