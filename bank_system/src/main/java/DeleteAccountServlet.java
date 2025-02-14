import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/DeleteAccountServlet")
public class DeleteAccountServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Parse the account ID from the request
            int accountId = Integer.parseInt(request.getParameter("id"));
            // Use try-with-resources for database connection
            try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "Shri@2000");
                 PreparedStatement ps = con.prepareStatement("DELETE FROM accounts WHERE account_id = ?")) {
                // Set the account ID in the SQL query
                ps.setInt(1, accountId);
                // Execute the delete query
                int rowsAffected = ps.executeUpdate();
                if (rowsAffected > 0) {
                    // Redirect with a success message
                    response.sendRedirect("viewAccounts.jsp?message=Account Deleted Successfully");
                } else {
                    // Redirect with an error message if the account doesn't exist
                    response.sendRedirect("viewAccounts.jsp?error=Account Not Found");
                }
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
            // Redirect with an error message for invalid account ID
            response.sendRedirect("viewAccounts.jsp?error=Invalid Account ID");
        } catch (Exception e) {
            e.printStackTrace();
            // Redirect with a general error message
            response.sendRedirect("viewAccounts.jsp?error=Error Deleting Account");
        }
    }
}
