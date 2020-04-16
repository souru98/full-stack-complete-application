package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDaoJDBC;
import model.User;

/**
 * Servlet implementation class UserControllers
 */
@WebServlet(urlPatterns = {"/login"})
public class UserControllers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserControllers() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/WEB-INF/views/login.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");  //get email from jsp page
		String password = request.getParameter("password");
		System.out.println(email);
		System.out.println(password);
		
		User user=new User();
		user.setEmail(email);
		user.setPassword(password);
		
		UserDaoJDBC userdao = new UserDaoJDBC();
		boolean validateUser = false;
		validateUser = userdao.findByUsernameAndPassword(email, password);
		System.out.println(validateUser);
		if(validateUser)
		{
			RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/WEB-INF/views/addReimbursement.jsp");
			rd.forward(request, response);
		
		}
		else 
		{
			RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/WEB-INF/views/login.jsp");
			rd.forward(request, response);
		}
	}
	
}

