package donate;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.controller.CommandAction;

import user.User;


public class countDAO implements CommandAction{
	
	Connection conn = null;
	PreparedStatement pstmt = null;  
	ResultSet rs = null;
	
	    public String requestPro(HttpServletRequest request,
	 
	    HttpServletResponse response) throws Throwable {
	    	
	    	request.setCharacterEncoding("utf-8");
	    
			//String name = request.getParameter("name");
	    	//String title = request.getParameter("title");
	    	//String author = request.getParameter("author");
	   
	    	Class.forName("com.mysql.cj.jdbc.Driver");
	    	try{ 		
	        	System.out.println(1);
	    		String jdbc_url = "jdbc:mysql://localhost:3306/dbpj?serverTimezone=UTC"; 
	    		       //+
						//			"useUnicode=true&characterEncoding = euc-kr";
				String dbUser = "root";
				String dbPass = "1234";	 
				conn=DriverManager.getConnection(jdbc_url,dbUser,dbPass);
				System.out.println(2);
				 pstmt = conn.prepareStatement("select user_id,count(user_id) as count from donate group by user_id order by count(user_id) desc limit 3;");
				 int num=0;
		         rs = pstmt.executeQuery();
		         ArrayList<User> articleList = new ArrayList<User>();  
		            while(rs.next()){
		            	User article = new User();
		            	article.setName(rs.getString("user_id"));
		                article.setCount(rs.getInt("count"));
		                article.setNum(num);
		                articleList.add(article);
		                num++;
		            }
		            request.setAttribute("articleList", articleList);
		            //System.out.println("name");
		           //System.out.println("count");
	    	} catch(SQLException ex){
	    		ex.printStackTrace();
	    		System.out.println(0000);
	    	}finally{
	            if(rs!=null)try{rs.close();}catch(SQLException ex){}
	            if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
	        }
	    	
	    	return "donation.jsp";
	    }  
	}
