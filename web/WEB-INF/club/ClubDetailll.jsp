<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

    <head>

        <!-- META ============================================= -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="keywords" content="" />
        <meta name="author" content="" />
        <meta name="robots" content="" />

        <!-- DESCRIPTION -->
        <meta name="description" content="Estate-Free HTML5 Bootstrap" />

        <!-- OG -->
        <meta property="og:title" content="EduChamp : Education HTML Template" />
        <meta property="og:description" content="EduChamp : Education HTML Template" />
        <meta property="og:image" content="" />
        <meta name="format-detection" content="telephone=no">

        <!-- FAVICONS ICON ============================================= -->
        <link rel="icon" href="assets/images/OIT" type="image/x-icon" />
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/OIT.jpg" />

        <!-- PAGE TITLE HERE ============================================= -->
        <title>FPT Club Manager</title>

        <!-- MOBILE SPECIFIC ============================================= -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!--[if lt IE 9]>
        <script src="assets/js/html5shiv.min.js"></script>
        <script src="assets/js/respond.min.js"></script>
        <![endif]-->

        <!-- All PLUGINS CSS ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/css/assets.css">

        <!-- TYPOGRAPHY ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/css/typography.css">

        <!-- SHORTCODES ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/css/shortcodes/shortcodes.css">

        <!-- STYLESHEETS ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <link class="skin" rel="stylesheet" type="text/css" href="assets/css/color/color-1.css">
        <link rel="stylesheet" href="css/animate.css">
        <!-- Icomoon Icon Fonts-->
        <link rel="stylesheet" href="css/icomoon.css">
        <!-- Bootstrap  -->
        <link rel="stylesheet" href="css/bootstrap.css">
        <!-- Flexslider  -->
        <link rel="stylesheet" href="css/flexslider.css">
        <!-- Theme style  -->
        <link rel="stylesheet" href="css/style.css">
        <style>
            .row{
                display: flex;
                flex-wrap: nowrap;
                flex-direction: row;
            }

            .btn-container {
                text-align: center;
                font-family: fantasy;
                color: green;
                padding: 20px 30px 40px 20px;
            }
            .btn-container button {
                text-align: center;
                color: green;
                padding: 20px 30px 40px 20px;
                font-size: 18px;
                cursor: pointer;
            }

            /* CSS cho modal (hộp thoại) */
            .modal {
                display: none;
                position: fixed;
                z-index: 1;
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                background-color: rgba(0, 0, 0, 0.5);
            }
            .modal-content {
                background-color: white;
                margin: 10% auto;
                padding: 20px;
                border-radius: 10px;
                width: 40%;
                text-align: center;
                position: relative;
            }
            .close {
                position: absolute;
                top: 10px;
                right: 15px;
                font-size: 20px;
                cursor: pointer;
            }









            /* Container chiếm toàn bộ chiều rộng */
            .container-fluid {
                width: 100%;
            }
            .d-flex {
                display: flex;
            }
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
        </style>
    </head>
    <body id="bg">
        <div class="page-wraper">
            <div id="loading-icon-bx"></div>



            <jsp:include page="header.jsp"></jsp:include>
                <!-- Header Top ==== -->

                <!-- header END ==== -->
                <!-- Content -->
                <div class="page-content bg-white">
                    <!-- inner page banner -->
                    <div class="fh5co-page-title" style="background-image: url(images/slide_6.jpg);">
                        <div class="overlay"></div>
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12 animate-box">
                                    <h1><span class="colored">Club</span> Detail</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Breadcrumb row -->
                    <div class="breadcrumb-row">
                        <div class="container">
                            <ul class="list-inline">
                                <li><a href="home1">Home</a></li>
                                
                                <li>Blog Details</li>
                            </ul>
                        </div>
                    </div>
                    <!-- Breadcrumb row END -->
                    <div class="content-block">
                        <div class="section-area section-sp1">
                            <div class="container">
                                <div class="row">
                                    <!-- Left part start -->
                                    <div class="col-lg-8 col-xl-8">
                                        <!-- blog start -->
                                        <div class="recent-news blog-lg">
                                            <div class="action-box blog-lg">
                                                <img src="${c.imgURL}" alt="imgage">
                                        </div>
                                        <div class="info-bx">
                                            <ul class="media-post">
                                                <li><a href="#"><i class="fa fa-calendar"></i>${c.createDate}</a></li>
                                                <li><a href="#"><i class="fa fa-comments-o"></i>10 Comment</a></li>
                                            </ul>
                                            <h5 class="post-title"><a href="#">${c.clubName}</a></h5>
                                            <p>${c.description}</p>



                                            <div class="ttr-divider bg-gray"><i class="icon-dot c-square"></i></div>
                                            <h6>SHARE</h6>
                                            <ul class="list-inline contact-social-bx">
                                                <li><a href="#" class="btn outline radius-xl"><i class="fa fa-facebook"></i></a></li>
                                                <li><a href="#" class="btn outline radius-xl"><i class="fa fa-twitter"></i></a></li>
                                                <li><a href="#" class="btn outline radius-xl"><i class="fa fa-linkedin"></i></a></li>
                                                <li><a href="#" class="btn outline radius-xl"><i class="fa fa-google-plus"></i></a></li>
                                            </ul>
                                            <div class="ttr-divider bg-gray"><i class="icon-dot c-square"></i></div>
                                        </div>
                                    </div>
                                    <div class="clear" id="comment-list">
                                        <div class="comments-area" id="comments">
                                            <h2 class="comments-title">8 Comments</h2>
                                            <div class="clearfix m-b20">
                                                <!-- comment list END -->
                                                <ol class="comment-list">
                                                    <li class="comment">
                                                        <div class="comment-body">
                                                            <div class="comment-author vcard"> <img  class="avatar photo" src="assets/images/testimonials/pic1.jpg" alt=""> <cite class="fn">John Doe</cite> <span class="says">says:</span> </div>
                                                            <div class="comment-meta"> <a href="#">December 02, 2019 at 10:45 am</a> </div>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vitae neqnsectetur adipiscing elit. Nam viae neqnsectetur adipiscing elit.
                                                                Nam vitae neque vitae sapien malesuada aliquet. </p>
                                                            <div class="reply"> <a href="#" class="comment-reply-link">Reply</a> </div>
                                                        </div>
                                                        <ol class="children">
                                                            <li class="comment odd parent">
                                                                <div class="comment-body">
                                                                    <div class="comment-author vcard"> <img  class="avatar photo" src="assets/images/testimonials/pic2.jpg" alt=""> <cite class="fn">John Doe</cite> <span class="says">says:</span> </div>
                                                                    <div class="comment-meta"> <a href="#">December 02, 2019 at 10:45 am</a> </div>
                                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vitae neque vitae sapien malesuada aliquet. 
                                                                        In viverra dictum justo in vehicula. Fusce et massa eu ante ornare molestie. Sed vestibulum sem felis, 
                                                                        ac elementum ligula blandit ac.</p>
                                                                    <div class="reply"> <a href="#" class="comment-reply-link">Reply</a> </div>
                                                                </div>
                                                                <ol class="children">
                                                                    <li class="comment odd parent">
                                                                        <div class="comment-body">
                                                                            <div class="comment-author vcard"> <img  class="avatar photo" src="assets/images/testimonials/pic3.jpg" alt=""> <cite class="fn">John Doe</cite> <span class="says">says:</span> </div>
                                                                            <div class="comment-meta"> <a href="#">December 02, 2019 at 10:45 am</a> </div>
                                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vitae neque vitae sapien malesuada aliquet. 
                                                                                In viverra dictum justo in vehicula. Fusce et massa eu ante ornare molestie. Sed vestibulum sem felis, 
                                                                                ac elementum ligula blandit ac.</p>
                                                                            <div class="reply"> <a href="#" class="comment-reply-link">Reply</a> </div>
                                                                        </div>
                                                                    </li>
                                                                </ol>
                                                                <!-- list END -->
                                                            </li>
                                                        </ol>
                                                        <!-- list END -->
                                                    </li>
                                                    <li class="comment">
                                                        <div class="comment-body">
                                                            <div class="comment-author vcard"> <img  class="avatar photo" src="assets/images/testimonials/pic1.jpg" alt=""> <cite class="fn">John Doe</cite> <span class="says">says:</span> </div>
                                                            <div class="comment-meta"> <a href="#">December 02, 2019 at 10:45 am</a> </div>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vitae neque vitae sapien malesuada aliquet. 
                                                                In viverra dictum justo in vehicula. Fusce et massa eu ante ornare molestie. Sed vestibulum sem felis, 
                                                                ac elementum ligula blandit ac.</p>
                                                            <div class="reply"> <a href="#" class="comment-reply-link">Reply</a> </div>
                                                        </div>
                                                    </li>
                                                    <li class="comment">
                                                        <div class="comment-body">
                                                            <div class="comment-author vcard"> <img  class="avatar photo" src="assets/images/testimonials/pic2.jpg" alt=""> <cite class="fn">John Doe</cite> <span class="says">says:</span> </div>
                                                            <div class="comment-meta"> <a href="#">December 02, 2019 at 10:45 am</a> </div>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vitae neque vitae sapien malesuada aliquet. 
                                                                In viverra dictum justo in vehicula. Fusce et massa eu ante ornare molestie. Sed vestibulum sem felis, 
                                                                ac elementum ligula blandit ac.</p>
                                                            <div class="reply"> <a href="#" class="comment-reply-link">Reply</a> </div>
                                                        </div>
                                                    </li>
                                                    <li class="comment">
                                                        <div class="comment-body">
                                                            <div class="comment-author vcard"> <img  class="avatar photo" src="assets/images/testimonials/pic3.jpg" alt=""> <cite class="fn">John Doe</cite> <span class="says">says:</span> </div>
                                                            <div class="comment-meta"> <a href="#">December 02, 2019 at 10:45 am</a> </div>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vitae neque vitae sapien malesuada aliquet. 
                                                                In viverra dictum justo in vehicula. Fusce et massa eu ante ornare molestie. Sed vestibulum sem felis, 
                                                                ac elementum ligula blandit ac.</p>
                                                            <div class="reply"> <a href="#" class="comment-reply-link">Reply</a> </div>
                                                        </div>
                                                    </li>
                                                </ol>
                                                <!-- comment list END -->
                                                <!-- Form -->
                                                <div class="comment-respond" id="respond">
                                                    <h4 class="comment-reply-title" id="reply-title">Leave a Reply <small> <a style="display:none;" href="#" id="cancel-comment-reply-link" rel="nofollow">Cancel reply</a> </small> </h4>
                                                    <form class="comment-form" id="commentform" method="post">
                                                        <p class="comment-form-author">
                                                            <label for="author">Name <span class="required">*</span></label>
                                                            <input type="text" value="" name="Author"  placeholder="Author" id="author">
                                                        </p>
                                                        <p class="comment-form-email">
                                                            <label for="email">Email <span class="required">*</span></label>
                                                            <input type="text" value="" placeholder="Email" name="email" id="email">
                                                        </p>
                                                        <p class="comment-form-url">
                                                            <label for="url">Website</label>
                                                            <input type="text"  value=""  placeholder="Website"  name="url" id="url">
                                                        </p>
                                                        <p class="comment-form-comment">
                                                            <label for="comment">Comment</label>
                                                            <textarea rows="8" name="comment" placeholder="Comment" id="comment"></textarea>
                                                        </p>
                                                        <p class="form-submit">
                                                            <input type="submit" value="Submit Comment" class="submit" id="submit" name="submit">
                                                        </p>
                                                    </form>
                                                </div>
                                                <!-- Form -->
                                            </div>
                                        </div>
                                    </div>
                                    <!-- blog END -->
                                </div>
                                <!-- Left part END -->
                                <!-- Side bar start -->
                                <div class="col-lg-4 col-xl-4">
                                    <aside  class="side-bar sticky-top">

                                        <div class="btn-container">
                                            <button id="openModal"><i>Join Club Now</i></button>
                                        </div>

                                        <div id="myModal" class="modal">
                                            <div class="modal-content">
                                                <span class="close">&times;</span>
                                                <h2>Join Our Club</h2>
                                                <form action="submitClubRegister" method="post" >
                                                    <label for="name">Name:</label><br>
                                                    <c:if test="${sessionScope.acc !=null && sessionScope.accc ==null}">
                                                        <input type="text" id="name" name="name" value="${sessionScope.acc.userName}" readonly="" required><br><br>
                                                        <input type="hidden" name="userID" value="${sessionScope.acc.id}">
                                                        <input type="hidden" name="clubID" value="${c.clubID}">
                                                    </c:if>
                                                    <c:if test="${sessionScope.acc ==null && sessionScope.accc !=null}">
                                                        <input type="text" id="name" name="name" value="${sessionScope.name}" readonly="" required><br><br>
                                                        <input type="hidden" name="userID" value="${sessionScope.accc.id}">
                                                        <input type="hidden" name="clubID" value="${c.clubID}">
                                                    </c:if>

                                                    <label for="email">Email:</label><br>
                                                    <input type="email" id="email" name="email" value="${sessionScope.email}"  readonly="" required><br><br>
                                                    <label for="email">Phone</label><br>
                                                    <input type="phone" id="phone" name="phone" required><br><br>
                                                    <label for="email">Lý do tham gia</label><br>
                                                    <input type="text" id="note" name="note" required><br><br>


                                                    <button type="submit">Submit</button>
                                                </form>
                                            </div>
                                        </div>
                                        <script>
                                            window.onload = function () {
                                                const urlParams = new URLSearchParams(window.location.search);
                                                if (urlParams.has('success')) {
                                                    alert("Đăng ký thành công!");
                                                } else if (urlParams.has('error')) {
                                                    alert("Đăng ký thất bại! Vui lòng thử lại.");
                                                }
                                            };
                                        </script>
                                        <script>
                                            document.getElementById("openModal").onclick = function () {
                                                document.getElementById("myModal").style.display = "block";
                                            };
                                            document.querySelector(".close").onclick = function () {
                                                document.getElementById("myModal").style.display = "none";
                                            };
                                            window.onclick = function (event) {
                                                if (event.target === document.getElementById("myModal")) {
                                                    document.getElementById("myModal").style.display = "none";
                                                }
                                            };
                                        </script>



                                        <div class="widget recent-posts-entry">
                                            <h6 class="widget-title">Recent Posts</h6>
                                            <div class="widget-post-bx">
                                                <c:forEach var="o" items="${listPost}" >
                                                <div class="widget-post clearfix">
                                                    <div class="ttr-post-media"> <img src="${o.image_url}" width="200" height="143" alt=""> </div>
                                                    <div class="ttr-post-info">
                                                        <div class="ttr-post-header">
                                                            <h6 class="post-title"><a href="PublicDetailPost?postid=${o.post_id}">${o.title}</a></h6>
                                                        </div>
                                                        <ul class="media-post">
                                                            <li><a href="#"><i class="fa fa-calendar"></i>${o.post_at}</a></li>
                                                            <li><a href="#"><i class="fa fa-comments-o"></i>15 Comment</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                        <div class="widget recent-posts-entry">
                                            <h6 class="widget-title">Event List</h6>
                                            <c:forEach var="o" items="${eventList}">
                                                <div class="widget-post-bx">
                                                    <div class="widget-post clearfix">
                                                        <div class="ttr-post-media"> <img src="${o.eventImageURL}" width="200" height="143" alt=""> </div>
                                                        <div class="ttr-post-info">
                                                            <div class="ttr-post-header">
                                                                <h6 class="post-title"><a href="DetailEventbyID?eventID=${o.id}&clubid=${o.clubId}">${o.eventName}</a></h6>
                                                            </div>
                                                            <ul class="media-post">
                                                                <li><a href="#"><i class="fa fa-calendar"></i>${o.createdBy}</a></li>
                                                                <li><a href="#"><i class="fa fa-comments-o"></i>15 Comment</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                </div>

                                            </c:forEach>

                                        </div>

                                    </aside>
                                </div>
                                <!-- Side bar END -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Content END-->
            <!-- Footer ==== -->
            <script>
                document.addEventListener("DOMContentLoaded", function () {
                    const commentForm = document.getElementById("commentform");
                    const commentList = document.querySelector("ol.comment-list") || document.createElement("ol");

                    if (!commentList.classList.contains("comment-list")) {
                        commentList.classList.add("comment-list");
                        document.body.appendChild(commentList);
                    }

                    commentForm.addEventListener("submit", function (event) {
                        event.preventDefault(); // Ngăn chặn load lại trang khi gửi form

                        // Lấy giá trị từ form
                        let author = document.getElementById("author").value.trim();
                        let email = document.getElementById("email").value.trim();
                        let commentText = document.getElementById("comment").value.trim();

                        if (author === "" || email === "" || commentText === "") {
                            alert("Vui lòng điền đầy đủ thông tin!");
                            return;
                        }

                        // Tạo phần tử bình luận mới
                        let newComment = document.createElement("li");
                        newComment.classList.add("comment");

                        // Tạo phần tử thẻ <a> chứa ngày giờ
                        let timeElement = document.createElement("a");
                        timeElement.href = "#";
                        timeElement.textContent = new Date().toLocaleString(); // Hiển thị ngày giờ

                        newComment.innerHTML = `
                        <div class="comment-body">
                            <div class="comment-author vcard">
                                <img class="avatar photo" src="assets/images/testimonials/pic1.jpg" alt="">
                                <cite class="fn">${author}</cite> <span class="says">says:</span>
                            </div>
                            <div class="comment-meta">
                            </div>
                            <p>${commentText}</p>
                            <div class="reply">
                                <a href="#" class="comment-reply-link">Reply</a>
                            </div>
                        </div>
                    `

                        // Chèn phần tử thời gian vào phần meta
                        newComment.querySelector(".comment-meta").appendChild(timeElement);

                        // Thêm bình luận vào danh sách (ở trên cùng)
                        commentList.prepend(newComment);

                        // Xóa nội dung trong form
                        commentForm.reset();

                        // Cuộn lên để hiển thị bình luận mới nhất
                        newComment.scrollIntoView({behavior: "smooth", block: "start"});
                    });
                });
            </script>
            <jsp:include page="footer.jsp"></jsp:include>
            <!-- Footer END ==== -->
            <!-- scroll top button -->
            <button class="back-to-top fa fa-chevron-up" ></button>
        </div>
        <!-- External JavaScripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/vendors/bootstrap/js/popper.min.js"></script>
        <script src="assets/vendors/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/vendors/bootstrap-select/bootstrap-select.min.js"></script>
        <script src="assets/vendors/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
        <script src="assets/vendors/magnific-popup/magnific-popup.js"></script>
        <script src="assets/vendors/counter/waypoints-min.js"></script>
        <script src="assets/vendors/counter/counterup.min.js"></script>
        <script src="assets/vendors/imagesloaded/imagesloaded.js"></script>
        <script src="assets/vendors/masonry/masonry.js"></script>
        <script src="assets/vendors/masonry/filter.js"></script>
        <script src="assets/vendors/owl-carousel/owl.carousel.js"></script>
        <script src="assets/js/functions.js"></script>
        <script src="assets/js/contact.js"></script>
        <script src='assets/vendors/switcher/switcher.js'></script>
    </body>

</html>