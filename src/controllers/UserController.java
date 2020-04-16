package controllers;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDaoJDBC;
import model.User;
import services.UserService;


public class UserController {
	
	private UserService us = new UserService();
	
	// handles all GET requests from the servlet
	public void processGet(HttpServletRequest request, HttpServletResponse response) {
		String actualURL = request.getRequestURI().substring(request.getContextPath().length());
		
		switch(actualURL) {
		case "/users/logout":
			logout(request,response);
			break;
		}
	}

	// handles all post requests that will need to reach the database for verification
	public void processPost(HttpServletRequest request, HttpServletResponse response) {
		String actualURL = request.getRequestURI().substring(request.getContextPath().length());
		
		switch(actualURL) {
		case "/users/login":
			login(request,response);
			break;
		case "/users/register":
			register(request,response);
			break;
		}
	}

	// used to handle the logic for registering a user with the database
	private void register(HttpServletRequest request, HttpServletResponse response) {
		
	}

	// used to handle the logic for logging into the system, checks database to make sure user exists
//	private void login(HttpServletRequest request, HttpServletResponse response) {
//		String email = request.getParameter("email");  //get email from jsp page
//		String password = request.getParameter("password");
//		
//		User user=new User();
//		user.setEmail(email);
//		user.setPassword(password);
//		
//		UserDaoJDBC userdao = new UserDaoJDBC();
//		boolean validateUser = false;
//		try {
//			validateUser = userdao.findByUsernameAndPassword(User);
//		} catch (ClassNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		if(validateUser)
//		{
//			RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/WEB-INF/views/addReimbursement.jsp");
//			rd.forward(request, response);
//		
//		}
//		else 
//		{
//			RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/WEB-INF/views/login.jsp");
//			rd.forward(request, response);
//		}
//	}
//	
//
//
//	}
	
	// used to logout the user out of the current session, just sets attribute to null
	private void logout(HttpServletRequest request, HttpServletResponse response) {
		request.getSession().setAttribute("user", null);
	}
}
