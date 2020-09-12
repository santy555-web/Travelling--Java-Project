package controller;
import java.io.*;
import java.sql.SQLException;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.*;

public class AddBlog extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String n=request.getParameter("p1");
		String count=request.getParameter("p2");
		String desc=request.getParameter("p3");
		Part image=request.getPart("p4");
		int id=Integer.parseInt(request.getParameter("p5"));
		String dat=request.getParameter("p6");
		Blog p=new Blog();
		p.setName(n);
		p.setCountry(count);
		p.setDescription(desc);
		p.setImage(image);
		p.setCid(id);
		p.setDates(dat);
		BlogDao p1=new BlogDao();
		try {
			if(p1.addblog(p)>0)
			{
				response.sendRedirect("addblog.jsp");
			}
			else
			{
				response.sendRedirect("ViewBlog.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}