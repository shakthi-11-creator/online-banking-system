

import bank_system.DBConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/ViewBalanceServlet")
public class ViewBalanceServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int accountId = Integer.parseInt(request.getParameter("id"));
        try{
        	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "Shri@2000");
            String sql = "SELECT balance FROM accounts WHERE account_id = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, accountId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                double balance = rs.getDouble("balance");
                response.getWriter().println("Current Balance: " + balance);
            } else {
                response.getWriter().println("Account Not Found");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error Fetching Balance");
        }
    }
}
