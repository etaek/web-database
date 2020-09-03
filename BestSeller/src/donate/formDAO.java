package donate;
 
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
 
public class formDAO implements CommandAction {
 
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
       
       request.setCharacterEncoding("utf-8");
       
       HttpSession session = request.getSession();
        String id = (String) session.getAttribute("sessionId");
        
       String title = request.getParameter("title");
       String author = request.getParameter("author");
       String foundation = request.getParameter("foundation");
   
       System.out.println(id);
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = null;
        PreparedStatement pstmt = null;       

       try{       
           System.out.println(1);
           String jdbc_url = "jdbc:mysql://localhost:3306/dbpj?serverTimezone=UTC";  
          
         String dbUser = "root";
         String dbPass = "1234";
      
         conn=DriverManager.getConnection(jdbc_url,dbUser,dbPass);
      
      
            pstmt = conn.prepareStatement("INSERT INTO donate VALUES (NULL,?,?,?,?)");
            System.out.println(3);
                  
                  pstmt.setString(1, id);
                pstmt.setString(2, title);
                pstmt.setString(3, author);
                pstmt.setString(4, foundation);
       
                pstmt.executeUpdate();
                System.out.println(3);
             
       
          System.out.println(5);
       } catch(SQLException ex){
          ex.printStackTrace();
         
      }finally{
         System.out.println(44);
          if(pstmt != null) try{pstmt.close();} catch(SQLException ex){}
          if(conn != null) try{conn.close();} catch(SQLException ex){}
          }
       
        return "formSuccess.jsp";
    }
}