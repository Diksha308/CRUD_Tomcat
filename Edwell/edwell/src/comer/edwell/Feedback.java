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
import comdrb.beans.FeedbackBean;

/**
 * Servlet implementation class Feedback
 */
@WebServlet("/Feedback")
public class Feedback extends HttpServlet {
	Connection con=null;
	PreparedStatement pslogin=null;
	PreparedStatement psreg=null;
	PreparedStatement pscoun=null;	
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Feedback() {
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
		con=CrudOperation.createConnection();
		FeedbackBean fbb=new FeedbackBean();
		String ui=request.getParameter("txtuserid");
		String nm=request.getParameter("txtusernm");
		String fd=request.getParameter("feedback");
			
		fbb.setId(ui);
		fbb.setName(nm);
		fbb.setFbdescp(fd);
		String logininsert="insert into feedback(id,name,fbdesc) values(?,?,?)";
		 
		try
	 	{
			con.setAutoCommit(false);
	
			pslogin=con.prepareStatement(logininsert);
			pslogin.setString(1,fbb.getId());
			pslogin.setString(2,fbb.getName());
			pslogin.setString(3,fbb.getFbdescp());
			int rw=pslogin.executeUpdate();
			if(rw>0)
			{
				con.commit();
				response.sendRedirect("/edwell/jsp/static/feedback.jsp");
			}
			
	 	
	 	}
	catch(SQLException se)
		{
			System.out.println(se);
		}

	}

}
