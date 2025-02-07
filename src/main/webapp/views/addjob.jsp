<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

	<!DOCTYPE html>
	<html lang="en">
	<head>
        <meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="form.css">
        <link rel="stylesheet" href="styles.css">
	    <title>Shivani Job Portal</title
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
        <div class="form-container">
        <h2>Contact Us</h2>
        <form:form action="handleForm" method="post" modelAttribute="jobPost">
            <label for="postId">Post ID</label>
            <input type="text"  id="postId" name="postId" required>

            <label for="postProfile" >Post Profile</label>
            <input type="text"  id="postProfile" name="postProfile" required>

            <label for="postDesc" >Post Description</label>
            <textarea  id="postDesc" name="postDesc" rows="2" required></textarea>

           <label for="reqExperience" >Required Experience</label>
           <input type="number"  id="reqExperience" name="reqExperience" required>

            <label for="postTechStack" >Tech Stack</label>
            <select multiple  id="postTechStack"
                name="postTechStack" required>
                <!-- Add options dynamically from your backend or provide static options -->
                <option value="Java">Java</option>
                <option value="JavaScript">JavaScript</option>
                <!-- Additional options -->
                <option value="Swift">Swift</option>
                <option value="TypeScript">TypeScript</option>
                <option value="Go">Go</option>
                <option value="Kotlin">Kotlin</option>
                <option value="Rust">Rust</option>
                <option value="PHP">PHP</option>
                <option value="HTML5">HTML5</option>
                <option value="CSS3">CSS3</option>
                <option value="GraphQL">GraphQL</option>
                <option value="Raspberry Pi">Raspberry Pi</option>
                <option value="Arduino">Arduino</option>
                <option value="IoT (Internet of Things)">IoT (Internet
                    of Things)</option>
                <option value="Apache Kafka">Apache Kafka</option>
                <option value="Elasticsearch">Elasticsearch</option>
                <option value="Unity">Unity</option>
                <option value="Game Development">Game Development</option>
                <option value="Vue.js">Vue.js</option>
                <option value="Angular">Angular</option>
                <option value="React Native">React Native</option>
                <option value="Flutter">Flutter</option>
                <option value="Node.js">Node.js</option>
                <option value="Express.js">Express.js</option>
                <option value="Django">Django</option>
                <option value="Flask">Flask</option>
                <option value="Ruby on Rails">Ruby on Rails</option>
                <option value="Laravel">Laravel</option>
                <option value="TensorFlow">TensorFlow</option>
                <option value="PyTorch">PyTorch</option>
                <option value="Kubernetes">Kubernetes</option>
                <option value="Docker">Docker</option>
                <option value="Jenkins">Jenkins</option>
                <option value="AWS (Amazon Web Services)">AWS (Amazon
                    Web Services)</option>
                <option value="Azure">Azure</option>
                <option value="Google Cloud">Google Cloud</option>
                <option value="DevOps">DevOps</option>
                <option value="Blockchain">Blockchain</option>
                <option value="Machine Learning">Machine Learning</option>
                <option value="Artificial Intelligence">Artificial
                    Intelligence</option>
                <option value="Cybersecurity">Cybersecurity</option>
                <option
                    value="CISSP (Certified Information Systems Security Professional)">CISSP
                    (Certified Information Systems Security Professional)</option>
                <option value="CompTIA Security+">CompTIA Security+</option>
                <option value="Certified Ethical Hacker (CEH)">Certified
                    Ethical Hacker (CEH)</option>
                <option value="Scrum">Scrum</option>
                <option value="Agile">Agile</option>
                <option value="Kanban">Kanban</option>
                <option value="GraphQL">GraphQL</option>
                <option value="Vue.js">Vue.js</option>
                <option value="Angular">Angular</option>
                <option value="React Native">React Native</option>
                <option value="Flutter">Flutter</option>
                <option value="Node.js">Node.js</option>
                <option value="Express.js">Express.js</option>
                <option value="Django">Django</option>
                <option value="Flask">Flask</option>
                <option value="Ruby on Rails">Ruby on Rails</option>
                <option value="Laravel">Laravel</option>
                <option value="TensorFlow">TensorFlow</option>
                <option value="PyTorch">PyTorch</option>
                <option value="Kubernetes">Kubernetes</option>
                <option value="Docker">Docker</option>
                <option value="Jenkins">Jenkins</option>
                <option value="AWS (Amazon Web Services)">AWS (Amazon
                    Web Services)</option>
                <option value="Azure">Azure</option>
                <option value="Google Cloud">Google Cloud</option>
                <option value="DevOps">DevOps</option>
                <option value="Blockchain">Blockchain</option>
                <option value="Machine Learning">Machine Learning</option>
                <option value="Artificial Intelligence">Artificial
                    Intelligence</option>
                <option value="Cybersecurity">Cybersecurity</option>
                <option
                    value="CISSP (Certified Information Systems Security Professional)">CISSP
                    (Certified Information Systems Security Professional)</option>
                <option value="CompTIA Security+">CompTIA Security+</option>
                <option value="Certified Ethical Hacker (CEH)">Certified
                    Ethical Hacker (CEH)</option>
                <option value="Scrum">Scrum</option>
                <option value="Agile">Agile</option>
                <option value="Kanban">Kanban</option>
                <option value="GraphQL">GraphQL</option>
                <option value="Raspberry Pi">Raspberry Pi</option>
                <option value="Arduino">Arduino</option>
                <option value="IoT (Internet of Things)">IoT (Internet
                    of Things)</option>
                <option value="Apache Kafka">Apache Kafka</option>
                <option value="Elasticsearch">Elasticsearch</option>
                <option value="Unity">Unity</option>
                <option value="Game Development">Game Development</option>
                <option value="Swift">Swift</option>
                <option value="TypeScript">TypeScript</option>
                <option value="Go">Go</option>
                <option value="Kotlin">Kotlin</option>
                <option value="Rust">Rust</option>
                <option value="PHP">PHP</option>
                <option value="HTML5">HTML5</option>
                <option value="CSS3">CSS3</option>
                <option value="GraphQL">GraphQL</option>
                <option value="Raspberry Pi">Raspberry Pi</option>
                <option value="Arduino">Arduino</option>
                <option value="IoT (Internet of Things)">IoT (Internet
                    of Things)</option>
                <option value="Apache Kafka">Apache Kafka</option>
                <option value="Elasticsearch">Elasticsearch</option>
                <option value="Unity">Unity</option>
                <option value="Game Development">Game Development</option>
            </select>
            <button type="submit">Submit</button>
        </form:form>
    </div>

	</body>
	</html>