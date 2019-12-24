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
import model.Ride;
import model.User;


@WebServlet(name = "ReserveServlet" , urlPatterns={"/reserve"})
public class ReserveServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
	
	private RideDao dao;
	
	public ReserveServlet()
	{
		this.dao = new RideDao();
	}
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		
		
		System.out.println("id: " + req.getParameter("id"));
		System.out.println("phone : " + req.getParameter("phone"));
		System.out.println("username : " + req.getParameter("email"));
		

		if(req.getSession().getAttribute("authenticated") != null)
		{
			
			String customerusername = req.getSession().getAttribute("authenticatedusername").toString();
			String rideid = req.getParameter("id");
			
			/**
			 *  store to reservations table based on the above two attributes.
			 */
			
			dao.saveReservation(Integer.parseInt(rideid), dao.getUserByUserName(customerusername).getId());
			
			
			
			
			req.setAttribute("email",req.getParameter("username") );  // driver email for thankyou page
			req.setAttribute("phone",req.getParameter("phone") );  // driver phone for thankyou page
			
			RequestDispatcher dispacher = req.getRequestDispatcher("thankyoureserve.jsp");
			dispacher.forward(req, resp);
		}
		else
		{
			req.setAttribute("id", req.getParameter("id"));
			req.setAttribute("email",req.getParameter("username") );
			req.setAttribute("phone",req.getParameter("phone") );
			RequestDispatcher dispacher = req.getRequestDispatcher("sign-in-customer.jsp");
			dispacher.forward(req, resp);
		}
		
		
		
		
		
	}
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{

		doGet(req, resp);
	}
	
	
	
	
	

	
}

