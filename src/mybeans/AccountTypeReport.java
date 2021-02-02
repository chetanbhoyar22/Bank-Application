package mybeans;
import java.util.*;
import myentities.Account;
import java.sql.*;

public class AccountTypeReport 
{
private String acctype;
private ArrayList<Account> list;

public AccountTypeReport()
{
	acctype="";
	list=new ArrayList<Account>();
}

public ArrayList<Account> getList() {
	return list;
}

public void setAcctype(String acctype) {
	this.acctype = acctype;
	retriveData();
}
private void retriveData()
{
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	
	Account ac;
	
	try {
		DBConnector dbc=new DBConnector();
		con=dbc.getDbconnection();
		
		pst=con.prepareStatement("select * from accounts where acctype=?;");
		pst.setString(1, acctype);
		rs=pst.executeQuery();
		
		while(rs.next())
		{
			ac=new Account();
			
			ac.setId(rs.getInt("id"));
			ac.setAccnm(rs.getString("accnm"));
			ac.setAcctype(rs.getString("acctype"));
			ac.setBalance(rs.getString("balance"));
			
			list.add(ac);
			
		}
		con.close();
	}
	catch(Exception e)
	        {
	             System.out.println("e");	
	        }
  }
}
