<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        /* Global Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
             background-image:url('images/contactbankimage.jpg');
  background-position:center;
  background-size:cover;
  background-repeat:no-repeat;
  background-attachment:fixed; 
        }

        h1 {
            text-align: left;
            color: #ffffff;
            margin-top: 20px;
            margin-left:30px;
        }

        .container {
            max-width: 600px;
            margin: 30px 0;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            position: relative;
            left: 20px; /* Align to the left side */
        }

        form label {
            font-weight: bold;
            color: #007bff;
        }

        form input[type="text"],
        form input[type="email"],
        form textarea {
            display: block;
            width: 90%;
            margin: 10px 0 20px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }

        form input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #3498db;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        form input[type="submit"]:hover {
            background-color: #2980b9;
        }

        /* Feedback Message Styles */
        .success {
            color: #007bff;
            font-weight: bold;
            text-align: left;
            margin-bottom: 20px;
        }

        .error {
            color: red;
            font-weight: bold;
            text-align: left;
            margin-bottom: 20px;
        }

        a {
            display: block;
            text-align: left;
            margin-top: 20px;
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
            color:#007bff;
        }
    </style>
</head>
<body>
    <h1>Contact Us</h1>

    <div class="container">
        <!-- Success Message -->
        <c:if test="${not empty successMessage}">
            <p class="success">${successMessage}</p>
        </c:if>

        <!-- Error Message -->
        <c:if test="${not empty errorMessage}">
            <p class="error">${errorMessage}</p>
        </c:if>

        <!-- Contact Form -->
        <form action="contactServlet" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" placeholder="Enter your name" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" placeholder="Enter your email" required>

            <label for="message">Message:</label>
            <textarea id="message" name="message" rows="5" placeholder="Write your message" required></textarea>

            <input type="submit" value="Submit">
        </form>

        <a href="index.jsp">Back to Home</a>
    </div>
</body>
</html>
