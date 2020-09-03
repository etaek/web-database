package user;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.review;
import com.board.controller.CommandAction;
 
public class recommendAction implements CommandAction {
   
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
 
       Class.forName("com.mysql.cj.jdbc.Driver");           
       Connection conn = null;
       Statement stmt = null;
       ResultSet rs = null;       
       
  
       try {
          HttpSession session = request.getSession();
              
          String id = (String) session.getAttribute("sessionId");          
          String name = (String) session.getAttribute("sessionName");  
          String jdbcDriver = "jdbc:mysql://localhost:3306/dbpj?serverTimezone=UTC";
                 
          String dbUser = "root";
          String dbPass = "1234";
          String query = null; 
          
                
          query = "select * from review order by r_num";
          
    
  
          conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
          
          stmt = conn.createStatement();          
          rs = stmt.executeQuery(query);          
          
          ArrayList<review> articleList = new ArrayList<review>();          
          
          while(rs.next()){
             review article = new review();
             article.setId(rs.getString("user_id"));
             article.setNum(rs.getInt("r_num"));
             article.setBookname(rs.getString("bname"));
             article.setReview(rs.getString("contents"));
             
             articleList.add(article);
          }
         
          request.setAttribute("articleList",articleList);
        
          
          
          
          
          
          query = "select * from bestseller";
          stmt = conn.createStatement();          
          rs = stmt.executeQuery(query);          
          int cnt=0;
          ArrayList<review> articleList2 = new ArrayList<review>();          
          
          while(rs.next()){
             
             review article2 = new review();
             article2.setBname(rs.getString("bname"));
             article2.setImage(rs.getString("image"));
             article2.setCnt(cnt);
             articleList2.add(article2);
             System.out.println(8888);
             cnt++;
          }
         
          request.setAttribute("articleList2",articleList2);
   
       } catch(SQLException ex){
          ex.printStackTrace();
       } finally{
          if(rs != null) try{rs.close();} catch(SQLException ex){}
          if(stmt != null) try{stmt.close();} catch(SQLException ex) {}
          
          if(conn != null) try{conn.close();} catch(SQLException ex) {}
       }
 
        return "recommend.jsp";
 
    }
}