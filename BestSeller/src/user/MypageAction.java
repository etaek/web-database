
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

import user.User;
import donate.form;
import com.board.controller.CommandAction;

public class MypageAction implements CommandAction {

   public String requestPro(HttpServletRequest request,

         HttpServletResponse response) throws Throwable {

      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = null;
      Statement stmt = null;
      ResultSet rs = null;
      HttpSession session = request.getSession();
      
      try {
         
         
         String id = (String) session.getAttribute("sessionId");
         

         String jdbcDriver = "jdbc:mysql://localhost:3306/dbpj?serverTimezone=UTC&useUnicode=true&characterEncoding = euc-kr";
         String dbUser = "root";
         String dbPass = "1234";
         String query = null;

         query = "select * from user where user_id='" + id + "';";

         conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

         stmt = conn.createStatement();
         rs = stmt.executeQuery(query);

         ArrayList<User> articleList = new ArrayList<User>();

         while (rs.next()) {
            User article = new User();

            article.setName(rs.getString("name"));
            article.setAddress(rs.getString("address"));
            article.setBirth(rs.getString("rrn"));

            articleList.add(article);
         }
         request.setAttribute("articleList", articleList);
         
         
         
         query = "select * from review where user_id='" + id + "';";

         stmt = conn.createStatement();
         rs = stmt.executeQuery(query);
         
         ArrayList<review> articleList2 = new ArrayList<review>();
         int num=0;
       
        
         while (rs.next()) {
            
        	review article2 = new review();
            article2.setId(rs.getString("user_id"));
            article2.setReview(rs.getString("contents"));
            article2.setBookname(rs.getString("bname"));
            article2.setNum(num);
            articleList2.add(article2);
            num++;
         }
         
         request.setAttribute("articleList2", articleList2);
        
         query = "select * from donate where user_id='" + id + "';";

         stmt = conn.createStatement();
         rs = stmt.executeQuery(query);
         
         ArrayList<form> articleList3 = new ArrayList<form>();
   
        
         while (rs.next()) {
            
        	form article3 = new form();
            article3.setTitle(rs.getString("bookname"));
            article3.setAuthor(rs.getString("author"));
            article3.setFoundation(rs.getString("foundation"));
      
            articleList3.add(article3);
        
         }
         
         request.setAttribute("articleList3", articleList3);
         
         query = "select gift.target_id, gift.author, gift.bookname, user.name from gift,user where gift.target_id=user.user_id and gift.user_id='" + id + "';";

         stmt = conn.createStatement();
         rs = stmt.executeQuery(query);
         
         ArrayList<User> articleList4 = new ArrayList<User>();
   
        
         while (rs.next()) {
            
        	User article4 = new User();
            article4.setTarget(rs.getString("target_id"));
            article4.setName(rs.getString("name"));
            article4.setAuthor(rs.getString("author"));
            article4.setTitle(rs.getString("bookname"));
      
            articleList4.add(article4);
        
         }
         
         request.setAttribute("articleList4", articleList4);
     
      } catch (SQLException ex) {
         ex.printStackTrace();
      } finally {
         if (rs != null)
            try {
               rs.close();
            } catch (SQLException ex) {
            }
         if (stmt != null)
            try {
               stmt.close();
            } catch (SQLException ex) {
            }

         if (conn != null)
            try {
               conn.close();
            } catch (SQLException ex) {
            }
      }
         
         return "mypage.jsp";
         
      }

   

}