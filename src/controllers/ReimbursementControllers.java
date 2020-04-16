package controllers;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Timestamp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.ReimbursementDaoJDBC;
import model.Reimbursement;


/**
 * Servlet implementation class ReimbursementControllers
 */
@WebServlet("/Reimbursement")
public class ReimbursementControllers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReimbursementControllers() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/WEB-INF/views/Reimbursement.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 double amount= (double) request.getAttribute("amount");
		 String description=request.getParameter("description");
		 int type=(int) request.getAttribute("type");
		 
		 
		 
		 Reimbursement reim=new Reimbursement();
			reim.setAmount(amount);
			reim.setDescription(description);
			
			ReimbursementDaoJDBC reimdao=new ReimbursementDaoJDBC();
			reimdao.addReimbursement(reim);
			response.sendRedirect("employee-dash");
			}
	}


