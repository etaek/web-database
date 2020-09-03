package user;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.controller.CommandAction;
 
public class reviewAction implements CommandAction {
 
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
       
       request.setCharacterEncoding("utf-8");
       

      String bookname = request.getParameter("bookname");

       String review = request.getParameter("review");
       HttpSession session = request.getSession();
       String id = (String) session.getAttribute("sessionId");
       
      System.out.println(id);
       Class.forName("com.mysql.cj.jdbc.Driver");
       Statement stmt = null;
       Connection conn = null;
       ResultSet rs = null;
       PreparedStatement pstmt = null;    
    
       try{       
           
          String jdbc_url = "jdbc:mysql://localhost:3306/dbpj?serverTimezone=UTC"; 
             
         String dbUser = "root";
         String dbPass = "1234";                   
         int num=0;
         String name=null;
         conn=DriverManager.getConnection(jdbc_url,dbUser,dbPass);
         String query=null;
       
            pstmt = conn.prepareStatement("INSERT INTO review VALUES (NULL,?,?,?)");
               
                pstmt.setString(1, bookname);
                pstmt.setString(2, review);
                pstmt.setString(3, id);
                
    
                pstmt.executeUpdate();
             

             
       
       } catch(SQLException ex){
          ex.printStackTrace();
         
      }finally{
      
          if(pstmt != null) try{pstmt.close();} catch(SQLException ex){}
          if(conn != null) try{conn.close();} catch(SQLException ex){}
          }
       
 
        return "reviewSuccess.jsp";
 
    }
 
}