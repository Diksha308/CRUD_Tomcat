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

/**
 * Servlet implementation class verifydes
 */
@WebServlet("/verifydes")
public class verifydes extends HttpServlet {
	Connection con=null;
	PreparedStatement ps=null;

	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public verifydes() {
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
	
		String ui=request.getParameter("txthidden");
		String vri=request.getParameter("ver");
		
		String strupdate="update logindetail set status=?  where id=? ";
		 con=CrudOperation.createConnection();

		 try
		 {
			 ps=con.prepareStatement(strupdate);
			 ps.setString(1, vri);
			 /*ps.setString(1,name);
			 ps.setString(2,add);
			 ps.setString(3,email);
			 ps.setLong(4,ph);
			 ps.setString(5,unm);
			 ps.setString(6,urol);
			*/ ps.setString(2,ui);
			 
			 int rw=ps.executeUpdate();
			 if(rw>0)
			 {
				 response.sendRedirect("/edwell/jsp/static/Admin.jsp");
			 }
			 
			 
		 }
	catch(SQLException se)
		 {
		System.out.println(se);
	}
	


	}

}
