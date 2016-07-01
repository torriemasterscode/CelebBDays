package java_package;

public class FamousBdaysArrays {
	
	public static enum Month {
	    January (1),
	    February (2),
	    March (3),
	    April (4),
	    May (5),
	    June (6),
	    July (7),
	    August (8),
	    September (9),
	    October (10),
	    November (11),
	    December (12);
		
		private int intMonth;
		
		private Month(int intMonth){
			this.intMonth = intMonth;
		}
	}
	    
	public static void main(String[] args) {
		for(Month cName : Month.values()) {
			System.out.println("Print month ints: " + cName.intMonth + " - Print month names: " + cName);
		}
	}	
			
			//public Month ToInt(birthMonth)
			//{
			 //   return (int)Enum.Parse(typeof(Month), Input, true));
		//	}
	

}
