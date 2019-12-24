package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.RideDao;
import model.User;


@WebServlet(name = "SignupServlet" , urlPatterns={"/signup"})
public class SignupServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
	
	private RideDao dao;
	
	public SignupServlet()
	{
		this.dao = new RideDao();
	}
	
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		
		doPost(req, resp);
		
		
	}
	
	
	
	
	
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{

		
		
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String firstname = req.getParameter("firstname");
		String lastname = req.getParameter("lastname");
		String phone = req.getParameter("phone");
		String date = req.getParameter("date");
		String role = req.getParameter("role");
		
		String finalrole = "";
		
		if(role == null)
		{
			finalrole = "customer";
		}
		else
		{
			finalrole = "driver";
		}
		
		User user = new User(100,username,password,phone,firstname,lastname,finalrole);
		dao.saveUser(user);
		
		
		
		
		
		RequestDispatcher dispacher = req.getRequestDispatcher("/thankyousignup.jsp");
		dispacher.forward(req, resp);
	}
	
	
	
	
	

	
}

