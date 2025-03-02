package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtil {
	public static Connection getConnection() {
		try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://203.228.38.206:3333/tax-investigation?";
            String user="root";
            String password = "qq3463af";            
            return DriverManager.getConnection(url, user, password);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
