<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job</title>
    <link rel="stylesheet" href="styles.css">
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

    <!-- Main Container -->
    <div class="main-container">
        <div class="inner-container">
            <div class="content">
                <h2>View AllJobs</h2>
                <form action ="/viewalljobs" method="get">
                <button>View</button>
                </form>
            </div>
        </div>
        <div class="inner-container">
            <div class="content">
                <h2>Add Job</h2>
                <form action="/addjob" method="get">
                <button>ADD</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
