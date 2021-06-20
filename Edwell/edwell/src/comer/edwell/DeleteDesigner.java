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
 * Servlet implementation class DeleteDesigner
 */
@WebServlet("/DeleteDesigner")
public class DeleteDesigner extends HttpServlet {

	 PreparedStatement ps=null;
   ResultSet rs=null;
   Connection con=null;
   HttpSession hs=null;
   String st;

	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteDesigner() {
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
		
		 hs=request.getSession();
		 String ui=(String)hs.getAttribute("userinfo");
		
String[] msg=request.getParameterValues("chkdesigner");
		for(int i=0;i<msg.length;i++)
		{
			st=msg[i];
		
		con=CrudOperation.createConnection();
		
		String strsql="delete from logindetail where id=?";
		try
		{
			ps=con.prepareStatement(strsql);
			
			ps.setString(1,st);
			
			int rw=ps.executeUpdate();
			if(rw>0)
			{
				response.sendRedirect("/edwell/jsp/static/deletedesigner.jsp");
				
			}
		}
		catch(SQLException se)
		{ System.out.println(se);
		
		}
				
		}

	}

}
