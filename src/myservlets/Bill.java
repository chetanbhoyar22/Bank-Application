package myservlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybeans.BillCalculator;

/**
 * Servlet implementation class Bill
 */
@WebServlet("/Bill")
public class Bill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Bill() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String cnm;
		double amt,net;
		PrintWriter out=response.getWriter();
		cnm=request.getParameter("custnm");
		amt=Double.parseDouble(request.getParameter("pamt"));
		
		//invoke bean component
		BillCalculator bc=new BillCalculator();
		bc.setAmount(amt);
		net=bc.getNetbill();
		
		out.println("Customer Name :  "+cnm);
		out.println("<br>Net Bill : "+net);
	}

}
