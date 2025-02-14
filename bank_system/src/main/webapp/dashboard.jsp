<!DOCTYPE html>
<html>
<head>
    <title>Banking Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }
        .navbar {
            background-color: #007bff;
            color: white;
            padding: 1rem;
            text-align: center;
        }
        .navbar h2 {
            margin: 0;
        }
        .container {
            padding: 2rem;
            text-align: center; /* Center content inside the container */
        }
        .button {
            display: block; /* Make buttons block elements for better alignment */
            background-color: #007bff;
            color: white;
            padding: 0.8rem 1.5rem;
            margin: 1rem auto; /* Center the buttons horizontally */
            text-decoration: none;
            border-radius: 5px;
            font-size: 1rem;
            width: 200px; /* Set a fixed width for uniformity */
        }
        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <h2>Welcome to Your Banking DashBoard</h2>
    </div>
    <div class="container">
        <h3>Select an Action</h3>
        <a href="createAccount.jsp" class="button">Create Account</a>
        <a href="viewAccounts.jsp" class="button">Already Have Account</a>
        <a href="updateAccounts.jsp" class="button">Update Account</a>
    </div>
</body>
</html>
