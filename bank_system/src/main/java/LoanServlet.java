import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/LoanServlet")
public class LoanServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get parameters from the form
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String loanType = request.getParameter("loanType");
        String amount = request.getParameter("amount");
        // Database connection details
        String jdbcURL = "jdbc:mysql://localhost:3306/bank";
        String dbUser = "root";
        String dbPassword = "Shri@2000";
        // Set response content type
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Establish the connection
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
            // SQL query to insert loan application details
            String sql = "INSERT INTO loan_applications (name, email, phone, loan_type, amount) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            // Set the parameters for the query
            statement.setString(1, name);
            statement.setString(2, email);
            statement.setString(3, phone);
            statement.setString(4, loanType);
            statement.setDouble(5, Double.parseDouble(amount));
            // Execute the query
            int rows = statement.executeUpdate();
            if (rows > 0) {
                out.println("<h1>Application Submitted Successfully!</h1>");
                out.println("<p>Thank you, " + name + "! We will review your application and contact you soon.</p>");
            } else {
                out.println("<h1>Error Submitting Application.</h1>");
            }
            // Close resources
            statement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h1>Error Occurred!</h1>");
            out.println("<p>" + e.getMessage() + "</p>");
        }
    }
}
