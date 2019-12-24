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

@WebServlet(name = "EditServlet" , urlPatterns={"/edit"})
public class EditServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
	private RideDao dao;
	
	public EditServlet()
	{
		this.dao = new RideDao();
	}
	
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{		
		String id = req.getParameter("id");
		
		Ride ride = dao.getRide(Integer.parseInt(id));
		req.setAttribute("ride", ride);
		

		RequestDispatcher dispacher = req.getRequestDispatcher("edit.jsp");
		dispacher.forward(req, resp);
		
	}	
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		String id = req.getParameter("id");
		String date = req.getParameter("date");
		String origin = req.getParameter("origin");
		String destination = req.getParameter("destination");
		String time = req.getParameter("time");
		String fare = req.getParameter("fare");
		String message = req.getParameter("message");
		String user = req.getParameter("user");
		
		int rideid = Integer.parseInt(id);
		double ridefair = Double.parseDouble(fare);
		int ridedriver = Integer.parseInt(user);
		
		Ride ride = new Ride(rideid,date,origin,destination,ridefair,time,ridedriver,message);
		
		dao.updateRide(ride);
		
		RequestDispatcher dispacher = req.getRequestDispatcher("/postlist");
		dispacher.forward(req, resp);
		
			

	}
	
	
	
	
	

	
}
