package com.digy_tms.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.digy_tms.Pojo.*;

import com.DBConnection.DBConnection;

import java.sql.Connection;

public class MasterDAO {

	public String master_register(MasterBean mb)
	{
		String Course_id=mb.getCourse_id();
		String Course_name=mb.getCourse_name();
		String Course_short_name=mb.getCourse_short_name();
		String Course_type=mb.getCourse_type();
		String Course_category=mb.getCourse_category();
		String Course_sub_category=mb.getCourse_sub_category();
		String Course_duration_uom=mb.getCourse_duration_uom();
		String Course_duration_min=mb.getCourse_duration_min();
		String Course_duration_max=mb.getCourse_duration_max();
		String Curese_buffer_01=mb.getCurese_buffer_01();
		String Curese_buffer_02=mb.getCurese_buffer_02();
		String Curese_buffer_03=mb.getCurese_buffer_03();
		String Curese_buffer_04=mb.getCurese_buffer_04();
		String Curese_buffer_05=mb.getCurese_buffer_05();
		String Course_Status=mb.getCourse_Status();
		String Course_created_by=mb.getCourse_created_by();
		String Course_created_DtTm=mb.getCourse_created_DtTm();
		String Course_mod_by=mb.getCourse_mod_by();
		String Course_mod_DtTm=mb.getCourse_mod_DtTm();
		int i=0;
		Connection conn=null;
		try {
		conn=DBConnection.getDBConnection();
			String query="insert into course_master (Course_ID,Course_Name,Course_Short_name,Course_Type,Course_Category,"
					+ "Course_sub_category,Course_duration_uom,Cousre_Duration_min,"
					+ "Course_Duration_Max,Curese_buffer_01,Curese_buffer_02,Curese_buffer_03,Curese_buffer_04,Curese_buffer_05,"
					+ "Course_Status,Course_created_by,Course_created_DtTm,Course_mod_by,Course_mod_DtTm)"+"values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			//@SuppressWarnings("null")
			PreparedStatement pst=conn.prepareStatement(query);
			
			pst.setString(1, Course_id);
			pst.setString(2, Course_name);
			pst.setString(3, Course_short_name);
			pst.setString(4, Course_type);
			pst.setString(5, Course_category);
			pst.setString(6, Course_sub_category);
			pst.setString(7, Course_duration_uom);
			pst.setString(8, Course_duration_min);
			pst.setString(9, Course_duration_max);
			pst.setString(10, Curese_buffer_01);
			pst.setString(11, Curese_buffer_02);
			pst.setString(12, Curese_buffer_03);
			pst.setString(13, Curese_buffer_04);
			pst.setString(14, Curese_buffer_05);
			pst.setString(15, Course_Status);		
			pst.setString(16, Course_created_by);
			pst.setString(17, Course_created_DtTm);
			pst.setString(18, Course_mod_by);
			pst.setString(19, Course_mod_DtTm);

			 i=pst.executeUpdate();	
			 if(i!=0)
			 {
				 return "success";
			 }
			 
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		System.out.println("STATUS: "+i);
		return "unsuccess";
	}

	
}
