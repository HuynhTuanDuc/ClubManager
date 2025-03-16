<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Public</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        .blog-container {
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            background-color: #f9f9f9;
            margin: 0 auto;
            max-width: 1200px;
        }
        .filter-container {
            display: flex;
            justify-content: flex-end;
            align-items: center;
            gap: 15px;
            flex-wrap: wrap;
        }
        .filter-container label {
            font-weight: bold;
        }
        .filter-container select {
            width: 180px;
            font-size: 14px;
            padding: 8px;
            border-radius: 5px;
        }
        .home-icon {
            position: fixed;
            top: 10px;
            left: 10px;
            z-index: 1000;
        }
        .home-icon img {
            width: 45px;
        }
    </style>
</head>
<body>
    <a href="home1" class="home-icon">
        <img src="https://cdn-icons-png.flaticon.com/512/25/25694.png" alt="Home">
    </a>
    
    <!-- Bộ lọc -->
    <div class="container mb-3">
        <div class="filter-container">
            <label for="clubFilter">Club:</label>
            <select id="clubFilter" class="form-select" onchange="applyFilter()">
                <option value="all">All</option>
                <c:forEach var="club" items="${club}">
                    <option value="${club.getClubName()}">${club.getClubName()}</option>
                </c:forEach>
            </select>
            <label for="statusFilter">Status:</label>
            <select id="statusFilter" class="form-select" onchange="applyFilter()">
                <option value="all">All</option>
                <option value="active">Active</option>
                <option value="inactive">Inactive</option>
            </select>
        </div>
    </div>

    <div class="blog-container">
        <div class="row mt-3">
            <c:forEach var="event" items="${e}">
                <div class="col-md-4 mb-3" data-club="${event.getNameCLub()}" data-status="${event.status ? 'active' : 'inactive'}">
                    <div class="card blog-card">
                        <img src="${event.eventImageURL != null ? event.eventImageURL : 'https://via.placeholder.com/300'}" alt="Event Image">
                        <div class="card-body">
                            <h5 class="card-title">${event.eventName}</h5>
                            <p class="text-muted">Creator: <strong>${event.getUserCreat()}</strong> - ${event.getNameCLub()}</p>
                            <p class="text-muted">Time: <strong>${event.eventDate}</strong></p>
                            <p class="status-box">Status: ${event.status ? 'Active' : 'Inactive'}</p>
                            <a href="DetailEventPublic?event_id=${event.id}" class="btn btn-primary">Read More</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
            <c:if test="${empty e}">
                <p class="text-center text-muted">Không có sự kiện nào.</p>
            </c:if>
        </div>
    </div>

    <!-- Phân trang -->
    <nav aria-label="Page navigation">
        <ul class="pagination justify-content-center mt-4">
            <c:if test="${currentPage > 1}">
                <li class="page-item">
                    <a class="page-link" href="?page=${currentPage - 1}" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
            </c:if>
            <c:forEach var="i" begin="1" end="${totalPages}">
                <li class="page-item ${i == currentPage ? 'active' : ''}">
                    <a class="page-link" href="?page=${i}">${i}</a>
                </li>
            </c:forEach>
            <c:if test="${currentPage < totalPages}">
                <li class="page-item">
                    <a class="page-link" href="?page=${currentPage + 1}" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </c:if>
        </ul>
    </nav>

    <script>
        function applyFilter() {
            let club = document.getElementById("clubFilter").value;
            let status = document.getElementById("statusFilter").value;
            let events = document.querySelectorAll(".col-md-4");

            events.forEach(event => {
                let eventClub = event.getAttribute("data-club");
                let eventStatus = event.getAttribute("data-status");
                let showByClub = (club === "all" || eventClub === club);
                let showByStatus = (status === "all" || eventStatus === status);
                event.style.display = (showByClub && showByStatus) ? "block" : "none";
            });
        }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>  
</html>

        }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>  
</html>
