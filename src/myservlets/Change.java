package myservlets;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Change
 */
@WebServlet("/Change")
public class Change extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Change() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		Connection con;
		PreparedStatement pst;
		
		String id,curps,newps,conps;
		id=request.getParameter("uid");
		curps=request.getParameter("curps");
		newps=request.getParameter("newps");
		conps=request.getParameter("conps");
		
		if(newps.equals(conps))
		{
			try
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chetan?user=root&password=12345");
				pst=con.prepareStatement("update users set pswd=? where userid=? and pswd=?;");
				pst.setString(1, newps);
				pst.setString(2,id);
				pst.setString(3,curps);
				int cnt=pst.executeUpdate();
				if(cnt==0)
					out.println("userid/current password incorrect");
				else
					out.println("password changed successfully");
				
				con.close();
				
			}
			catch(Exception e)
			{
				out.println(e);
			}
		}
		else
		{
			out.println("New passwords mismatched");

	}
}
}
