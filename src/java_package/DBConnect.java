package java_package;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBConnect {
	
	private Connection con; //var used to connect to mysql database
	private Statement st; //var used to execute queries on table
	private ResultSet rs; //var used to hold all results from table queries
	
	public DBConnect(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/celeb_bdays", "root", "Fusion2016!");
			//st con.createStatement();
			
		}catch(Exception ex){
			System.out.println("Error: + ex");
		}
		
		//public void getData(){
			//try{
				//String query "select * from celeb_bdays_table";
				//rs = st.executeQuery(query);
				//System.out.println("Records from database");
				
				//while(rs.next()){
					//String Zodiac_Sign = rs.getString("Zodiac_Sign");
					//String Celebrity_Name = rs.getString("Celebrity_Name");
					//System.out.println("Zodiac Sign: " + Zodiac_Sign + "    " + "Celebrity Name: " + Celebrity_Name);
				//}
				
			//}catch(Exception ex){
				//System.out.println(ex);
			//}
			
		//}
		
	}

	//private void createStatement() {
		// TODO Auto-generated method stub
		
	//}

}
