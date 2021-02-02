package mybeans;
import java.sql.*;

public class NewAccount 
{
private int id;
private String accnm;
private String acctype;
private String balance;
private boolean insertstatus;

public NewAccount()
{
	id=0;
	accnm="";
	acctype="";
	balance="";
	insertstatus=false;
}

public boolean isInsertstatus() {
	return insertstatus;
	//works like a getter for boolean values
}

public void setId(int id) {
	this.id = id;
}

public void setAccnm(String accnm) {
	this.accnm = accnm;
}

public void setAcctype(String acctype) {
	this.acctype = acctype;
}

public void setBalance(String balance) {
	this.balance = balance;
	insertAccount();
}

private void insertAccount()
{
	Connection con;
	PreparedStatement pst;
	try {
		//Bean using a bean for DB connectivity
		DBConnector dbc=new DBConnector();
		con=dbc.getDbconnection();
		
		pst=con.prepareStatement("insert into accounts values(?,?,?,?);");
		pst.setInt(1,id);
		pst.setString(2, accnm);
		pst.setString(3, acctype);
		pst.setString(4, balance);
		
		pst.executeUpdate();
		insertstatus=true;
		con.close();
		
		
	}
	catch(Exception e) 
	{
       System.out.println(e);
	}
}
}
