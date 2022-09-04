package product;



import java.sql.Connection;

import java.sql.PreparedStatement;

import java.sql.ResultSet;



import javax.naming.Context;

import javax.naming.InitialContext;

import javax.sql.DataSource;



public class ProductManager {

	private Connection conn;

	private PreparedStatement psmt;

	private ResultSet rs;

	private DataSource ds;

	

	public ProductManager() {

		try {

			Context context = new InitialContext();

			ds = (DataSource)context.lookup("com.mysql.jdbc.Driver");

		} catch (Exception e) {

			System.out.println("connect err : " + e);

		}

	}

	

}
