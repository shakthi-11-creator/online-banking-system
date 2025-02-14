import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/contactServlet")
public class ContactServlet extends HttpServlet {

    // JDBC configuration constants
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/bank";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Shri@2000";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Set response type to HTML
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Retrieve form parameters
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        // Validate form input
        if (name == null || email == null || message == null || 
            name.trim().isEmpty() || email.trim().isEmpty() || message.trim().isEmpty()) {
            out.println("<h3 style='color:red;'>All fields are required!</h3>");
            return;
        }

        // Ensure email is valid
        if (!email.matches("^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\\.[a-zA-Z0-9-.]+$")) {
            out.println("<h3 style='color:red;'>Invalid email format!</h3>");
            return;
        }

        // Database connection variables
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish database connection
            connection = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD);

            // SQL query to insert contact details
            String query = "INSERT INTO contacts (name, email, message) VALUES (?, ?, ?)";
            preparedStatement = connection.prepareStatement(query);

            // Set query parameters
            preparedStatement.setString(1, name.trim());
            preparedStatement.setString(2, email.trim());
            preparedStatement.setString(3, message.trim());

            // Execute the query
            int rowsInserted = preparedStatement.executeUpdate();

            // Check if insertion was successful
            if (rowsInserted > 0) {
                out.println("<h3 style='color:green;'>Your message has been submitted successfully!</h3>");
            } else {
                out.println("<h3 style='color:red;'>An error occurred. Please try again later.</h3>");
            }
        } catch (ClassNotFoundException e) {
            out.println("<h3 style='color:red;'>Database driver not found!</h3>");
            e.printStackTrace();
        } catch (SQLException e) {
            out.println("<h3 style='color:red;'>A database error occurred. Please try again later.</h3>");
            e.printStackTrace();
        } catch (Exception e) {
            out.println("<h3 style='color:red;'>An unexpected error occurred. Please try again later.</h3>");
            e.printStackTrace();
        } finally {
            // Close database resources
            try {
                if (preparedStatement != null) preparedStatement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
