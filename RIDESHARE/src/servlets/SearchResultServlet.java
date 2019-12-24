package servlets;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import daos.RideDao;


@WebServlet(name = "SearchResultServlet" , urlPatterns={"/result"})
public class SearchResultServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
	private RideDao dao;
	
	public SearchResultServlet()
	{
		this.dao = new RideDao();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		
		String date = req.getParameter("date");
		String origin = req.getParameter("origin");
		String destination = req.getParameter("destination");
		
		System.out.println(date + " " + origin + " " + destination);
		
		req.setAttribute("results", dao.getSearchedRides(origin,destination,date));  // the search results added
		
		RequestDispatcher dispacher = req.getRequestDispatcher("result.jsp");
		dispacher.forward(req, resp);		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{

		doGet(req, resp);
	}	
	
}

