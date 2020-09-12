package controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.*;

@WebServlet("/booknow")
public class booknow extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession hs=request.getSession();
		String un=(String) hs.getAttribute("uname");
		if(un!=null)
		{			
			//get data from user
			String uname=request.getParameter("username");
			String gmail=request.getParameter("gmail");
			String tname=request.getParameter("tname");
			String location=request.getParameter("location");
			String date=request.getParameter("date");
			double price=Double.parseDouble(request.getParameter("price"));
			int noper=Integer.parseInt(request.getParameter("no"));
			int cid=Integer.parseInt(request.getParameter("oid"));
			int days=Integer.parseInt(request.getParameter("days"));
			double tprice=price*noper;
 			//bind with book class
			Book b=new Book();
			b.setUname(uname);
			b.setGmail(gmail);
			b.setTname(tname);
			b.setLocations(location);
			b.setDays(days);
			b.setDates(date);
			b.setPrice(tprice);
			b.setNoofperson(noper);
			b.setCid(cid);
			BookDao c=new BookDao();
			if(c.addbook(b)>0)
			{
				response.sendRedirect("BookCart.jsp?");
			}	
		}
		else
		{
			response.sendRedirect("Login.jsp?card=you must be login first");
		}
	
	}

}
