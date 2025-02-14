<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            background-image: url('images/registerbank1.jpg');
            background-position: center;
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        .navbar {
            padding: 1rem;
        }
        .navbar-brand {
            font-size: 1.5rem;
            font-weight: bold;
            color: #ffffff !important; 
        }
        .navbar-brand img {
            margin-right: 10px;
            border-radius: 50%; 
        }

        h2 {
            text-align: center;
      position:relative;
      right:550px;
            margin-top: 20px;
            font-weight: bold;
            
        }
        form {
            max-width: 400px;
            margin: 30px auto;
            padding: 20px;
            background-color: #ffffff;
            border: 1px solid #dee2e6;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            position:relative;
      right:400px; 
        }
        form input[type="text"],
        form input[type="password"] {
            display: block;
            width: 100%;
            margin-bottom: 15px;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ced4da;
            box-shadow: none;
        }
        form input[type="text"]:focus,
        form input[type="password"]:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }
        form input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        form input[type="submit"]:hover {
            background-color: #0056b3;
        }
        a {
            display: block;
            text-align: center;
            margin-top: 10px;
            color: #007bff;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        p[style='color:red'] {
            text-align: center;
            font-weight: bold;
        }
    </style>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style1.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <img src="images/bankicon.png" alt="Logo" width="40" height="40">
                SmartTechBank
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                </ul>
            </div>
        </div>
    </nav>
    <h2>Login</h2>
    <form action="LoginServlet" method="post">
        <label for="username">UserName:</label>
        <input type="text" id="username" name="username" required><br><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>

        <input type="submit" value="Login">
        <p><a href="register.jsp">Register</a></p>
    </form>
    <%
        String error = request.getParameter("error");
        if (error != null) {
            out.println("<p style='color:red; text-align:center; font-weight:bold;'>" + error + "</p>");
        }
    %>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
