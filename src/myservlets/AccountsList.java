package myservlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybeans.DBConnector;

/**
 * Servlet implementation class AccountsList
 */
@WebServlet("/AccountsList")
public class AccountsList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AccountsList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Connection con;
		Statement st;
		ResultSet rs;
		PrintWriter out=response.getWriter();
		out.println("<h2>Account Holder List</h2><hr>");
		try {
			//Class.forName("com.mysql.cj.jdbc.Driver");
			//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chetan? user=root&password=12345");
			DBConnector dbc=new DBConnector();
			con=dbc.getDbconnection();
			
			st=con.createStatement();
			rs=st.executeQuery("Select accnm from accounts;");
			out.println("<ul>");
			while(rs.next()) {
				out.println("<li>"+rs.getString("accnm"));
			}
			con.close();
		}
		catch(Exception e)
		{
			out.println(e);
		}
		
				
			
			}
		
		
		
		
	}


