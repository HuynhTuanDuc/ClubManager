import DAO.TaskDAO;
import Model.Task1;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.time.LocalDate;


@WebServlet("/updateTaskServlet")
public class UpdateTaskServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          int taskID = Integer.parseInt(request.getParameter("taskID"));
        TaskDAO dao = new TaskDAO();
        Task1 task = dao.getTaskByID(taskID);
        
        request.setAttribute("task", task);
        request.getRequestDispatcher("editTask.jsp").forward(request, response);
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
            String taskIDStr = request.getParameter("taskID");
             int taskID = Integer.parseInt(taskIDStr);
            String clubID = request.getParameter("clubID");
            String eventID = request.getParameter("eventID");
            String title = request.getParameter("title");
            String deadline = request.getParameter("deadline");
            String status = request.getParameter("status");
            String priority = request.getParameter("priority");
            String description = request.getParameter("description");
            
            TaskDAO dao = new TaskDAO();
            dao.updateTask(taskID, title, deadline, status, description, priority);
            
            response.sendRedirect("taskList"); // Chuyển hướng sau khi cập nhật thành công
    }
}

