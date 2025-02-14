import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/CreateAccountServlet")
public class CreateAccountServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get input parameters from the form
        String accountIdStr = request.getParameter("accountId");
        String accountHolderName = request.getParameter("accountHolderName");
        String initialDepositStr = request.getParameter("initialDeposit");
        String jointAccount = request.getParameter("jointAccount");
        String jointAccountHolderName = request.getParameter("jointAccountHolderName");
        String createdAt = request.getParameter("createdAt");
        try {
            // Validate required fields
            if (accountIdStr == null || accountHolderName == null || initialDepositStr == null || createdAt == null) {
                throw new IllegalArgumentException("All required fields must be filled.");
            }
            // Parse numeric inputs
            int accountId = Integer.parseInt(accountIdStr);
            double initialDeposit = Double.parseDouble(initialDepositStr);
            // Validate joint account holder name for joint accounts
            if ("Yes".equals(jointAccount) && (jointAccountHolderName == null || jointAccountHolderName.isEmpty())) {
                throw new IllegalArgumentException("Joint Account Holder Name must be provided if this is a joint account.");
            }
            // Establish database connection
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "Shri@2000");
            // SQL query to insert data into the accounts table
            String sql = "INSERT INTO accounts (account_id, account_holder_name, balance, joint_account, joint_account_holder_name, created_at) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, accountId);
            ps.setString(2, accountHolderName);
            ps.setDouble(3, initialDeposit);
            ps.setString(4, jointAccount);
            ps.setString(5, "Yes".equals(jointAccount) ? jointAccountHolderName : null); // Set joint account holder name or null
            ps.setString(6, createdAt);
            // Execute the query
            int rowsInserted = ps.executeUpdate();
            if (rowsInserted > 0) {
                // Redirect to view accounts page on success
                response.sendRedirect("viewAccounts.jsp");
            } else {
                // If insertion fails, forward error message
                request.setAttribute("errorMessage", "Failed to create the account. Please try again.");
                request.getRequestDispatcher("createaccount.jsp").forward(request, response);
            }
        } catch (NumberFormatException e) {
            // Handle invalid number format for accountId or initialDeposit
            request.setAttribute("errorMessage", "Invalid input: Account ID and Initial Deposit must be valid numbers.");
            request.getRequestDispatcher("createAccount.jsp").forward(request, response);
        } catch (IllegalArgumentException e) {
            // Handle missing required fields or invalid joint account holder name
            request.setAttribute("errorMessage", e.getMessage());
            request.getRequestDispatcher("createAccount.jsp").forward(request, response);
        } catch (Exception e) {
            // Handle all other exceptions (e.g., database errors)
            e.printStackTrace();
            request.setAttribute("errorMessage", "An error occurred while creating the account: " + e.getMessage());
            request.getRequestDispatcher("createAccount.jsp").forward(request, response);
        }
    }
}
