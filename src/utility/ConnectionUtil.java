package utility;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionUtil {
	
	private static ConnectionUtil conUtil= new ConnectionUtil();
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}
		catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	private ConnectionUtil() {
		super();
	}
	
	public static ConnectionUtil getConnectionUtil() {
		return conUtil;
	}
	
	// gets the connection from the database.properties file
	public static Connection getConnection() throws SQLException{
		Properties prop = new Properties();
		try {
			InputStream dbProps = ConnectionUtil.class.getClassLoader().getResourceAsStream("jdbc.properties");
			prop.load(dbProps);
		} 
		catch (IOException e) {
			e.printStackTrace();
		}
		return DriverManager.getConnection(prop.getProperty("url"), prop.getProperty("username"), prop.getProperty("password"));
	}
}
