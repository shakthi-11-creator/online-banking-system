<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <style>
    body {
        background-color:#007bff;
  
    }
    h1, h2, h3 {
        color: #ffffff;
    }
    h1 {
        text-align: center;
        font-size: 36px;
        margin-top: 30px;
    }
    h2 {
        font-size: 28px;
        margin-top: 20px;
        color: #007bff;
    }
    h3 {
        font-size: 20px;
        margin-top: 20px;
        color: #007bff;
    }
    p {
        font-size: 18px;
        color: #555;
        line-height: 1.6;
        margin-bottom: 20px;
        padding: 0 20px;
    }
    ul {
        list-style-type: square;
        padding-left: 40px;
        margin-bottom: 20px;
    }
    ul li {
        font-size: 18px;
        color: #333;
        margin-bottom: 8px;
    }
    a {
        color: #3498db;
        text-decoration: none;
    }
    a:hover {
        text-decoration: underline;
    }
    section {
        max-width: 900px;
        margin: 0 auto;
        padding: 20px;
        background-color: white;
        border-radius: 8px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        border: 2px solid #3498db; /* Border around the section */
    }
    button {
        background-color: #3498db;
        color: white;
        border: none;
        padding: 10px 20px;
        font-size: 18px;
        cursor: pointer;
        border-radius: 5px;
        margin-top: 20px;
    }
    button:hover {
        background-color: #2980b9;
    }
    .marquee {
        font-size: 20px;
        color: #333;
        background-color: #f4f4f9;
        padding: 10px;
        border: 1px solid #3498db;
        width: 100%;
        box-sizing: border-box;
        overflow: hidden;
    }
    .marquee marquee {
        font-size: 20px;
        color: #3498db;
        padding: 10px;
    }
    </style>
</head>
<body>
    <h1>About Us</h1>
    <!-- Marquee Section -->
    <div class="marquee">
        <marquee>Welcome to our bank. We are committed to providing excellent customer service and financial solutions to meet your needs. Stay with us for a better banking experience!</marquee>
    </div>
    <section>
        <p>Welcome to our bank. We are dedicated to providing excellent financial services.</p>
        <h2>Our Mission</h2>
        <p>Our mission is to make banking easy, efficient, and accessible to everyone.</p>
        <h2>Our Vision</h2>
        <p>We aim to be the most trusted bank with a focus on customer service and innovation.</p>
        <h2>Our Values</h2>
        <ul>
            <li>Integrity</li>
            <li>Customer Focus</li>
            <li>Innovation</li>
            <li>Excellence</li>
        </ul>
        <h3>Contact Us</h3>
        <p>If you have any questions, feel free to <a href="contact.jsp">contact us</a>.</p>
        <br>
        <a href="index.jsp">Back to Home</a>
    </section>
</body>
</html>
