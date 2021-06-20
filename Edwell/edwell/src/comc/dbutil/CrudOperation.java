package comc.dbutil;

import java.sql.*;
import java.util.ArrayList;

import comdrb.beans.*;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CrudOperation
 */
@WebServlet("/CrudOperation")
public class CrudOperation extends HttpServlet {
	private ResultSet rs=null;
	private PreparedStatement ps=null;
	private static Connection con=null;
	ArrayList<UserRegisterBean>recordlist1=null;
	/*ArrayList <MessageBeans>recordlist2=null;
	*/
	ArrayList<DesignerRegisterBean>recordlist=null;
	
	public ArrayList<DesignerRegisterBean>ShowDesigners(String sql)
	{
		recordlist=new ArrayList<DesignerRegisterBean>();
		con=createConnection();
		try
		{
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next())
			{
				DesignerRegisterBean rb=new DesignerRegisterBean();
				rb.setDesid(rs.getString("txtuid"));
				rb.setPass(rs.getString("txtupass"));
				
				rb.setName(rs.getString("namy"));
				rb.setAddress(rs.getString("txtaddress"));
				rb.setEmail(rs.getString("emaily"));
				rb.setPhoneno(rs.getLong("phony"));
				rb.setCityid(rs.getString("cityid"));
				rb.setCitynm(rs.getString("cityname"));
				rb.setExperience(rs.getString("txtexp"));
				rb.setAboutme(rs.getString("txtabt"));
				rb.setClientname(rs.getString("clnm"));
				rb.setGender(rs.getString("gender"));
				rb.setUsertype(rs.getString("tp"));
				
				
				recordlist.add(rb);
			}
		
		}
						
			catch(SQLException se)	
		{
				System.out.println(se);
		}
			
		return recordlist;
	}
	public ArrayList<UserRegisterBean>ShowUsers(String sql)
	{
		recordlist1=new ArrayList<UserRegisterBean>();
		con=createConnection();
		try
		{
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next())
			{
				UserRegisterBean rb1=new UserRegisterBean();
				rb1.setAddress(rs.getString("txtaddress"));
				rb1.setEmail(rs.getString("emaily"));
				rb1.setGender(rs.getString("gender"));
				rb1.setName(rs.getString("namy"));
				rb1.setPhoneno(rs.getLong("phony"));
				rb1.setUserid(rs.getString("txtuid"));
				rb1.setUspass(rs.getString("txtupass"));
				rb1.setStatus("false");
				
				recordlist1.add(rb1);
			}
		
		}
						
			catch(SQLException se)	
		{
				System.out.println(se);
		}
			
		return recordlist1;
	}
	
	/*public ArrayList<MessageBeans>ShowMessage(String sql)
	{
		recordlist2=new ArrayList<MessageBeans>();
		con=createConnection();
		try
		{
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next())
			{
				MessageBeans rb2=new MessageBeans();
				
				rb2.setSenderid(rs.getString("txtuid"));
				rb2.setRecieverid(rs.getString("txtuid"));
				rb2.setSubject(rs.getString("sub"));
				rb2.setMsgtext(rs.getString("msg"));
				recordlist2.add(rb2);
			}
		
		}
						
			catch(SQLException se)	
		{
				System.out.println(se);
		}
			
		return recordlist2;
	}
	*/
	public static Connection createConnection()
{
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dwell","root","432");
	}
	catch(ClassNotFoundException| SQLException cse)
	{
	System.out.println(cse);
	
	}
	return con;

	
}
	
		
	}

