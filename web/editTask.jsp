
<jsp:include page="header.jsp"></jsp:include>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.TaskDAO, Model.Task1" %>

<%
    int taskID = Integer.parseInt(request.getParameter("taskID"));
    TaskDAO taskDAO = new TaskDAO();
    Task1 task = taskDAO.getTaskByID(taskID);
%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Task</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            text-align: center;
            width: 100%;
        }
        body {
    font-family: Arial, sans-serif;
    background-color: #f8f9fa;
    margin: 0;
    padding: 0;
}
        .container {
            width: 50%;
            background: rgba(0, 0, 0, 0.7);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin: auto;
            text-align: left;
        }
        h2 {
            color: #333;
            text-align: center;
        }
        .form-group {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }
        .form-group label {
            width: 30%;
            font-weight: bold;
        }
        .form-group input, .form-group textarea, .form-group select {
            width: 70%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            background-color: #007bff;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
            width: 100%;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
      <div class="fh5co-page-title" style="background-image: url(images/slide_6.jpg);">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 animate-box">
                            <h1><span class="colored">Task: <%= task.getTitle() %></span> List</h1>
                        </div>
                    </div>
                </div>
            </div>
                        <div class = "all_content">
    <div class="content" style="padding-top: 130px; padding-bottom: 50px; margin-left: 50px;">
        
    <div class="container">
        <h2>Edit Task</h2>
        <form action="updateTaskServlet" method="post">
            <div class="form-group">
                <label>Task ID</label>
                <input type="text" name="taskID" value="<%= task.getTaskID() %>" readonly>
            </div>
            
            
            <div class="form-group">
                <label>Title:</label>
                <input type="text" name="title" value="<%= task.getTitle() %>" required>
            </div>
            
            <div class="form-group">
                <label>Club ID:</label>
                <input type="text" name="clubID" value="<%= task.getClubID()%>" readonly>
            </div>
            
            <div class="form-group">
                <label>Event ID:</label>
                <input type="text" name="eventID" value="<%= task.getEventID() %>"  >
            </div>
            
            <div class="form-group">
                <label>Deadline:</label>
                <input type="date" name="deadline" value="<%= task.getDeadline() %>" required>
            </div>
            
            <div class="form-group">
                <label>Status:</label>
                <select name="status" required>
                    <option value="Pending" <%= task.getStatus().equals("Pending") ? "selected" : "" %>>Pending</option>
                    <option value="To Do" <%= task.getStatus().equals("To Do") ? "selected" : "" %>>To Do</option>
                    <option value="Doing" <%= task.getStatus().equals("Doing") ? "selected" : "" %>>Doing</option>
                    <option value="Closed" <%= task.getStatus().equals("Closed") ? "selected" : "" %>>Closed</option>
                    <option value="Cancelled" <%= task.getStatus().equals("Cancelled") ? "selected" : "" %>>Cancelled</option>
                </select>
            </div>
            
            <div class="form-group">
                <label>Priority:</label>
                <select name="priority" required>
                    <option value="Low" <%= task.getPriority().equals("Low") ? "selected" : "" %>>Low</option>
                    <option value="Medium" <%= task.getPriority().equals("Medium") ? "selected" : "" %>>Medium</option>
                    <option value="High" <%= task.getPriority().equals("High") ? "selected" : "" %>>High</option>
                </select>
            </div>
            
            <div class="form-group">
                <label>Description:</label>
                <textarea name="description" style="height: 100px;"required maxlength="500" minlength="5"><%= task.getDescription() %></textarea>
            </div>
            
            <button type="submit">Update Task</button>
        </form>
    </div>
    </div>


            <div class="fh5co-cta" style="background-image: url(images/slide_4.jpg);">
            <div class="overlay"></div>
            <div class="container">
                <div class="col-md-12 text-center animate-box">
                    <h3>We Try To Update The Site Everyday</h3>
                    <p><a href="#" class="btn btn-primary btn-outline with-arrow">Get started now! <i class="icon-arrow-right"></i></a></p>
                </div>
            </div>
        </div>

      <jsp:include page="footer.jsp" />




        <!-- jQuery -->
        <script src="js/jquery.min.js"></script>
        <!-- jQuery Easing -->
        <script src="js/jquery.easing.1.3.js"></script>
        <!-- Bootstrap -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Waypoints -->
        <script src="js/jquery.waypoints.min.js"></script>
        <!-- Flexslider -->
        <script src="js/jquery.flexslider-min.js"></script>

        <!-- MAIN JS -->
        <script src="js/main.js"></script>
</body>
<meta charset="UTF-8">
        <title>Finance Detail</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
        <meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
        <meta name="author" content="FreeHTML5.co" />

        <!-- Facebook and Twitter integration -->
        <meta property="og:title" content=""/>
        <meta property="og:image" content=""/>
        <meta property="og:url" content=""/>
        <meta property="og:site_name" content=""/>
        <meta property="og:description" content=""/>
        <meta name="twitter:title" content="" />
        <meta name="twitter:image" content="" />
        <meta name="twitter:url" content="" />
        <meta name="twitter:card" content="" />

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico">
        <link href='https://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
        <!-- <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,400italic,700' rel='stylesheet' type='text/css'> -->

        <!-- Animate.css -->
        <link rel="stylesheet" href="css/animate.css">
        <!-- Icomoon Icon Fonts-->
        <link rel="stylesheet" href="css/icomoon.css">
        <!-- Bootstrap  -->
        <link rel="stylesheet" href="css/bootstrap.css">
        <!-- Flexslider  -->
        <link rel="stylesheet" href="css/flexslider.css">
        <!-- Theme style  -->
        <link rel="stylesheet" href="css/style.css">

        <!-- Modernizr JS -->
        <script src="js/modernizr-2.6.2.min.js"></script>
        <!-- FOR IE9 below -->
        <!--[if lt IE 9]>
        <script src="js/respond.min.js"></script>
        <![endif]-->
</html>