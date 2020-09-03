/**
 * �Խ��� �����ϴ� Action
 */
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
import user.User;
import com.board.controller.CommandAction;
 
public class DeleteAction implements CommandAction {
 

	public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
    	
    	request.setCharacterEncoding("euc-kr");
    	Class.forName("com.mysql.jdbc.Driver");
 
    	String url = "jdbc:mysql://localhost:3306/dbpj?serverTimezone=UTC";
    	String dbUser = "root";
    	String dbPass = "1234";
    	int num=0;
   
    	Statement stmt = null;
    	Connection conn = null;
    	try{
    		HttpSession session = request.getSession();
        	
    		if(session.getAttribute("sessionId") == null){
    			return "loginerror.jsp";
    		}
    
    	
    		String book = request.getParameter("bname");
    		System.out.println(book);
    		 String id = (String) session.getAttribute("sessionId");
    	      System.out.println(id);


    		  System.out.println(num);
    		conn = DriverManager.getConnection(url,dbUser,dbPass);
    		stmt = conn.createStatement();
    		   			
    			String sql = "DELETE FROM review WHERE user_id='" + id+"'and bname='"+book+"'";	    	
    	
    			stmt.executeUpdate(sql);	    			
    			
    			stmt.close();
    			conn.close();
    			
    	 	} catch(SQLException e) {
    	 		e.printStackTrace();
    		} finally{        		
        		if(stmt != null) try{stmt.close();} catch(SQLException ex) {}        		
        		if(conn != null) try{conn.close();} catch(SQLException ex) {}
        	}

    	
 
        return "confirm.jsp";
 
    }
 
}