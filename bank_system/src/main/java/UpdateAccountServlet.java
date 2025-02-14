import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdateAccountServlet")
public class UpdateAccountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Parse parameters
            int accountId = Integer.parseInt(request.getParameter("accountId"));
            String accountHolderName = request.getParameter("accountHolderName");
            double balance = Double.parseDouble(request.getParameter("balance"));
            String jointAccount = request.getParameter("jointAccount");
            String jointAccountHolderName = request.getParameter("jointAccountHolderName");
            String createdAt = request.getParameter("createdAt");
            // Database connection
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "Shri@2000");
            String sql = "UPDATE accounts SET account_holder_name = ?, balance = ?, joint_account = ?, joint_account_holder_name = ?, created_at = ? WHERE account_id = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            // Set parameters
            ps.setString(1, accountHolderName);
            ps.setDouble(2, balance);
            ps.setString(3, jointAccount);
            ps.setString(4, jointAccount.equals("Yes") ? jointAccountHolderName : null);
            ps.setString(5, createdAt);
            ps.setInt(6, accountId);
            // Execute update
            int rowsUpdated = ps.executeUpdate();
            if (rowsUpdated > 0) {
                System.out.println("Account updated successfully.");
                response.sendRedirect("viewAccounts.jsp"); // Redirect to success page
            } else {
                System.out.println("No account found with the given ID.");
                response.getWriter().println("No account found with the given ID.");
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
            response.getWriter().println("Invalid input for account ID or balance.");
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred while updating the account.");
        }
    }
}
