package myentities;

public class Account 
{
private int id;
private String accnm;
private String acctype;
private String balance;

public Account()
{
	id=0;
	accnm="";
	acctype="";
	balance="";
}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getAccnm() {
	return accnm;
}

public void setAccnm(String accnm) {
	this.accnm = accnm;
}

public String getAcctype() {
	return acctype;
}

public void setAcctype(String acctype) {
	this.acctype = acctype;
}

public String getBalance() {
	return balance;
}

public void setBalance(String balance) {
	this.balance = balance;
}
}
