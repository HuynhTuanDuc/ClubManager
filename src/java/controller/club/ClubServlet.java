package controller.club;

import controller.account.*;
import controller.club.*;
import controller.event.*;
import controller.setting.*;
import DAO.ClubDAO;
import Model.Club;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ClubServlet")
public class ClubServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String search = request.getParameter("search");
        String category = request.getParameter("category");
        String isPublic = request.getParameter("isPublic");

        // Xử lý phân trang
        int pageSize = 5;
        int page = 1;
        String pageStr = request.getParameter("page");
        if (pageStr != null && !pageStr.isEmpty()) {
            try {
                page = Integer.parseInt(pageStr);
            } catch (NumberFormatException e) {
                page = 1;
            }
        }
        
        //Search club
        ClubDAO dao = new ClubDAO();
        List<Club> allClubs; //search all
        List<String> categories = dao.getAllCategories(); //get all category
        List<String> publicStatus = dao.getPublicStatus();//get public status
        
        if (category != null && !category.isEmpty()) {
            allClubs = dao.getClubsByCategory(category);
        } else if (search != null && !search.trim().isEmpty()) {//if we got a key word
            allClubs = dao.searchClubs(search);
        }else if(isPublic != null && !isPublic.isEmpty()){
            allClubs = dao.getClubsByPublicStatus(isPublic);
        }else {
            allClubs = dao.getClubs();
        }

        int totalClubs = allClubs.size();
        int totalPages = (int) Math.ceil((double) totalClubs / pageSize);
        int startIndex = (page - 1) * pageSize;
        int endIndex = Math.min(startIndex + pageSize, totalClubs);
        List<Club> clubsForPage = allClubs.subList(startIndex, endIndex);
        
        request.setAttribute("publicStatus", publicStatus);
        request.setAttribute("search", search);
        request.setAttribute("categories", categories);
        request.setAttribute("clubs", clubsForPage);
        request.setAttribute("currentPage", page);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("search", search);
        request.setAttribute("category", category);

        request.getRequestDispatcher("/WEB-INF/club/clubs.jsp").forward(request, response);
    }
}