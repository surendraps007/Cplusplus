package com.digy_tms.dao;

import java.math.BigInteger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpSession;

import com.digy_tms.Pojo.*;

import com.DBConnection.DBConnection;


public class UpdateDAO {

	public UpdateBean get_update_values(String course_key, UpdateBean ub) {
		
		Connection conn=null;
		System.out.println("Newly Created $44  "+course_key);
		
		try {
		conn=(Connection) DBConnection.getDBConnection();
	System.out.println("Going to excute ");
		//	String query="select Course_ID,Course_Name from course_master";
		PreparedStatement pst=conn.prepareStatement("select Course_ID,Course_Name,Course_Short_name,Course_Type,Course_Category,Course_sub_category,"
				+ "Course_duration_uom,Cousre_Duration_min,Course_Duration_Max,Curese_buffer_01,Curese_buffer_02,Curese_buffer_03,Curese_buffer_04,Curese_buffer_05,"
				+ "Course_Status,Course_created_by,Course_created_DtTm,Course_mod_by,Course_mod_DtTm from course_master where Course_Key= "+course_key+" ");
			System.out.println(pst.toString());
		ResultSet rs=pst.executeQuery();
		boolean flag=rs.next();
		System.out.println("FLAG STATUS   : "+flag);
		
		
			System.out.println("Going to excute ");
			String course_id=rs.getString(1);
			String course_name=rs.getString(2);
			String course_short_name=rs.getString(3);
			String course_type=rs.getString(4);
			String course_category=rs.getString(5);
			String course_sub_category=rs.getString(6);
			String course_duration_uom=rs.getString(7);
			String course_duration_min=rs.getString(8);
			String course_duration_max=rs.getString(9);
			String Curese_buffer_01=rs.getString(10);
			String Curese_buffer_02=rs.getString(11);
			String Curese_buffer_03=rs.getString(12);
			String Curese_buffer_04=rs.getString(13);
			String Curese_buffer_05=rs.getString(14);
			String course_status=rs.getString(15);
			String course_created_by=rs.getString(16);
			String course_created_DtTm=rs.getString(17);
			String course_mod_by=rs.getString(18);
			String course_mod_DtTm=rs.getString(19);
			
			System.out.println("\t\t Value inside query ");
			System.out.println(course_id);
			System.out.println(course_name);
			System.out.println(course_short_name);
			System.out.println(course_type);
			System.out.println(course_category);
			System.out.println(course_sub_category);
			System.out.println(course_duration_uom);
			
			
			
			
			ub.setCourse_id(course_id);
			ub.setCourse_name(course_name);
			ub.setCourse_short_name(course_short_name);
			ub.setCourse_type(course_type);
			ub.setCourse_category(course_category);
			ub.setCourse_sub_category(course_sub_category);
			ub.setCourse_duration_uom(course_duration_uom);
			ub.setCourse_duration_min(course_duration_min);
			ub.setCourse_duration_max(course_duration_max);
			ub.setCurese_buffer_01(Curese_buffer_01);
			ub.setCurese_buffer_02(Curese_buffer_02);
			ub.setCurese_buffer_03(Curese_buffer_03);
			ub.setCurese_buffer_04(Curese_buffer_04);
			ub.setCurese_buffer_05(Curese_buffer_05);
			ub.setCourse_Status(course_status);
			ub.setCourse_created_by(course_created_by);
			ub.setCourse_created_DtTm(course_created_DtTm);
			ub.setCourse_mod_by(course_mod_by);
			ub.setCourse_mod_DtTm(course_mod_DtTm);
			ub.setCourse_key(course_key);
			
			return ub;
		

	}
		catch(Exception e) {
			e.printStackTrace();
		}
		System.out.println("fAILED ");
		return ub;
	}
	
}
