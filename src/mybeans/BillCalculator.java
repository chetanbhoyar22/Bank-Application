package mybeans;

public class BillCalculator 
{
//properties
	private double amount;
	private double netbill;
	//constructor
	public BillCalculator()
	{
		amount=0.0;
		netbill=0.0;
	}
	//getter
	public double getNetbill() {
		return netbill;
		
	}
	//setter
	public void setAmount(double amount) {
		this.amount = amount;
		onAmountChanged();
	}
	
	//event function
	private void onAmountChanged()
	{
		double discount;
		if(amount>10000)
			discount=amount*13/100;
		else
			discount=amount*9/100;
		netbill=amount-discount;
	}
}
