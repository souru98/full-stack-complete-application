package services;

import beans.User;
import dao.UserDAO;
import dao.UserDaoJDBC;

public class UserService {

	private UserDAO ud = new UserDaoJDBC();
	
	// logs a user into the system
	public User login(User u) {
		return ud.findByUsernameAndPassword(u.getUsername(), u.getPassword());
	}
	
	// registers a new user to the system
	public int register(User u) {
		return ud.addUser(u);
	}
}