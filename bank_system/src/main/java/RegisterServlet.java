import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import bank_system.DBConnection;

import java.io.IOException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","Shri@2000");
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			String email=request.getParameter("email");
			String query="INSERT INTO users(username, password, email) VALUES(?,?,?)";
			PreparedStatement stmt=con.prepareStatement(query);
			stmt.setString(1, username);
			stmt.setString(2, password);
			stmt.setString(3, email);
			int result=stmt.executeUpdate();
			if(result>0) {
				response.sendRedirect("login.jsp?message=Registration successful pls login");
			}else {
				response.sendRedirect("register.jsp?error=Registration failed");
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
}
		