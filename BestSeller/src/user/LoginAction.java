package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.controller.CommandAction;

public class LoginAction implements CommandAction{

   public String requestPro(HttpServletRequest request,
         HttpServletResponse response) throws Throwable {
      request.setCharacterEncoding("euc-kr");
      
      String id = request.getParameter("user_id");
       String password = request.getParameter("pw");       
              
       Class.forName("com.mysql.cj.jdbc.Driver");
       HttpSession session = request.getSession();
       Connection conn = null;       
       Statement stmt = null;
       ResultSet rs = null;
       Boolean isLogin = false;
       try{
       
          String jdbcDriver = "jdbc:mysql://localhost:3306/dbpj?serverTimezone=UTC";
                   //+
                //         "useUnicode=true&characterEncoding = euc-kr";
         String dbUser = "root";
         String dbPass = "1234";
         
         
         conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);         
         stmt = conn.createStatement();
         
         
         String query = "select * from user where user_id = '"+id+"' and pw = '"+password+"';";               
         
         rs = stmt.executeQuery(query);
         
         
         
      
         
         while(rs.next()){
            isLogin = true;
         }      
      
         
         if(isLogin){   
            session.setAttribute("sessionId", id);
            
         }
         if(isLogin==false){
            return "loginerror2.jsp";
         }
       } catch(SQLException ex){
          ex.printStackTrace();

       }finally{
          
          if(stmt != null) try{stmt.close();} catch(SQLException ex){}
          if(conn != null) try{conn.close();} catch(SQLException ex){}
          if(rs != null) try{rs.close();} catch(SQLException ex){}
          }                 
       return "category.do";
   }
   
}