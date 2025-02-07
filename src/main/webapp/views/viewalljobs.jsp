<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="ab" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="java.util.List" %>
<%@ page import="com.vani.JobApp.model.JobPost" %>
<%@ page import="com.vani.JobApp.repo.JobRepo" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Post List</title>

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
<ab:set var="jobPosts" value="${jobPosts}" />
    <div >
        <h2 >Job Post List</h2>
        <div class="container">
            <ab:forEach var="jobPost" items="${jobPosts}">
                <div class="boxed-div">
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
                            <ab:forEach var="tech" items="${jobPost.postTechStack}">
                                <li>${tech}</li>
                            </ab:forEach>
                        </ul>
                    </p>
                </div>
            </ab:forEach>
        </div>
    </div>
</body>
</html>