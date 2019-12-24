package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import daos.RideDao;


@WebServlet(name = "SigninCustomerServlet" , urlPatterns={"/signincustomer"})
public class SigninCustomerServlet extends HttpServlet     // for the customer
{
	private static final long serialVersionUID = 1L;
	
	
	private RideDao dao;
	
	public SigninCustomerServlet()
	{
		this.dao = new RideDao();
	}
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		
		String username = req.getParameter("username");  // the un got from the login page
		String password = req.getParameter("password");  // the pw got from the login page
		
		
		if(dao.registered(username, password))
		{
			HttpSession session = req.getSession(true);
			session.setAttribute("authenticated", "yes");
			session.setAttribute("authenticatedusername", req.getParameter("username"));
			
			
			String rideid = req.getParameter("id");
			String customerusername = username;
			
			/**
			 *  then save to db.
			 */
			
			dao.saveReservation(Integer.parseInt(rideid), dao.getUserByUserName(customerusername).getId());
			
			
			req.setAttribute("email", req.getParameter("email"));  // email for thankyoupage
			req.setAttribute("phone", req.getParameter("phone"));  // phone for thankyoupage	
			
			
			RequestDispatcher dispacher = req.getRequestDispatcher("thankyoureserve.jsp");
			dispacher.forward(req, resp);
		}
		else
		{
			req.setAttribute("email", req.getParameter("email"));  // email for thankyoupage
			req.setAttribute("phone", req.getParameter("phone"));  // phone for thankyoupage
			req.setAttribute("id", req.getParameter("id"));		   // id for thankyoupage
			req.setAttribute("error", "error");  // additional error
			RequestDispatcher dispacher = req.getRequestDispatcher("sign-in-customer.jsp");
			dispacher.forward(req, resp);
		}
		
		
		
		
		
	}
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{

		doPost(req, resp);
	}
	
	
	
	
	

	
}


