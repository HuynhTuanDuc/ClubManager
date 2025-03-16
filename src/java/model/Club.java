/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Doan Quan
 */
public class Club {
      private int clubID;
      private String clubName;
      private String category;
      private String description;
      private String isPublic;
      private String imgURL;
      private String ContactClub;
      private String Schedule;
      private String numbersofmember;
      private String status;
      private String clubLeader;
         private String createDate;
    public Club() {
    }
    //construtor without category
    public Club(int clubID, String clubName,String description, String isPublic, String imgURL) {
        this.clubID = clubID;
        this.clubName = clubName;
        this.description = description;
        this.isPublic = isPublic;
        this.imgURL = imgURL;
    }
    
    //contructor with name, description, imgUrl
     public Club(String clubName,String description,String imgURL) {
        this.clubName = clubName;
        this.description = description;
        this.imgURL = imgURL;
    }

    public Club(String clubName, String category, String description, String imgURL, String ContactClub, String Schedule) {
        this.clubName = clubName;
        this.category = category;
        this.description = description;
        this.imgURL = imgURL;
        this.ContactClub = ContactClub;
        this.Schedule = Schedule;
    }
     
     
     
    //contructor with full atribute
    public Club(int clubID, String clubName, String category, String description, String isPublic, String imgURL) {
        this.clubID = clubID;
        this.clubName = clubName;
        this.category = category;
        this.description = description;
        this.isPublic = isPublic;
        this.imgURL = imgURL;
    }

    public Club(int clubID, String clubName, String category, String description, String clubLeader, String imgURL, String ContactClub, String Schedule) {
        this.clubID = clubID;
        this.clubName = clubName;
        this.category = category;
        this.description = description;
        this.imgURL = imgURL;
        this.ContactClub = ContactClub;
        this.Schedule = Schedule;
        this.clubLeader = clubLeader;
    }
    
    

    
    //Constructor with name, category, description, isPublic, imgURL, status and club leader
    public Club(int clubID, String clubName,String description, String isPublic, String imgURL, String status, String clubLeader) {
        this.clubID = clubID;
        this.clubName = clubName;
        this.description = description;
        this.isPublic = isPublic;
        this.imgURL = imgURL;
        this.status = status;
        this.clubLeader = clubLeader;
    }
    


    public Club(String clubName, String category, String imgURL, String ContactClub, String Schedule) {
        this.clubName = clubName;
        this.category = category;
        
        this.imgURL = imgURL;
        this.ContactClub = ContactClub;
        this.Schedule = Schedule;
    }
    
    
  //constructor with full attribute
    public Club(int clubID, String clubName, String category, String description, String clubleader, String imgURL, String ContactClub, String Schedule, String createDate) {
        this.clubID = clubID;
        this.clubName = clubName;
        this.category = category;
        this.description = description;
        this.clubLeader = clubleader;
        this.imgURL = imgURL;
        this.ContactClub = ContactClub;
        this.Schedule = Schedule;
        this.createDate= createDate;
    
    }

    public Club(String category) {
        this.category = category;
    }

   
    public String getContactClub() {
        return ContactClub;
    }

    public void setContactClub(String ContactClub) {
        this.ContactClub = ContactClub;
    }

    public String getSchedule() {
        return Schedule;
    }

    public void setSchedule(String Schedule) {
        this.Schedule = Schedule;
    }

    public int getClubID() {
        return clubID;
    }

    public void setClubID(int clubID) {
        this.clubID = clubID;
    }
    

    public String getClubName() {
        return clubName;
    }

    public void setClubName(String clubName) {
        this.clubName = clubName;
    }
    
    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
    
    public String getDescription() {
        return description;
    }

    public void setDescription(String descrition) {
        this.description = descrition;
    }
    
    public String getImgURL() {
        return imgURL;
    }

    public void setImgURL(String imgURL) {
        this.imgURL = imgURL;
    }

    public String getIsPublic() {
        return isPublic;
    }

    public void setIsPublic(String isPublic) {
        this.isPublic = isPublic;
    }

    public String getNumbersofmember() {
        return numbersofmember;
    }

    public void setNumbersofmember(String numbersofmember) {
        this.numbersofmember = numbersofmember;
    }

    public String getClubLeader() {
        return clubLeader;
    }

    public String getStatus() {
        return status;
    }

    public void setClubLeader(String clubLeader) {
        this.clubLeader = clubLeader;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }
    
     
    
    
      
}
