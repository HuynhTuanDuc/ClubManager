<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="Model.Club"%>
<%@page import="DAO.ClubDAO"%>

<!DOCTYPE html>
<html>
<head>
    <title>Club Detail</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .form-container {
            width: 700px;
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-row {
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px;
        }
        .col_2_3 { width: 65%; }
        .col_1_3 { width: 30%; display: flex; justify-content: center; }
        .image-container img {
            width: 100%; max-width: 200px; height: 160px;
            object-fit: cover; border-radius: 10px; border: 1px solid #ddd;
        }
        label { font-weight: bold; display: block; margin-bottom: 5px; }
        input[type="text"], textarea {
            width: 100%; padding: 8px; border-radius: 5px; border: 1px solid #ccc;
        }
        textarea { height: 100px; }
        .choose1_2 { display: flex; align-items: center; gap: 10px; }
        button {
            width: 100%; padding: 10px; border: none;
            border-radius: 5px; background-color: #007bff;
            color: white; font-size: 16px; cursor: pointer; margin-top: 10px;
        }
        .category-leader { display:flex; gap: 15%; }
        .category-leader div { width: 50%; }
    </style>
</head>
<body>
    <c:if test="${not empty club}">
        <div class="form-container">
            <form action="UpdateClubServlet" method="Post" enctype="multipart/form-data">
                
                <h2>Club Details</h2>
               
                <div class="form-row">
                    <div class="col_2_3">
                        
                        <label>ClubID*</label>
                        <input type="text" name="clubID" value="${club.clubID}" required>
                        
                        <label>Name*</label>
                        <input type="text" name="name" value="${club.clubName}" required>
                        <div class="category-leader">
                            <div>
                                <label>Category*</label>
                                <input type="text" name="category" value="${club.category}" required>
                            </div>
                            <div>
                                <label>Leader*</label>
                                <input type="text" name="leader" value="${club.clubLeader}" required>
                            </div>
                        </div>
                    </div>
                    <div class="col_1_3">
                        <div class="image-container">
                            <img src="${club.imgURL}" alt="Club Image">
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="choose1_2">
                        <input type="radio" name="isPublic" value="Yes" ${club.isPublic eq 'Yes' ? 'checked' : ''}>
                        <label>Public</label>
                        <input type="radio" name="isPublic" value="No" ${club.isPublic eq 'No' ? 'checked' : ''}>
                        <label>Private</label>
                    </div>
                </div>
                <div class="choose1_2">
                    <div class="radio-option">
                        <input type="radio" name="imageSource" value="url" id="imageURL" checked onclick="toggleImageInput()">
                        <label for="imageURL">Image URL</label>
                    </div>
                    <div class="radio-option">
                        <input type="radio" name="imageSource" value="upload" id="imageUpload" onclick="toggleImageInput()">
                        <label for="imageUpload">Upload Image</label>
                    </div>
                </div>
                <input type="text" id="imageURLInput" name="imgURL" value="${club.imgURL}" style="display: block;">
                <input type="file" id="imageFileInput" name="imgFile" style="display: none;">
                
               <label>Contact</label>
                <input type="text" name="contactClub" value="${club.contactClub}" required>
                <label>Schedule</label>
                <input type="text" name="schedule" value="${club.schedule}" required>
                <label>Description:</label>
                <textarea name="description" required>${club.description}</textarea>
                
                <button type="submit">Update</button>
            </form>
        </div>
    </c:if>
    <c:if test="${empty club}">
        <p>Club not found!</p>
    </c:if>
    <script>
        function toggleImageInput() {
            const urlInput = document.getElementById('imageURLInput');
            const fileInput = document.getElementById('imageFileInput');
            if (document.getElementById('imageURL').checked) {
                urlInput.style.display = 'block';
                fileInput.style.display = 'none';
            } else {
                urlInput.style.display = 'none';
                fileInput.style.display = 'block';
            }
        }
    </script>
</body>
</html>
