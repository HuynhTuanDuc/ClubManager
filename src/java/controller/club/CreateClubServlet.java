/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.club;

import controller.account.*;
import controller.club.*;
import controller.event.*;
import controller.setting.*;
import DAO.ClubDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;


/**
 *
 * @author admin
 */
@WebServlet("/CreateClubServlet")
@MultipartConfig(
        fileSizeThreshold = 1024*1024*2,//2MB
        maxFileSize =  1024*1024*10,
        maxRequestSize = 1024*1024*50
)
public class CreateClubServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        String description = request.getParameter("description");        
        String isPublic = request.getParameter("isPublic"); 
        String status = "active";
        String leader = request.getParameter("leader");
        String contact = request.getParameter("contactClub");
        String schedule = request.getParameter("schedule");
        


        //Xử lý ảnh
        String imgURL = null;
        Part sourcePath = request.getPart("imgFile");
  
        if (sourcePath != null && sourcePath.getSize() > 0) {

            String uploadDir = "web/images/ClubIMG";

            String fileName = Paths.get(sourcePath.getSubmittedFileName()).getFileName().toString();

            // Kiểm tra thư mục, nếu chưa có thì tạo mới
            File uploadFolder = new File(uploadDir);
            if (!uploadFolder.exists()) {
                uploadFolder.mkdirs();
            }

            // Lưu ảnh vào thư mục server
            File destFile = new File(uploadFolder, fileName);
            try {
                Files.copy(sourcePath.getInputStream(), destFile.toPath(), StandardCopyOption.REPLACE_EXISTING);
                imgURL = "images/ClubIMG/" + fileName;
            } catch (Exception e) {
                System.out.println("Lỗi khi tải ảnh lên" + e.getMessage());
                request.setAttribute("error", "Lỗi khi tải ảnh lên " + e.getMessage());
                request.getRequestDispatcher("errorPage.jsp").forward(request, response);
                return;
            }
        }

        ClubDAO dao = new ClubDAO();
        dao.addClub(name, category, description, isPublic, imgURL, status, leader, contact, schedule);
        
        
        response.sendRedirect("ClubServlet");
    }

}
