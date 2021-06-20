package comer.edwell;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import comc.dbutil.CrudOperation;

/**
 * Servlet implementation class Compose
 */
@WebServlet("/Compose")
public class Compose extends HttpServlet {
	  PreparedStatement ps=null,pschk=null;
      ResultSet rs=null;
      Connection con=null;
      HttpSession hs=null;
    
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Compose() {
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
		response.setContentType("text/html");
		 hs=request.getSession();
		 String ui=(String)hs.getAttribute("userinfo");
		String ri=request.getParameter("txtuid");
		String msgtxt=request.getParameter("msg");
		String subj=request.getParameter("sub");
		
		
		
		con=CrudOperation.createConnection();
		
		String strsql="insert into message(senderid,receiverid,msgtext,subject,date,Rstatus,Sstatus) values (?,?,?,?,?,?,?)";
		
		try
		{
		
		
		ps=con.prepareStatement(strsql);
		
			ps.setString(1, ui);
			ps.setString(2, ri);
			ps.setString(3,msgtxt);
			ps.setString(4, subj);
			java.util.Date d=new java.util.Date();
			java.sql.Date sd=new java.sql.Date(d.getTime());
			ps.setDate(5, sd);
			ps.setString(6, "false");
			ps.setString(7, "false");
			int rw=ps.executeUpdate();
			if(rw>0)
			{
				response.sendRedirect("/edwell/jsp/static/successfulpg.jsp");
				
			}
		}
      
		catch(SQLException se)
		{ System.out.println(se);
		
		}
				

	}

}
