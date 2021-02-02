package mybeans;

public class Taxation
{
  private double yearlyincome;
  private String gender;
  private double incometax;
  
  public Taxation()
  {
	  yearlyincome=0.0;
	  gender="";
	  incometax=0.0;
  }

public double getIncometax() {
	return incometax;
}

public void setYearlyincome(double yearlyincome) {
	this.yearlyincome = yearlyincome;
}

public void setGender(String gender) {
	this.gender = gender;
	calcTax();
}

   private void calcTax()
    {
	    if(gender.equals("male"))
         {
	       if(yearlyincome>1200000)
		       incometax=yearlyincome*9/100;
	       else if(yearlyincome>700000)
	           incometax=yearlyincome*7/100;
	       else if(yearlyincome>400000)
		       incometax=yearlyincome*5/100;
	   else
		       incometax=0;
         }
	
	    if(gender.equals("female"))
         {
	        if(yearlyincome>1500000)
		      incometax=yearlyincome*9/100;
	        else if(yearlyincome>1000000)
	          incometax=yearlyincome*7/100;
	        else if(yearlyincome>750000)
		      incometax=yearlyincome*5/100;
	   else
		      incometax=0;
     }
}

}
