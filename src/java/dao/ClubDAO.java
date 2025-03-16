 package DAO;

import database.DBContext;
import Model.Club;
import java.util.List;
import java.sql.*;
import java.util.*;

/**
 *
 * @author admin
 */
public class ClubDAO extends DBContext {

    public List<Club> getClubs() {
        List<Club> clubs = new ArrayList<>();

        String sql = "SELECT * FROM clubs";

        try (Connection conn = getConnection(); PreparedStatement stm = conn.prepareStatement(sql); ResultSet rs = stm.executeQuery()) {
            while (rs.next()) {
                Club club = new Club();
                club.setClubID(rs.getInt("ClubID"));
                club.setClubName(rs.getString("ClubName"));
                club.setCategory(rs.getString("Categories"));
                club.setDescription(rs.getString("Description"));
                club.setIsPublic(rs.getString("IsPublic"));
                club.setImgURL(rs.getString("ImageURL"));
                club.setStatus(rs.getString("status"));
                club.setClubLeader(rs.getString("Clubleader"));
                club.setContactClub(rs.getString("ContactClub"));
                club.setSchedule(rs.getString("Schedule"));
                clubs.add(club);
            }
        } catch (SQLException e) {
            e.printStackTrace();            
        }
        return clubs;
    }

    //search club by name
    public List<Club> searchClubs(String keyword) {
        List<Club> clubs = new ArrayList<>();

        String sql = "SELECT * FROM clubs WHERE ClubName LIKE ?";

        try (Connection conn = getConnection(); PreparedStatement stm = conn.prepareStatement(sql)) {

            stm.setString(1, "%" + keyword + "%");
            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                Club club = new Club();
                club.setClubID(rs.getInt("ClubID"));
                club.setClubName(rs.getString("ClubName"));
                club.setCategory(rs.getString("Categories"));
                club.setDescription(rs.getString("Description"));
                club.setIsPublic(rs.getString("IsPublic"));
                club.setImgURL(rs.getString("ImageURL"));
                club.setStatus(rs.getString("status"));
                club.setClubLeader(rs.getString("Clubleader"));
                club.setContactClub(rs.getString("ContactClub"));
                club.setSchedule(rs.getString("Schedule"));
                clubs.add(club);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Lỗi khi truy vấn CSDL", e);
        }
        return clubs;
    }

    //Insert into Database
    public void addClub(String name, String category, String description, String isPublic, String image, String status, String leader, String contactClub, String schedule) {
        String sql = "INSERT INTO clubs (ClubName, Categories, Description, IsPublic, ImageURL, status, Clubleader, ContactClub, Schedule) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = getConnection(); PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setString(1, name);
            stm.setString(2, category);
            stm.setString(3, description);
            stm.setString(4, isPublic);
            stm.setString(5, image);
            stm.setString(6, status);
            stm.setString(7, leader);
            stm.setString(8, contactClub);
            stm.setString(9, schedule);
            stm.executeUpdate();
            System.out.println("Thêm câu lạc bộ thành công");
        } catch (SQLException e) {
            System.out.println("Lỗi khi thêm câu lạc bộ: " + e.getMessage());
            e.printStackTrace();
        }
    }

    public List<String> getAllCategories() {
        List<String> categories = new ArrayList<>();
        String sql = "SELECT DISTINCT Categories FROM clubs";

        try (Connection conn = getConnection(); PreparedStatement stm = conn.prepareStatement(sql); ResultSet rs = stm.executeQuery()) {

            while (rs.next()) {
                categories.add(rs.getString("Categories"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return categories;
    }
    
    public List<String> getPublicStatus() {
        List<String> publicStatus = new ArrayList<>();
        String sql = "SELECT DISTINCT IsPublic FROM clubs";

        try (Connection conn = getConnection(); PreparedStatement stm = conn.prepareStatement(sql); ResultSet rs = stm.executeQuery()) {

            while (rs.next()) {
                publicStatus.add(rs.getString("isPublic"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return publicStatus;
    }
    
    //get club by category
    public List<Club> getClubsByCategory(String category) {
        List<Club> clubs = new ArrayList<>();
        String sql = "SELECT * FROM clubs WHERE Categories = ?";

        try (Connection conn = getConnection(); PreparedStatement stm = conn.prepareStatement(sql)) {

            stm.setString(1, category);
            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                Club club = new Club();
                 club.setClubID(rs.getInt("ClubID"));
                club.setClubName(rs.getString("ClubName"));
                club.setCategory(rs.getString("Categories"));
                club.setDescription(rs.getString("Description"));
                club.setIsPublic(rs.getString("IsPublic"));
                club.setImgURL(rs.getString("ImageURL"));
                club.setStatus(rs.getString("status"));
                club.setClubLeader(rs.getString("Clubleader"));
                club.setContactClub(rs.getString("ContactClub"));
                club.setSchedule(rs.getString("Schedule"));
                clubs.add(club);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return clubs;
    }
    
     public List<Club> getClubsByPublicStatus(String publicStatus) {
        List<Club> clubs = new ArrayList<>();
        String sql = "SELECT * FROM clubs WHERE IsPublic = ?";

        try (Connection conn = getConnection(); PreparedStatement stm = conn.prepareStatement(sql)) {

            stm.setString(1, publicStatus);
            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                Club club = new Club();
                 club.setClubID(rs.getInt("ClubID"));
                club.setClubName(rs.getString("ClubName"));
                club.setCategory(rs.getString("Categories"));
                club.setDescription(rs.getString("Description"));
                club.setIsPublic(rs.getString("IsPublic"));
                club.setImgURL(rs.getString("ImageURL"));
                club.setStatus(rs.getString("status"));
                club.setClubLeader(rs.getString("Clubleader"));
                club.setContactClub(rs.getString("ContactClub"));
                club.setSchedule(rs.getString("Schedule"));
                clubs.add(club);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return clubs;
    }

    // Update club information
    public void updateClub(int clubID, String name, String category, String description, String isPublic, String image, String status, String leader, String contactClub, String schedule) {
        String sql = "UPDATE clubs SET ClubName = ?, Categories = ?, Description = ?, IsPublic = ?, ImageURL = ?, status = ?, Clubleader = ?, ContactClub =?, Schedule = ? WHERE ClubID = ?";

        try (Connection conn = getConnection(); PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setString(1, name);
            stm.setString(2, category);
            stm.setString(3, description);
            stm.setString(4, isPublic);
            stm.setString(5, image);
            stm.setString(6, status);
            stm.setString(7, leader);
            stm.setString(8, contactClub);
            stm.setString(9, schedule);
            stm.setInt(10, clubID);
            stm.executeUpdate();
            System.out.println("Cập nhật câu lạc bộ thành công");

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Club getClubByID(int clubID) {
        Club club = null;
        String sql = "SELECT * FROM clubs WHERE ClubID = ?";

        try (Connection conn = getConnection(); PreparedStatement stm = conn.prepareStatement(sql)) {

            stm.setInt(1, clubID);
            ResultSet rs = stm.executeQuery();

            if (rs.next()) {
                club = new Club();
                club.setClubID(rs.getInt("ClubID"));
                club.setClubName(rs.getString("ClubName"));
                club.setCategory(rs.getString("Categories"));
                club.setDescription(rs.getString("Description"));
                club.setIsPublic(rs.getString("IsPublic"));
                club.setImgURL(rs.getString("ImageURL"));
                club.setStatus(rs.getString("status"));
                club.setClubLeader(rs.getString("Clubleader"));
                club.setContactClub(rs.getString("ContactClub"));
                club.setSchedule(rs.getString("Schedule"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return club;
    }
    
    public   List<Club> getAllClubs(){
        
      List<Club> list = new ArrayList<>();
        String sql = "SELECT * FROM clubs ";
        try (Connection conn = getConnection(); PreparedStatement stm = conn.prepareStatement(sql)) {
            ResultSet rs = stm.executeQuery();
            rs = stm.executeQuery();
           while (rs.next()) {
               list.add(new Club(rs.getInt("ClubID"), rs.getString("ClubName"),
                        rs.getString("Categories"), rs.getString("Description"),
                        rs.getString("Clubleader"),
                        rs.getString("ImageURL"),
                        rs.getString("ContactClub"),
                        rs.getString("Schedule")
                ));

            }
        } catch (Exception e) {
        }
        return list;
    }

    // Delete a club by ID
    public void deleteClub(int clubID) {
        String sql = "DELETE FROM clubs WHERE ClubID = ?";

        try (Connection conn = getConnection(); PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setInt(1, clubID);
            stm.executeUpdate();
            System.out.println("Xóa câu lạc bộ thành công");
        } catch (SQLException e) {
            System.out.println("Error when delete club: " + e.getMessage());
            e.printStackTrace();
        }
    }
    
    
}
