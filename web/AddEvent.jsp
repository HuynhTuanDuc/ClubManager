<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="Model.User" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Add Event</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
                margin: 0;
                background-color: #f4f4f9;
            }
            .club-container {
                width: 80%;
                max-width: 800px;
                padding: 20px;
                background-color: white;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }
            .club-container h1 {
                text-align: center;
                margin-bottom: 20px;
            }
            .form-group {
                display: flex;
                justify-content: space-between;
                gap: 10px;
                margin-bottom: 15px;
            }
            .club-section {
                flex: 1;
            }
            .club-section label {
                display: block;
                font-weight: bold;
                margin-bottom: 5px;
            }
            .club-section input, .club-section textarea, .club-section select {
                width: 100%;
                padding: 8px;
                border: 1px solid #ccc;
                border-radius: 4px;
                background-color: #f9f9f9;
            }
            .radio-group {
                display: flex;
                gap: 15px;
            }
            .radio-group label {
                display: flex;
                align-items: center;
                gap: 5px;
                font-weight: normal;
            }
            .error-message {
                color: red;
                font-size: 14px;
                display: none;
            }
            .submit-btn {
                width: 100%;
                padding: 10px;
                border: none;
                background-color: #28a745;
                color: white;
                font-size: 16px;
                border-radius: 4px;
                cursor: pointer;
            }
            .submit-btn:hover {
                background-color: #218838;
            }
            .form-group {
    display: flex;
    justify-content: space-between;
    gap: 30px; /* Tăng khoảng cách giữa các ô nhập */
    margin-bottom: 20px;
    flex-wrap: wrap; /* Nếu không đủ chỗ, các ô sẽ tự xuống dòng */
}

.club-section {
    flex: 1;
    min-width: 48%; /* Đảm bảo mỗi ô chiếm ít nhất 48% chiều rộng */
}

.club-section textarea, 
.club-section input, 
.club-section select {
    width: 100%; /* Đảm bảo ô nhập liệu không bị co nhỏ */
}
        </style>
    </head>
    <body>
        <div class="club-container">
            
         
            <h2><a href="listEvent" class="event-list-link">Event List</a></h2>
            <form action="addEvent" method="post">
                <div class="form-group">
                    <div class="club-section">
                        <label for="clubName">Club Name</label>
                        <select id="clubName" name="clubName" required>
                            <c:forEach var="club" items="${c}">
                                <option value="${club.clubID}">${club.clubName}</option>
                            </c:forEach>

                        </select>
                    </div>
                    <div class="club-section">
                        <label for="eventName">Event Name</label>
                        <input type="text" id="eventName" name="eventName" required>
                    </div>
                </div>
                <div class="form-group">
                    <div class="club-section">
                        <label for="clubDescription">Description</label>
                        <textarea id="clubDescription" name="clubDescription" required></textarea>
                    </div>
                    <div class="club-section">
                        <label for="eventTime">Time</label>
                        <input type="datetime-local" id="eventTime" name="eventTime" required>
                    </div>
                </div>
                <div class="form-group">
                    <div class="club-section">
                        <label>Event Type</label>
                        <div class="radio-group">
                            <label>
                                <input type="radio" name="eventType" value="true" required> Online
                            </label>
                            <label>
                                <input type="radio" name="eventType" value="false" required> Offline
                            </label>
                        </div>
                    </div>
                    <div class="club-section">
                        <label>Event Status</label>
                        <div class="radio-group">
                            <label>
                                <input type="radio" name="eventStatus" value="true" required> Active
                            </label>
                            <label>
                                <input type="radio" name="eventStatus" value="false" required> Inactive
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="club-section">
                        <label for="Images">Images (URL)</label>
                        <input type="text" id="Images" name="Images">
                    </div>
                    <div class="club-section">
                        <label for="contactInfo">Contact Information</label>
                        <input type="text" id="contactInfo" name="contactInfo" required>
                    </div>
                </div>
                <button type="submit" class="submit-btn">Add Event</button>
            </form>
        </div>
    </body>
</html>
