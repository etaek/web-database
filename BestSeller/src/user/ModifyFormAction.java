package user;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.controller.CommandAction;

public class ModifyFormAction implements CommandAction {

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
            session.setAttribute("sessionModify", "false");
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
            
            return "modifypage.jsp";
         
   
      

   }

}