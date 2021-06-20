package comer.edwell;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

import comc.dbutil.CrudOperation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Enumeration;
/**
 * Servlet implementation class upload
 */
@WebServlet("/upload")
public class upload extends HttpServlet {
	String filename=null;
	File fobj=null;
	String flname=null;
	PreparedStatement ps=null;
    ResultSet rs=null;
    Connection con=null;
    MultipartRequest mpt=null;
    HttpSession hs=null;
    
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public upload() {
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
		 hs=request.getSession(false);
		 String ui=(String)hs.getAttribute("userinfo");
		 System.out.println(ui);
			String pt=getServletContext().getRealPath("/");
			System.out.println(pt);
			String newpath=pt+"designs";
			System.out.println(newpath);
			
			File f=new File(newpath);
			if(!f.exists())
			{
				f.mkdir();
			}
			 mpt=new MultipartRequest(request, newpath, 1024*1024*6);
	String desc=mpt.getParameter("txtdesc");
	System.out.println(desc);
	
	Enumeration<String> e=mpt.getFileNames();
	while(e.hasMoreElements())
	{
		filename=e.nextElement();
		fobj=mpt.getFile(filename);
		flname=fobj.getName();
		System.out.println(flname);
		
	}
	String strsql="insert into upload(id,picname) values (?,?)";
	con=CrudOperation.createConnection();
	try
	{
		ps=con.prepareStatement(strsql);
		ps.setString(1, ui);
		ps.setString(2, flname);
int rw=ps.executeUpdate();
if(rw>0)
{
	response.sendRedirect("/edwell/jsp/static/designerpg.jsp");
}
	}
	catch(SQLException se)
	{ System.out.println(se);
	
	}
	
	}

}
