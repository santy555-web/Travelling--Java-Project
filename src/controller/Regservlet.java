package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.*;

@WebServlet("/Reg")
public class Regservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Register r=new Register();
		r.setName(request.getParameter("name"));
		r.setGmail(request.getParameter("gmail"));
		r.setPassword(request.getParameter("password"));
		r.setRe_enterpassword(request.getParameter("Re_enterpassword"));
		try {
			if(RegisterDao.addUser(r)>0)
			{
				response.sendRedirect("Login.jsp");
			}
			else
			{
				response.sendRedirect("register.html");
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
	}
	

}
