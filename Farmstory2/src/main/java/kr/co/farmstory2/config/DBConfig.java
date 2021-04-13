package kr.co.farmstory2.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConfig {
	
	//½Ì±ÛÆû °´Ã¼
	private static DBConfig instance = new DBConfig();
	private DBConfig() {}
	
	public static DBConfig getInstance() {
		return instance;
	}
	
	//DBÁ¤º¸
	
	private final String HOST = "jdbc:mysql://192.168.10.114:3306/lhj";
	private final String USER = "lhj";
	private final String PASS = "1234";
	
	public Connection getConnection() throws Exception {
		//1
		Class.forName("com.mysql.jdbc.Driver");
		//2
		Connection conn = DriverManager.getConnection(HOST, USER, PASS);
		
		return conn;
	}
}
