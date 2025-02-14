package bank_system;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class DBConnection {

	public static void main(String[] args) throws ClassNotFoundException, SQLException{	
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","Shri@2000");
		System.out.println("Database is Connected");

	}

	

}
