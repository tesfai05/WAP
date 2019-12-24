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


@WebServlet(name = "SigninDriverServlet" , urlPatterns={"/signindriver"})
public class SigninDriverServlet extends HttpServlet     // for the driver
{
	private static final long serialVersionUID = 1L;
	
	
	private RideDao dao;
	
	public SigninDriverServlet()
	{
		this.dao = new RideDao();
	}
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		if(dao.registered(username, password))
		{
			req.setAttribute("error", null);
			HttpSession session = req.getSession(true);
			session.setAttribute("username",username);
			
			RequestDispatcher dispacher = req.getRequestDispatcher("/postlist");
			dispacher.forward(req, resp);
		}
		else
		{
			req.setAttribute("error", "error");
			RequestDispatcher dispacher = req.getRequestDispatcher("sign-in-driver.jsp");
			dispacher.forward(req, resp);
		}
		
		
		
		
		
	}
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{

		doPost(req, resp);
	}
	
	
	
	
	

	
}

