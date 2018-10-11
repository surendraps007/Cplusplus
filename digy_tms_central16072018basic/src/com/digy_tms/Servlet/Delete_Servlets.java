package com.digy_tms.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.digy_tms.dao.DeleteDAO;

/**
 * Servlet implementation class Delete_Servlets
 */
@WebServlet("/Delete_Servlets")
public class Delete_Servlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete_Servlets() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		 System.out.println("VALUE FROM HIDDEN DELETE  " +request.getParameter("delete"));
			
			String key=request.getParameter("delete");
			
			System.out.println(key);
			DeleteDAO dd=new DeleteDAO();
			
		String status=dd.Delete_Detail(key);
		if(status.equals("success"))
		{
			RequestDispatcher rd=request.getRequestDispatcher("Search_master.jsp");
			rd.forward(request, response);
		}
		else
		{
			
			RequestDispatcher rd1=request.getRequestDispatcher("Search_master.jsp");
			rd1.forward(request, response);
		}
			
			
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
