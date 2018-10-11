package com.digy_tms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import com.DBConnection.DBConnection;

public class DeleteDAO {
	
	public String Delete_Detail(String key)
	{
		System.out.println("Inseide DEletaDAO  ");
		Connection conn=null;
		try {
			
			conn=(Connection)DBConnection.getDBConnection();
			PreparedStatement pst=conn.prepareStatement(" delete from course_master where Course_Key='"+key+"' ");
			int i=pst.executeUpdate();
			System.out.println("STatus is deletion is  "+i);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "unsuccess";
	}

}
