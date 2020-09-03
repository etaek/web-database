/**
 * ����Ʈ�� �����ֱ� ���� Action
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

import user.User;
import com.board.controller.CommandAction;
 
public class ListAction implements CommandAction {
	
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
 
    	Class.forName("com.mysql.jdbc.Driver");    	    
    	Connection conn = null;
    	Statement stmt = null;
    	ResultSet rs = null;    	
    	
    	
    	
  
    	try {
    		HttpSession session = request.getSession();
	     		
    		String id=(String)session.getAttribute("sessionId");
    		String target=(String)session.getAttribute("sessionTarget");
    		String jdbcDriver = "jdbc:mysql://localhost:3306/dbpj?serverTimezone=UTC";
    		   
    		String dbUser = "root";
    		String dbPass = "1234";
    		String query = null; 
    		int count=0;
    		
    	
    		query = "SELECT user.name,user.address FROM user,gift where user.user_id=gift.target_id and gift.target_id ='"+target+"'";
    	
    		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
    		
    		stmt = conn.createStatement();    		
    		rs = stmt.executeQuery(query);    		
    		
    		ArrayList<User> articleList = new ArrayList<User>();    		
    		
    		while(rs.next()){
    			User article = new User();
    			article.setName(rs.getString("name"));
    			article.setAddress(rs.getString("address"));
    			articleList.add(article);
    		}
    		
    		request.setAttribute("articleList",articleList);
    		
    	
    	
		
	} catch(SQLException ex){
		ex.printStackTrace();
	} finally{
		if(rs != null) try{rs.close();} catch(SQLException ex){}
		if(stmt != null) try{stmt.close();} catch(SQLException ex) {}
		
		if(conn != null) try{conn.close();} catch(SQLException ex) {}
	}

    return "list.jsp";

}
    
    
 
}