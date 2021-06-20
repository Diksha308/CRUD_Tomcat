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
 * Servlet implementation class userupdate
 */
@WebServlet("/userupdate")
public class userupdate extends HttpServlet {
	Connection con=null;
	PreparedStatement ps=null;

	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userupdate() {
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
		String email=request.getParameter("emaily");
		long ph=Long.parseLong(request.getParameter("phoneno"));
		String ad=request.getParameter("adress");
		String gn=request.getParameter("gender");
		
		String strupdate="update userdetail set email=?,phoneno=?,adress=?,gender=? where userid=?";
		 con=CrudOperation.createConnection();

		 try
		 {
			 ps=con.prepareStatement(strupdate);
			 ps.setString(1,email);
			 ps.setLong(2,ph);
			 ps.setString(3,ad);
			 ps.setString(4,gn);
			 ps.setString(5,ui);
			 
			 int rw=ps.executeUpdate();
			 if(rw>0)
			 {
				 response.sendRedirect("/edwell/jsp/static/user.jsp");
			 }
			 
			 
		 }
	catch(SQLException se)
		 {
		System.out.println(se);
	}

	}

}
