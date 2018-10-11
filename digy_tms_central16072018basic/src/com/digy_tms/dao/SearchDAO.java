package com.digy_tms.dao;


import com.digy_tms.Pojo.*;

import com.DBConnection.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class SearchDAO {



	public ArrayList<Integer> Search_Course(SearchBean sb)
	{
		ArrayList<Integer> Course_key = new ArrayList<Integer> ();
		
		System.out.println("Request in  SEARCH DAO   ");
		System.out.println("Inside the Search DAO");
		
		String Course_ID=sb.getCourse_Id();
		String Course_Name=sb.getCourse_Name();
		String Course_Category=sb.getCourse_category();
		String Course_sub_category=sb.getCourse_sub_category();
		String Course_Status=sb.getStatus();
		
	//	System.out.println("Co!!!!!!!!!!!!!!!!!!"+Course_ID);

		System.out.println(" ====="+Course_Name);
		System.out.println(" ====="+Course_sub_category);
		String[] str=new String[5];
		String[] strValues=new String[5];
		strValues[0]="Course_ID";
		strValues[1]="Course_Name";
		strValues[2]="Course_Category";
		strValues[3]="Course_sub_category";
		strValues[4]="Course_Status";
		
		str[0]=Course_ID;
		str[1]=Course_Name;
		str[2]=Course_Category;
		str[3]=Course_sub_category;
		str[4]=Course_Status;
		
		for(int i=0;i<str.length;i++)
		{
			System.out.println("output  "+str[i]);
		}
		
				//	System.out.println(Course_ID);
				//	System.out.println(Course_Name);
				//	System.out.println(Course_Category);
				//	System.out.println(Course_sub_category);
				//	System.out.println(Course_Status);
		Connection conn=null;
		int[] num=new int[5]; 
		String[] temp=new String[5];
		int j=0,count=0;
		
		for(int i=0;i<5;i++)
		{
			if(!str[i].isEmpty()){
					 if(!str[i].equals("--Select--"))
					{
						temp[count]=str[i];
						num[j]=i; 
						j++;
						count++;
					}
			}
			else
				continue;
		}
		System.out.println("Count "+count);
		for(int i=0;i<str.length;i++)
		{
			System.out.println("output  "+temp[i]);
		}
		
		try {
			//String sql=" delete from course_master where Course_Key='"+temp[0]+"' ";
			//System.out.println("SQL  Statement "+ sql);
			String query="select * from course_master where ";
			
		conn=(Connection) DBConnection.getDBConnection();
		j=0;
	
		System.out.println("Value of Str  "+str[0]+" "+str[2]+" "+str[4]);
		for(int i=0;i<count;i++)
		{
			if(!temp[i].equals("ACTIVE")) {
			query=query+strValues[num[j]]+" LIKE '%"+temp[i]+"%'  ";
			j++;
			}
			else
			{
				query=query+strValues[num[j]]+" = '"+temp[i]+"'  ";
				j++;
			}
			if(i!=count-1){
				query=query+"and ";	
			}
		}
		System.out.println("My query    "+query);
		
		
		PreparedStatement pst=conn.prepareStatement(query+";");

		ResultSet rs=pst.executeQuery(query);
		int key;
		while(rs.next()) {
			
			System.out.println("Result        : "+rs.getString(1)+" "+rs.getString(2)+"  "+rs.getString(3)+"  "+rs.getString(6)+" "+rs.getString(7)+" "+rs.getString(16));
	
			key=Integer.parseInt(rs.getString(1));
			Course_key.add(key);
			
		}

		 for(int i=0;i<Course_key.size();i++)
			  System.out.println(" @@  List "+Course_key.get(i));
		return Course_key;
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return Course_key;
	}
	
}
