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
@WebServlet("/FDServlet")
public class FDServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String amount = request.getParameter("amount");
        String tenure = request.getParameter("tenure");
        String jdbcURL = "jdbc:mysql://localhost:3306/bank";
        String dbUser = "root";
        String dbPassword = "Shri@2000";
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
            String sql = "INSERT INTO fixed_deposits (name, email, amount, tenure) VALUES (?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, email);
            statement.setDouble(3, Double.parseDouble(amount));
            statement.setString(4, tenure);
            int rows = statement.executeUpdate();
            if (rows > 0) {
                out.println("<h1>FD Account Created Successfully!</h1>");
                out.println("<p>Thank you, " + name + ". Your Fixed Deposit has been created.</p>");
            } else {
                out.println("<h1>Error Creating FD Account.</h1>");
            }
            statement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h1>Error Occurred!</h1>");
            out.println("<p>" + e.getMessage() + "</p>");
        }
    }
}
