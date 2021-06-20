package comer.edwell;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    HttpSession hs=null;
	PreparedStatement ps=null;
    ResultSet rs=null;
    Connection con=null;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
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
		
		String ui=request.getParameter("textuserid");
		String upass=request.getParameter("textuserpass");
		
		hs.setAttribute("userinfo", ui);
		con=CrudOperation.createConnection();
		String strsql="Select * from logindetail where id=? and pass=? ";
		try
		{
			ps=con.prepareStatement(strsql);
			ps.setString(1, ui);
			ps.setString(2, upass);
			/*ps.setString(3,"false");*/
			rs=ps.executeQuery();
			
			if(rs.next())
			{
				
				String utype=rs.getString("usertype");
				String sta=rs.getString("status");
				
				if(utype.equals("designer"))
				{
					if(sta.equals("true"))
					{
						response.sendRedirect("/edwell/jsp/static/designerpg.jsp");
					}
					else
					{
						response.sendRedirect("/edwell/jsp/static/sorry.jsp");
					}
				}
				else if(utype.equals("user"))
				{
					response.sendRedirect("/edwell/jsp/static/user.jsp");
					
				}
				else if(utype.equals("Admin"))
				{
					response.sendRedirect("/edwell/jsp/static/Admin.jsp");
					
				}
				else
				{
					response.sendRedirect("/edwell/jsp/static/oh.jsp");
				}
				
			}
		
			PrintWriter out=response.getWriter();
			out.println("Your account does not exist");
		
		}	
		catch(SQLException se){
			System.out.println(se);
		}
		finally
		{try{
			if(rs!=null){rs.close();
		}
			if(ps!=null)
			{
				ps.close();
				
			}
	}
		catch(SQLException se)
		{System.out.println(se);
		}

}

	}

}
