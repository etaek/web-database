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
 
public class JoinAction implements CommandAction {
 
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
    	
    	request.setCharacterEncoding("utf-8");
    	
       	
		String id = request.getParameter("user_id");
    	String password = request.getParameter("pw");
    	String name = request.getParameter("name");
    	String address= request.getParameter("address");
    	String birth = request.getParameter("birth");

    	Class.forName("com.mysql.jdbc.Driver");
    	

    	Connection conn = null;
    	PreparedStatement pstmt = null;    	
    	Statement stmt = null;
        ResultSet rs = null;

    	String query=null;
    	

    	boolean exist=false;
    	try{ 		
     
    		String jdbc_url = "jdbc:mysql://localhost:3306/dbpj?serverTimezone=UTC"; 
    		       //+
					//			"useUnicode=true&characterEncoding = euc-kr";
			String dbUser = "root";
			String dbPass = "1234";
		
			
			conn=DriverManager.getConnection(jdbc_url,dbUser,dbPass);
		      query = "select user_id from user ";

		       

		         stmt = conn.createStatement();
		         rs = stmt.executeQuery(query);

		         while (rs.next()) {
		            if(rs.getString("user_id").equals(id)) {
		            	exist=true;
		            }
		         }
		         
		    if(exist!=true) {
      		pstmt = conn.prepareStatement("insert into user values(?,?,?,?,?)");
      	
    				pstmt.setString(1, id);
    				pstmt.setString(2, name);
    				pstmt.setString(3, address);
    				pstmt.setString(4, password);
    				pstmt.setString(5, birth);
    			
    
    				pstmt.executeUpdate();
    			
    		
    		HttpSession session = request.getSession();
    		
    		//session.setAttribute("id", id);	
		    }
    	} catch(SQLException ex){
    		ex.printStackTrace();
			
		}finally{
			
    		if(pstmt != null) try{pstmt.close();} catch(SQLException ex){}
    		if(conn != null) try{conn.close();} catch(SQLException ex){}
    		}
    	
    	if(exist==true) {
    		return "joinerror.jsp";
    	}
    	else {
    		return "joinsuccess.jsp";
    	}
 
    }
 
}