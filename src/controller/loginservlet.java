package controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.*;

@WebServlet("/login")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String u=request.getParameter("gmail");
		String p=request.getParameter("password");
		String reme="no";
		if(request.getParameter("remember")!=null)
		{
			reme=request.getParameter("remember");
		}
		Register r1=new Register();
		r1.setGmail(u);
		r1.setPassword(p);
		RegisterDao d=new RegisterDao();
		if(u.equals("Admin") && p.equals("Prognoz"))
		{
		HttpSession hs=request.getSession();
		hs.setAttribute("admin", "Admin");
		response.sendRedirect("header.jsp");
		}
	else
		{
	 Register n1=RegisterDao.Validate(r1.getGmail(),r1.getPassword());
		if(n1.getName()!=null)
		{
			HttpSession hs=request.getSession();
			hs.setAttribute("uname", n1.getName());
			HttpSession hs1=request.getSession();
			hs1.setAttribute("name", n1);
			System.out.println(reme);
			if(reme.equals("yes"))
			{
				Cookie c=new Cookie("email",u);
				response.addCookie(c);
				Cookie c1=new Cookie("password",p);
				response.addCookie(c1);
				response.sendRedirect("index-2.jsp?msg=Login successfully");

			}
			else
			{
				response.sendRedirect("index-2.jsp?msg=Login successfully");
				
			}
		}
		else
		{
			response.sendRedirect("Login.jsp?msg1=Email id or password invalid");
		}	
	}
	}

}
