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


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","Shri@2000");
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			String query="SELECT* FROM users WHERE username = ? AND password = ? ";
			PreparedStatement stmt=con.prepareStatement(query);
			stmt.setString(1,username);
			stmt.setString(2, password);
			ResultSet rs=stmt.executeQuery();
			if(rs.next()) {
				 response.setContentType("text/html");
                 PrintWriter out = response.getWriter();
                 out.println("<script type=\"text/javascript\">");
                 out.println("alert('Login Successful');");
                 out.println("window.location.href = 'index.jsp';");
                 out.println("</script>");
			}else {
				//Invalid credentials
				response.sendRedirect("login.jsp?error=Invalid credentials");
			}
			
			}catch(SQLException e) {
				e.printStackTrace();
			}
	}
}