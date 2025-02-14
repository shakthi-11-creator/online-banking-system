<%@ page import="java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Accounts</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #007bff;
            margin: 0;
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: white;
            margin-bottom: 20px;
        }

        .message, .error {
            font-weight: bold;
            padding: 10px;
            text-align: center;
            margin-bottom: 20px;
            border-radius: 4px;
        }

        .message {
            color: green;
            background-color: #d4edda;
        }

        .error {
            color: red;
            background-color: #f8d7da;
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
            padding: 5px 10px;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: #f1f1f1;
        }

        td a {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <h2>All Accounts</h2>
    
    <!-- Display success or error messages -->
    <%
        String message = request.getParameter("message");
        String error = request.getParameter("error");
        if (message != null) {
    %>
        <div class="message"><%= message %></div>
    <%
        }
        if (error != null) {
    %>
        <div class="error"><%= error %></div>
    <%
        }
    %>

    <table>
        <thead>
            <tr>
                <th>Account ID</th>
                <th>Account Holder Name</th>
                <th>Balance</th>
                <th>Joint Account</th>
                <th>Joint Account Holder</th>
                <th>Created At</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <%
                // Database connection and fetching accounts from the database
                Connection con = null;
                PreparedStatement ps = null;
                ResultSet rs = null;
                try {
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "Shri@2000");
                    String sql = "SELECT * FROM accounts";
                    ps = con.prepareStatement(sql);
                    rs = ps.executeQuery();

                    // Iterate through each account record
                    while (rs.next()) {
            %>
            <tr>
                <td><%= rs.getInt("account_id") %></td>
                <td><%= rs.getString("account_holder_name") %></td>
                <td><%= rs.getDouble("balance") %></td>
                <td><%= rs.getString("joint_account") %></td>
                <td><%= rs.getString("joint_account_holder_name") %></td>
                <td><%= rs.getTimestamp("created_at") %></td>
                <td>
                    <!-- Pass parameters for update and delete actions -->
                    <a href="updateAccounts.jsp?accountId=<%= rs.getInt("account_id") %>&accountHolderName=<%= rs.getString("account_holder_name") %>&balance=<%= rs.getDouble("balance") %>&jointAccount=<%= rs.getString("joint_account") %>&jointAccountHolderName=<%= rs.getString("joint_account_holder_name") %>&createdAt=<%= rs.getTimestamp("created_at") %>">Update</a> |
                    <a href="DeleteAccountServlet?id=<%= rs.getInt("account_id") %>" onclick="return confirm('Are you sure you want to delete this account?');">Delete</a> |
                    <!-- Added new action links -->
                    <a href="ViewBalanceServlet?id=<%= rs.getInt("account_id") %>">View Balance</a>
                </td>
            </tr>
            <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
            %>
            <tr>
                <td colspan="7">Error loading account data.</td>
            </tr>
            <%
                } finally {
                    // Close database resources
                    try {
                        if (rs != null) rs.close();
                        if (ps != null) ps.close();
                        if (con != null) con.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            %>
        </tbody>
    </table>
</body>
</html>
