<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.vani.JobApp.model.JobPost" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Job Post Details</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <link rel="stylesheet" type="text/css" href="viewalljobs.css">
</head>
<body>
<!-- Navbar -->
    <nav class="navbar">
        <div class="navbar-left">
            <h1>Shivani Job Portal Web App </h1>
        </div>
        <div class="navbar-right">
            <a href="home">Home</a>
            <a href="viewalljobs">All Jobs</a>
            <a href="#">Contact</a>
        </div>
    </nav>

    <div class="boxed-div">
        <h2 >Job Post Details</h2>
        <div >
            <h5 >${jobPost.postProfile}</h5>
             <p >
                <strong>Job-Id: </strong>
                ${jobPost.postId}
            </p>
            <p >
                <strong>Description:</strong>
                ${jobPost.postDesc}
            </p>
            <p >
                <strong>Experience Required:</strong>
                ${jobPost.reqExperience} years
            </p>
            <p >
                <strong>Tech Stack Required:</strong>
                <ul>
                     <c:forEach var="tech" items="${jobPost.postTechStack}">
                        <li>${tech}</li>
                     </c:forEach>
                </ul>
            </p>
        </div>
    </div>
</body>
</html>