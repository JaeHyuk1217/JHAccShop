package order;



import java.sql.Connection;

import java.sql.PreparedStatement;

import java.sql.ResultSet;



import javax.naming.Context;

import javax.naming.InitialContext;

import javax.sql.DataSource;



public class OrderManager {

	private Connection conn;

	private PreparedStatement pstmt;

	private ResultSet rs;

	private DataSource ds;

	

	public OrderManager() {

		try {

			Context context = new InitialContext();

			ds = (DataSource)context.lookup("com.mysql.jdbc.Driver");

		} catch (Exception e) {

			System.out.println("connect err : " + e);

		}

	}



}
