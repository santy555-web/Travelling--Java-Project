package controller;
import java.io.*;
import java.sql.SQLException;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.*;


public class addImages extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Part images=request.getPart("images");
	
		addimages p=new addimages();
		 p.setImage1(images);
		
		 AddimageDao p1=new AddimageDao();
			try {
				if(p1.addimage(p)>0)
				{
					response.sendRedirect("Addimages.jsp");
				}
				else
				{
					response.sendRedirect("showimages.jsp");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
}
		

