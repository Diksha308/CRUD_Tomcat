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
 * Servlet implementation class Designerupdate
 */
@WebServlet("/Designerupdate")
public class Designerupdate extends HttpServlet {
	Connection con=null;
	PreparedStatement ps=null;
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Designerupdate() {
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
		System.out.println(ui);
		String email=request.getParameter("emaily");
		long ph=Long.parseLong(request.getParameter("phoneno"));
		String ad=request.getParameter("addy");
		String ex=request.getParameter("expy");
		String abt=request.getParameter("abty");
		String gen=request.getParameter("gendy");
		
		String strupdate="update designer set email=?,phoneno=?,address=?,experience=?,aboutme=?,gender=? where desid=?";
		 con=CrudOperation.createConnection();

		 try
		 {
			 ps=con.prepareStatement(strupdate);
			 ps.setString(1,email);
			 ps.setLong(2,ph);
			 ps.setString(3,ad);

			 ps.setString(4,ex);
			 ps.setString(5,abt);
			ps.setString(6,gen);
			ps.setString(7,ui);
			 
			 int rw=ps.executeUpdate();
			 if(rw>0)
			 {
				 response.sendRedirect("/edwell/jsp/static/designerpg.jsp");
			 }
			 
			 
		 }
	catch(SQLException se)
		 {
		System.out.println(se);
	}
	}

}
