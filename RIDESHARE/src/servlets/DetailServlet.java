package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.RideDao;
import model.Ride;
import model.User;

@WebServlet(name = "DetailServlet" , urlPatterns={"/detail"})
public class DetailServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
	
	private RideDao dao;
	
	public DetailServlet()
	{
		this.dao = new RideDao();
	}
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		
		String id = req.getParameter("id");
		req.setAttribute("id",id);
		
		Integer uniqueid = Integer.parseInt(id);
		
		Ride ride = dao.getRide(uniqueid);
		User user = dao.getUser(ride.getUser());
		
		req.setAttribute("ride", ride);
		req.setAttribute("user",user);
		
		RequestDispatcher dispacher = req.getRequestDispatcher("detail.jsp");
		dispacher.forward(req, resp);
		
		
		
	}
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{

		doGet(req, resp);
	}
	
	
	
	
	

	
}
