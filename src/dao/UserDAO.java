package dao;

import java.util.List;

import beans.User;



public interface UserDAO {
	
	// grabs a user from the database by the UserId
	User getUserbyId(int id);
	
	// gets all users from the database
	List<User> retrieveAllUsers();
	
	// adds a new User to the database
	int addUser(User u);

	// finds a user by username and password for logging into the system
	User findByUsernameAndPassword(String username, String password);
}
