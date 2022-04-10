package com;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;

@WebServlet("/AddPassenger")
public class AddPassenger extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pname=request.getParameter("pname");
		String age= request.getParameter("age");
		String gender=request.getParameter("gender");
		
		HashMap<String,String> passenger=new HashMap<>();
		passenger.put("pname", pname);
		passenger.put("age", age);
		passenger.put("gender", gender);
		
		try {
			Dao dao=new Dao();
			jakarta.servlet.http.HttpSession session=request.getSession();
			if(dao.addPassenger(passenger)) {
				
				session.setAttribute("message", "Passenger Added Successfully");
			}
			else {
				session.setAttribute("message", "Invalid Details");
			}
		} catch (ClassNotFoundException | SQLException e) {
			
			System.out.print("error");
			e.printStackTrace();
		}
		response.sendRedirect("Payment.jsp");
	}

}
