package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.*;



@WebServlet("/editoffer")
public class Editdervlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tourname=request.getParameter("a1");
		String location=request.getParameter("a2");
		int days=Integer.parseInt(request.getParameter("a3"));
		String startdate =request.getParameter("a4");
		Double price=Double.parseDouble(request.getParameter("a5"));
		int oid=Integer.parseInt(request.getParameter("a6"));
		
		AddOffer p=new AddOffer();
		
		p.setTourname(tourname);
		p.setLocation(location);
		p.setDays(days);
		p.setDate(startdate);
		p.setPrice(price);
		p.setOid(oid);
		OfferDao p1=new OfferDao();
		try {
			if(p1.editoffer(p)>0)
			{
				response.sendRedirect("show-offer.jsp");
			}
			else
			{
				response.sendRedirect("Addoffer.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

}
