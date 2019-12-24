package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.RideDao;
import model.Ride;

@WebServlet(name = "PostListServlet" , urlPatterns={"/postlist"})
public class PostListServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
private RideDao dao;
	
	public PostListServlet()
	{
		this.dao = new RideDao();
	}
	
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{	
		
		req.setAttribute("posts", dao.getRidesByUserName(req.getSession().getAttribute("username").toString()));			
		
		RequestDispatcher dispacher = req.getRequestDispatcher("postlist.jsp");
		dispacher.forward(req, resp);
	}	
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		doGet(req,resp);
	}
	
	
	
	
	

	
}

