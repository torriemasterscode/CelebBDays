package database;

import java.sql.Connection;

public class Account {
	
	private Connection conn;
	
	public Account(Connection conn) {
		this.conn = conn;
		
	}
	
	public boolean login(String email, String password) {
		return true;
	}
}
