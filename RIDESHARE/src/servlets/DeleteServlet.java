package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.RideDao;


@WebServlet(name = "DeleteServlet" , urlPatterns={"/delete"})
public class DeleteServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
	private RideDao dao;
	
	public DeleteServlet()
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
		
			String id = req.getParameter("id");
			
			dao.deleteRide(Integer.parseInt(id));

			RequestDispatcher dispacher = req.getRequestDispatcher("/postlist");
			dispacher.forward(req, resp);


	}
	
	
	
	
	

	
}
