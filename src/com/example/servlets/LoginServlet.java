package com.example.servlets;
import com.example.connection.JDBCUtilities;
import com.example.dao.impl.IOpsDAOImpl;
import com.example.model.UserBean;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
   
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		try{
			Connection con = JDBCUtilities.getConnection();
			String username = request.getParameter("username");  
		    String password = request.getParameter("password");  
		    UserBean user = new UserBean(username,password);
		    IOpsDAOImpl impl = new IOpsDAOImpl();
		    impl.authenticate(user);
		    if(user.isValid()){  
		    	PreparedStatement ps = con.prepareStatement("select role from users where username=? and password=?");
		    	ps.setString(1,username);
		    	ps.setString(2,password);
		    	ResultSet rs = ps.executeQuery();
		    	HttpSession session = request.getSession(true);	    
		        session.setAttribute("currentSessionUser",user);
		        if(rs.next()){
		        	String role = rs.getString("role");
		        	if("admin".equals(role)){
		        		response.sendRedirect(request.getContextPath() + "/AdminHome.jsp");
		        	}
		        	else if("user".equals(role)){
		        		response.sendRedirect(request.getContextPath() + "/ClientHome.jsp");
		        	}
		        }
		    }
		    else{   
		    	 response.sendRedirect(request.getContextPath() + "/Login.jsp");
			}    
		}
		catch (Throwable e){System.out.println(e);}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException {
		doGet(request, response);
	}
}
