package comer.edwell;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import comc.dbutil.CrudOperation;
import comdrb.beans.DesignerRegisterBean;

/**
 * Servlet implementation class DesignerRegister
 */
@WebServlet("/DesignerRegister")
public class DesignerRegister extends HttpServlet {
	Connection con=null;
	PreparedStatement pslogin=null;
	PreparedStatement psreg=null;
	PreparedStatement pscoun=null;	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DesignerRegister() {
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
		DesignerRegisterBean drb=new DesignerRegisterBean();
		PrintWriter out=response.getWriter();
		String ui=request.getParameter("txtuid");
		String nm=request.getParameter("namy");
		String uspass=request.getParameter("txtupass");
		String address=request.getParameter("txtaddress");
		String uemail=request.getParameter("email");
		String gen=request.getParameter("gender");
		String phnno=request.getParameter("phony");
		String exp=request.getParameter("txtexp");
		String abt=request.getParameter("txtabt");
		String cit=request.getParameter("ct");
		String cltnm=request.getParameter("clnm");
		String dtyp=request.getParameter("tp");
		String enr=request.getParameter("enrol");
		
		//System.out.println(cit);
		drb.setDesid(ui);
		drb.setName(nm);
		drb.setPass(uspass);
		drb.setAddress(address);
		drb.setEmail(uemail);
		drb.setPhoneno(Long.parseLong(phnno));
		drb.setExperience(exp);
		drb.setAboutme(abt);
		drb.setCitynm(cit);
		drb.setGender(gen);
		drb.setClientname(cltnm);
		drb.setUsertype(dtyp);
		drb.setEnrolno(enr);
		 String logininsert="insert into logindetail values(?,?,?,?)";
		 String desinsert="insert into designer values(?,?,?,?,?,?,?,?,?,?,?,?)";
		/* String couninsert="insert into countdes values(?)";*/
		 try
		 	{
				con.setAutoCommit(false);
				/*pscoun=con.prepareStatement(couninsert);
				pscoun.setString(2,drb.getDesid());
				int rw2=pscoun.executeUpdate();
				*/pslogin=con.prepareStatement(logininsert);
				pslogin.setString(1,drb.getDesid());
				pslogin.setString(2,drb.getPass());
				pslogin.setString(3,"designer");
				pslogin.setString(4,"false");
				int rw=pslogin.executeUpdate();
				psreg=con.prepareStatement(desinsert);
				psreg.setString(1,drb.getDesid());
				psreg.setString(2,drb.getName());
				psreg.setString(3,drb.getAddress());
				psreg.setString(4,drb.getEmail());
				psreg.setLong(5,drb.getPhoneno());
				psreg.setString(6,drb.getCitynm());
				psreg.setString(7,drb.getExperience());
				psreg.setString(8,drb.getAboutme());
				psreg.setString(9,drb.getClientname());
				psreg.setString(10,drb.getGender());
				psreg.setString(11,drb.getUsertype());
				psreg.setString(12,drb.getEnrolno());

				int rw1=psreg.executeUpdate();
				if(rw>0&&rw1>0)
					{
						con.commit();
						response.sendRedirect("/edwell/jsp/static/message.jsp");
					}
				else{
					out.println("not registered");
				}
				
			}
			catch(SQLException se)
				{
					System.out.println(se);
				}

		 }
}
