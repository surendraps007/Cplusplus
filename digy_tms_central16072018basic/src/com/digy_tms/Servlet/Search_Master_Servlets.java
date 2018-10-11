package com.digy_tms.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.digy_tms.Pojo.SearchBean;
import com.digy_tms.dao.SearchDAO;

/**
 * Servlet implementation class Search_Master_Servlets
 */
@WebServlet("/Search_Master_Servlets")
public class Search_Master_Servlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Search_Master_Servlets() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		PrintWriter out = response.getWriter();

		String course_id=request.getParameter("Course_id");
		String course_name=request.getParameter("Course_name");
		String course_category=request.getParameter("course_category");
		String course_sub_category=request.getParameter("course_sub_category");
		String status=request.getParameter("status");
		
		SearchBean sb=new SearchBean();
		
		sb.setCourse_Id(course_id);
		sb.setCourse_Name(course_name);
		sb.setCourse_category(course_category);
		sb.setCourse_sub_category(course_sub_category);
		sb.setStatus(status);
		
		SearchDAO sd=new SearchDAO();
		
		ArrayList<Integer> Course_key = new ArrayList<Integer> ();
		//Calling For query
		 Course_key=sd.Search_Course(sb);
		
			
			boolean FlagStatus=true;
		

			System.out.println("Inside Search  "+FlagStatus);
			
			 for(int i=0;i<Course_key.size();i++)
				  System.out.println("List "+Course_key.get(i));
			
			
			request.setAttribute("FlagStatus", FlagStatus);
			request.setAttribute("Course_key", Course_key);
		
        //Result From SearchDAO ALL the Searched Values in Course_key
			RequestDispatcher rd1 = request.getRequestDispatcher("Search_master.jsp");
			   rd1.forward(request, response);
		
	}

}
