package com.digy_tms.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.digy_tms.Pojo.*;
import com.digy_tms.dao.*;

/**
 * Servlet implementation class Course_master_Servlets
 */
@WebServlet("/Course_master_Servlets")
public class Course_master_Servlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Course_master_Servlets() {
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
		
		String Course_id=request.getParameter("Course_id");
		String Course_name=request.getParameter("Course_name");
		String Course_short_name=request.getParameter("Course_short_name");
		
		String Course_type=request.getParameter("Course_type");
		String Course_category=request.getParameter("Course_category");
		String Course_sub_category=request.getParameter("Course_sub_category");
		String Course_duration_uom=request.getParameter("Course_duration_uom");
		String Course_duration_max=request.getParameter("Course_duration_max");
		String Course_duration_min=request.getParameter("Course_duration_min");
		
		String Curese_buffer_01=request.getParameter("Curese_buffer_01");
		String Curese_buffer_02=request.getParameter("Curese_buffer_02");
		String Curese_buffer_03=request.getParameter("Curese_buffer_03");
		String Curese_buffer_04=request.getParameter("Curese_buffer_04");
		String Curese_buffer_05=request.getParameter("Curese_buffer_05");
		
		String Course_Status=request.getParameter("Course_Status");
		String Course_created_by=request.getParameter("Course_created_by");
		String Course_created_DtTm=request.getParameter("Course_created_DtTm");
		String Course_mod_by=request.getParameter("Course_mod_by");
		String Course_mod_DtTm=request.getParameter("Course_mod_DtTm");
		
		
		MasterBean mb=new MasterBean();
		mb.setCourse_id(Course_id);
		mb.setCourse_name(Course_name);
		mb.setCourse_short_name(Course_short_name);
		mb.setCourse_type(Course_type);
		mb.setCourse_category(Course_category);
		mb.setCourse_sub_category(Course_sub_category);
		mb.setCourse_duration_uom(Course_duration_uom);
		mb.setCourse_duration_min(Course_duration_min);
		mb.setCourse_duration_max(Course_duration_max);
		mb.setCurese_buffer_01(Curese_buffer_01);
		mb.setCurese_buffer_02(Curese_buffer_02);
		mb.setCurese_buffer_03(Curese_buffer_03);
		mb.setCurese_buffer_04(Curese_buffer_04);
		mb.setCurese_buffer_05(Curese_buffer_05);
		mb.setCourse_Status(Course_Status);
		mb.setCourse_created_by(Course_created_by);
		mb.setCourse_created_DtTm(Course_created_DtTm);
		mb.setCourse_mod_by(Course_mod_by);
		mb.setCourse_mod_DtTm(Course_mod_DtTm);
		
		MasterDAO md=new MasterDAO();
		String result;
		result=md.master_register(mb);
		if(result.equals("success"))
		{
			HttpSession session = request.getSession(true);	  
	          session.setAttribute("currentSessionUser",Course_id); 
	          
			RequestDispatcher rd1 = request.getRequestDispatcher("Search_master.jsp");
			   rd1.forward(request, response);
		}
		else
		{
			RequestDispatcher rd2 = request.getRequestDispatcher("Course_master_edit.jsp");
			   rd2.forward(request, response);
		}
		
		
		
	}

}
