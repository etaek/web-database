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

import com.board.controller.CommandAction;
 
public class UserDAO implements CommandAction {
 
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
    	HttpSession session = request.getSession();
    	request.setCharacterEncoding("utf-8");
    	
    	
		String title = request.getParameter("title");
    	String author = request.getParameter("author");

    
		String id = (String) session.getAttribute("sessionId"); 
		String target=null;
		System.out.println(id);
		Connection conn = null;
    	PreparedStatement pstmt = null;    	
    	ResultSet rs = null; 
    	Statement stmt = null;	
    	String query=null;
    	try{ 		
    		Class.forName("com.mysql.cj.jdbc.Driver");
        	
        	String jdbcDriver = "jdbc:mysql://localhost:3306/dbpj?serverTimezone=UTC";
    	       
    		String dbUser = "root";
    		String dbPass = "1234";
    		
        	
    		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
    		query = "select * from user order by rand() limit 1";

            stmt = conn.createStatement();
            rs = stmt.executeQuery(query);

            while (rs.next()) {
               if(rs.getString("user_id").equals(id)) {
            	   return "gift.do";
               }
               else {
            	   target=rs.getString("user_id");
               }
            }
            System.out.println(target);
            session.setAttribute("sessionTarget", target);
      		pstmt = conn.prepareStatement("INSERT INTO gift VALUES (?,?,?,?)");
      
    				pstmt.setString(1, id);
    				pstmt.setString(2, target);
    				pstmt.setString(3, title);
    				pstmt.setString(4, author);
    		
    				pstmt.executeUpdate();
    				System.out.println(5);
    		
    	} catch(SQLException ex){
    		ex.printStackTrace();
    		System.out.println(0);
		}finally{
    		if(rs != null) try{rs.close();} catch(SQLException ex){}
    		if(stmt != null) try{stmt.close();} catch(SQLException ex) {}
    		
    		if(conn != null) try{conn.close();} catch(SQLException ex) {}
    	}
    	
 
        return "giftSuccess.jsp";
 
    }
 
}
