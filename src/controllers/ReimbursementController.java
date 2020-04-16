package controllers;



import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Reimbursement;
import services.ReimbursementService;

public class ReimbursementController {
	
	private ReimbursementService rs = new ReimbursementService();

	// used to decide what happens when the server sends a POST request
	public void processPost(HttpServletRequest request, HttpServletResponse response) {
		String actualURL = request.getRequestURI().substring(request.getContextPath().length());
		
		switch(actualURL) {
		case "/reimbursements/add":
			add(request,response);
			break;
		case "/reimbursements/approve":
			approve(request,response);
			break;
		case "/reimbursements/deny":
			deny(request,response);
			break;
		}
	}

	// used to decide what happens when the server sends a GET request
	public void processGet(HttpServletRequest request, HttpServletResponse response) {
		String actualURL = request.getRequestURI().substring(request.getContextPath().length());
	
		switch(actualURL) {
		case "/reimbursements/all":
			displayAll(request,response);
			break;
		case "/reimbursements/user":
			getUserReimbursements(request,response);
			break;
		}
	}
	
	// method used to display reimbursements for a specific user on the webpage
	// converts the reimbursements to json and sends to server
	private void getUserReimbursements(HttpServletRequest request, HttpServletResponse response) {
		String json;
		List<Reimbursement> userReimb = rs.getByUser((Integer)request.getSession().getAttribute("user"));
				
		
	}

	// method used to display all reimbursements on the webpage
	// converts the reimbursements to json and sends back to server
	private void displayAll(HttpServletRequest request, HttpServletResponse response) {
				List<Reimbursement> allReimb = rs.getAllReimb();
		
		
	}
	
	// used to add a reimbursement takes info from client and creates a reimbursement 
	// to be sent to the database
	private void add(HttpServletRequest request, HttpServletResponse response) {
		
	}
	
	private void approve(HttpServletRequest request, HttpServletResponse response) {
		
	}
	
	private void deny(HttpServletRequest request, HttpServletResponse response) {
		String json;
		
	}
}
