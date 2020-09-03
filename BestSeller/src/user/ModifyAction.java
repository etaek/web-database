
package user;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.controller.CommandAction;
 
public class ModifyAction implements CommandAction {
 
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
       
       Class.forName("com.mysql.cj.jdbc.Driver");
       String url = "jdbc:mysql://localhost:3306/dbpj?serverTimezone=UTC";
       String dbUser = "root";
       String dbPass = "1234";
       Connection conn = null;
       Statement stmt = null;              
          try{
             
             HttpSession session = request.getSession();
             String id = (String) session.getAttribute("sessionId");
             System.out.println(id);
           
             
             request.setCharacterEncoding("utf-8");
             
                      
             String birth = request.getParameter("birth");       
             String name = request.getParameter("name");       
             String address = request.getParameter("address");
             
             
             conn = DriverManager.getConnection(url,dbUser,dbPass);                                       
                   
             stmt = conn.createStatement();
             System.out.println(4);             
             String sql = "UPDATE user SET name='" + name + "' ,address='"+ address +  "' ,rrn='"+ birth +                   
                  "' WHERE user_id='" + id+"';";      
             stmt.executeUpdate(sql);    
             stmt.close();
             conn.close();             
             
     } catch(SQLException e) {
       System.out.println( e.toString() );
    } finally{       
       if(stmt != null) try{stmt.close();} catch(SQLException ex){}         
      if(conn != null) try{conn.close();} catch(SQLException ex){}
      }
       
       
        return "myinfo.do";
 
    }
 
}