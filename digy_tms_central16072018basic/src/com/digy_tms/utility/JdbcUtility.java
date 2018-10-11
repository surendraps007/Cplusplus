package com.digy_tms.utility;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public class JdbcUtility {
	private static Properties prop;
	private void load(){
		try{
			prop=new Properties();
			prop.load(getClass().getResourceAsStream("config.properties"));
			Class.forName(prop.getProperty("driver"));
		}catch(IOException e){
                    System.out.println(e.getMessage());
		} catch (ClassNotFoundException e) {
                    System.out.println(e.getMessage());
            }
	}
	public static Connection getConnection(){
		Connection con=null;
		try{
			if(prop==null){
				new JdbcUtility().load();
			}
			con=DriverManager.getConnection(prop.getProperty("url"),prop.getProperty("username"),prop.getProperty("password"));
		}
		catch(SQLException e){
			System.out.println(e.getMessage());
		}
		return con;
	}
	public static void conClose(Connection con){
		try{
			if(con!=null){
				con.close();
			}
		}catch(SQLException e){
			System.out.println(e.getMessage());
		}
	}
	public static void pstClose(PreparedStatement pst){
		try{
			if(pst!=null){
				pst.close();
			}
		}catch(SQLException e){
			System.out.println(e.getMessage());
		}
	}
	public static void rsClose(ResultSet rs){
		try{
                    if(rs!=null){
                        rs.close();
                    }
		}catch(SQLException e){
                    System.out.println(e.getMessage());
		}
	}
}
