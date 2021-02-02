package mybeans;
import java.sql.*;

public class AccountInfoGenerator 
{
private int acnumber;
private String acname;
private double balance;

public AccountInfoGenerator()
{
 acnumber=0;
 acname="Not Found";
 balance=0.00;
}

public String getAcname() {
	return acname;
}

public double getBalance() {
	return balance;
}

public void setAcnumber(int acnumber) {
	this.acnumber = acnumber;
	onAcnumberChanged();
}
private void onAcnumberChanged()
{
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	try 
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chetan? user=root&password=12345");
		pst=con.prepareStatement("select * from accounts where id=?;");
		pst.setInt(1, acnumber);
		rs=pst.executeQuery();
		if(rs.next())
		{
			acname=rs.getString("accnm");
			balance=rs.getDouble("balance");
		}
		con.close();
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	}
}

