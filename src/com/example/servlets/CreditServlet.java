package com.example.servlets;
import java.io.IOException;
import java.util.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.dao.impl.IOpsDAOImpl;
import com.example.model.ApplicationBean;


public class CreditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public CreditServlet() {
        super();
    }
    public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int clientid = Integer.parseInt(request.getParameter("clientid"));
		String applicationStatus = "null";
		float income = Float.parseFloat(request.getParameter("income"));
		float creditLimitRequest = Float.parseFloat(request.getParameter("creditlimit"));
		try {
			Date date = new SimpleDateFormat("dd-MM-yyyy").parse(request.getParameter("requestdate"));
			java.sql.Date sqldate = new java.sql.Date(date.getTime());
			
			ApplicationBean app = new ApplicationBean(clientid,applicationStatus,sqldate,income,creditLimitRequest);
			IOpsDAOImpl impl = new IOpsDAOImpl();
			impl.submitRequest(app);
			response.sendRedirect(request.getContextPath() + "/index.jsp");
		}
		catch(Exception e){e.printStackTrace();}
	}

}
