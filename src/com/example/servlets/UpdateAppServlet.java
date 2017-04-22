package com.example.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.dao.impl.IOpsDAOImpl;
import com.example.model.ClientBean;
import com.example.model.UserBean;

public class UpdateAppServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public UpdateAppServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		String accountName = request.getParameter("accountName");
		String street1 = request.getParameter("street1");
		String street2 = request.getParameter("street2");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String zipcode = request.getParameter("zipcode");
		
		try {
			UserBean user = new UserBean(username,password);
			ClientBean client = new ClientBean(accountName,street1,street2,city,state,zipcode);
			IOpsDAOImpl impl = new IOpsDAOImpl();
			impl.updateApplication(user, client);
			response.sendRedirect(request.getContextPath() + "/Login.jsp");
		} 
		catch (SQLException e) {e.printStackTrace();}
	}
}
