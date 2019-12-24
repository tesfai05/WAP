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


@WebServlet(name = "NewPostServlet" , urlPatterns={"/newpost"})
public class NewPostServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
	private RideDao dao;
	
	public NewPostServlet()
	{
		this.dao = new RideDao();
	}
	
	
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{		
		doPost(req,resp);		
	}	
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		String date = req.getParameter("date");
		String origin = req.getParameter("origin");
		String destination = req.getParameter("destination");
		String time = req.getParameter("time");
		String fare = req.getParameter("fare");
		String message = req.getParameter("message");
		String user = req.getSession().getAttribute("username").toString();
		int driverid = dao.getUserByUserName(user).getId();
		
		double ridefair = Double.parseDouble(fare);
		
		Ride ride = new Ride(100,date,origin,destination,ridefair,time,driverid,message);
		
		dao.saveRide(ride);
		
		
		
		
		

			RequestDispatcher dispacher = req.getRequestDispatcher("/postlist");
			dispacher.forward(req, resp);


	}
	
	
	
	
	

	
}
