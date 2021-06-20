package comer.edwell;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import comc.dbutil.CrudOperation;
import comdrb.beans.UserRegisterBean;

/**
 * Servlet implementation class UserRegister
 */
@WebServlet("/UserRegister")
public class UserRegister extends HttpServlet {
	Connection con=null;
	PreparedStatement pslogin=null;
	PreparedStatement psreg=null;
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		con=CrudOperation.createConnection();
		UserRegisterBean urb=new UserRegisterBean();
		String ui=request.getParameter("txtuid");
		String nm=request.getParameter("namy");
		String uspass=request.getParameter("txtupass");
		String address=request.getParameter("txtaddress");
		String uemail=request.getParameter("emaily");
		String gen=request.getParameter("gender");
		String phnno=request.getParameter("phony");
	
		urb.setUserid(ui);
		urb.setUspass(uspass);
		urb.setName(nm);
		urb.setAddress(address);
		urb.setEmail(uemail);
		urb.setPhoneno(Long.parseLong(phnno));
		urb.setGender(gen);
		
		 String logininsert="insert into logindetail values(?,?,?,?)";
		 String userinsert="insert into userdetail values(?,?,?,?,?,?)";
		 try
		 	{
				con.setAutoCommit(false);
				pslogin=con.prepareStatement(logininsert);
				pslogin.setString(1,urb.getUserid());
				pslogin.setString(2,urb.getUspass());
				pslogin.setString(3,"user");
				pslogin.setString(4,"true");
				int rw=pslogin.executeUpdate();
				psreg=con.prepareStatement(userinsert);
				psreg.setString(1,urb.getUserid());
				psreg.setString(2,urb.getName());
				psreg.setString(3,urb.getAddress());
				psreg.setString(4,urb.getEmail());
				psreg.setString(5,urb.getGender());
				psreg.setLong(6,urb.getPhoneno());
				
				int rw1=psreg.executeUpdate();
				if(rw>0&&rw1>0)
					{
						con.commit();
						response.sendRedirect("/edwell/jsp/static/message.jsp");
					} 
			}
			catch(SQLException se)
				{
					System.out.println(se);
				}

	}

}
