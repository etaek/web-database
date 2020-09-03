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
 
public class MessageAction implements CommandAction {
 
	 public String requestPro(HttpServletRequest request,
			 
			    HttpServletResponse response) throws Throwable {
			    	HttpSession session = request.getSession();
			    	request.setCharacterEncoding("utf-8");
			    	
			    	
					String comments = request.getParameter("comments");
			 
					String opt= request.getParameter("select");
					System.out.println(opt);
					String id = (String) session.getAttribute("sessionId"); 
					System.out.println(id);
					Connection conn = null;
			    	PreparedStatement pstmt = null;    	
			    	ResultSet rs = null; 
			    	Statement stmt = null;	
			    	int count=0;
			    	try{ 		
			    		Class.forName("com.mysql.cj.jdbc.Driver");
			        	
			        	String jdbcDriver = "jdbc:mysql://localhost:3306/dbpj?serverTimezone=UTC";
			    	       
			    		String dbUser = "root";
			    		String dbPass = "1234";
			    		
			        	
			    		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			    	
			      		pstmt = conn.prepareStatement("INSERT INTO message VALUES (NULL,?,?,?)");
			      				
			      			
			    				pstmt.setString(1, comments);
			    				pstmt.setString(2, id);
			    				pstmt.setString(3, opt);
			    		
			    				pstmt.executeUpdate();
			    				System.out.println(5);
			    				count++;
			    	} catch(SQLException ex){
			    		ex.printStackTrace();
			    		System.out.println(0);
					}finally{
			    		if(rs != null) try{rs.close();} catch(SQLException ex){}
			    		if(stmt != null) try{stmt.close();} catch(SQLException ex) {}
			    		
			    		if(conn != null) try{conn.close();} catch(SQLException ex) {}
			    	}
			    	
			 
			        return "categorySuccess.jsp";
			 
			    }
			 
			}
