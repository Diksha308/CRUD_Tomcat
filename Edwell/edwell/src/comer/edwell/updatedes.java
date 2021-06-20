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
 * Servlet implementation class updatedes
 */
@WebServlet("/updatedes")
public class updatedes extends HttpServlet {
	Connection con=null;
	PreparedStatement ps=null;

	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updatedes() {
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
		String ui=request.getParameter("txthidden");
		String email=request.getParameter("emaily");
		String name=request.getParameter("nany");
		String add=request.getParameter("txtaddress");
		/*String unm=request.getParameter("clnm");
		String urol=request.getParameter("enrol");
		*/
		long ph=Long.parseLong(request.getParameter("phoneno"));
		
		String strupdate="update designer set name=?, address=?, email=? , phoneno=? where desid=? ";
		 con=CrudOperation.createConnection();

		 try
		 {
			 ps=con.prepareStatement(strupdate);
			 ps.setString(1,name);
			 ps.setString(2,add);
			 ps.setString(3,email);
			 ps.setLong(4,ph);
			/* ps.setString(5,unm);
			 ps.setString(6,urol);
			*/ ps.setString(5,ui);
			 
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
