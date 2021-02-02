package myservlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybeans.NewAccount;
/**
 * Servlet implementation class OpenAccount
 */
@WebServlet("/OpenAccount")
public class OpenAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OpenAccount() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		
		int ano;
		String anm,atyp,bal;
	
		ano=Integer.parseInt(request.getParameter("ano"));
		anm=request.getParameter("anm");
		atyp=request.getParameter("atyp");
		bal=request.getParameter("bal");
		//No need for JDBC in servlet
		
	    NewAccount obj=new NewAccount();
	    obj.setId(ano);
	    obj.setAccnm(anm);
	    obj.setAcctype(atyp);
	    obj.setBalance(bal);
	    
	    if(obj.isInsertstatus())
	    {
	    	out.println("<h3>Account opened successfully</h3>");
	    }
	    else
	    {
	    	out.println("<h3>Failed</h3>");
	    }
	    
	 }

}
