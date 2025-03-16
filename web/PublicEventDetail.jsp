<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>${event.eventName}</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f8f9fa;
            }
            .container {
                max-width: 900px;
            }
            .breadcrumb {
                background: none;
                padding: 0;
            }
            .content img {
                width: 100%;
                height: auto;
                border-radius: 10px;
                margin-bottom: 20px;
            }
            .sidebar {
                background: white;
                padding: 20px;
                border-radius: 10px;
            }
            .sidebar h5 {
                font-weight: bold;
                margin-bottom: 15px;
            }
            .recent-post {
                display: flex;
                margin-bottom: 15px;
                align-items: center;
            }
            .recent-post img {
                width: 60px;
                height: 60px;
                object-fit: cover;
                border-radius: 5px;
                margin-right: 10px;
            }
            .status-box {
                display: inline-block;
                padding: 5px 10px;
                border: 2px solid #007bff; /* Viền xanh */
                border-radius: 5px;
                background-color: rgba(0, 123, 255, 0.1); /* Làm sáng lên */
                font-weight: bold;
                color: #007bff; /* Chữ màu xanh */
            }

            .fw-bold {
                font-weight: bold;
            }
            .content-wrapper {
    background: white; /* Nền trắng */
    border-radius: 10px; /* Bo góc */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Đổ bóng nhẹ */
    border: 1px solid #ddd; /* Viền mỏng */
    padding: 20px; /* Khoảng cách bên trong */
    margin-top: 20px; /* Khoảng cách với breadcrumb */
}
        </style>
    </head>
    <body>

       
<div class="container mt-4">
        <!-- Breadcrumb -->
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="home1">Home</a></li>
                <li class="breadcrumb-item"><a href="PublicEvent">Public Event</a></li>
                <li class="breadcrumb-item active" aria-current="page">Event Detail</li>
            </ol>
        </nav>
<div class="content-wrapper p-4">
            <div class="row">
             
                <div class="col-lg-8">
                    <h1 class="fw-bold">${event.eventName}</h1>
                    <p class="status-box">Status : ${event.status ? 'Active' : 'Inactive'}</p>
                    <p class="fw-bold">Type : ${event.type ? 'Online' : 'Offline'}</p>
                    <p class="text-muted">Creater : ${event.getUserCreat()}| Time: ${event.eventDate}</p>

                    <img src="${event.eventImageURL != null ? event.eventImageURL: 'images/default.jpg'}" 
                         class="img-fluid rounded" alt="Blog Image">

                    <div class="content mt-4">
                        <p>${event.description}</p>
                    </div>
                </div>

                <!-- Sidebar -->
                <div class="col-lg-4">
                    <div class="sidebar">


                        <h5>Recent Event</h5>
                        <c:forEach var="o" items="${list}">
                            <div class="recent-post">
                                <img src="${o.eventImageURL  != null ? o.eventImageURL: 'images/default.jpg'}" alt="Post Image">
                                <div>

                                    <a href="DetailEventPublic?event_id=${o.id}" class="text-dark text-decoration-none">
                                        ${o.eventName}
                                    </a>
                                    <br>
                                    <small class="text-muted">${o.eventDate} | ${o.getUserCreat()}</small>
                                </div>
                            </div>
                        </c:forEach>

                        <h5>CLub</h5>
                        <div class="tag-cloud">
                            <a href="">${event.nameCLub}</a>
                        </div>
                    </div>
                </div>
            
            </div>
        </div>
</div>

        <!-- Update Post Modal -->
        <div class="modal fade" id="updateModal" tabindex="-1" aria-labelledby="updateModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="updateModalLabel">UpdatePost</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="UpdatePostServlet" method="post">
                            <input type="hidden" name="post_id" value="${e.post_id}">

                            <div class="mb-3">
                                <label for="title" class="form-label">TiTle of Post</label>
                                <input type="text" class="form-control" id="title" name="title" value="${e.title}" required>
                            </div>

                            <div class="mb-3">
                                <label for="image_url" class="form-label">Image</label>
                                <input type="text" class="form-control" id="image_url" name="image_url" value="${e.image_url}">
                            </div>

                            <div class="mb-3">
                                <label for="description" class="form-label">Content</label>
                                <textarea class="form-control" id="description" name="description" rows="3" required>${e.description}</textarea>
                            </div>

                            <div class="mb-3">
                                <label for="status" class="form-label">Status</label>
                                <select class="form-select" id="status" name="status">
                                    <option value="Draft" ${e.status == 'Draft' ? 'selected' : ''}>Draft</option>
                                    <option value="Published" ${e.status == 'Published' ? 'selected' : ''}>Published</option>
                                    <option value="Unpublished" ${e.status == 'Unpublished' ? 'selected' : ''}>Unpublished</option>
                                </select>
                            </div>

                            <button type="submit" class="btn btn-primary w-100">Change</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
