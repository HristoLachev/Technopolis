package com.frontController.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AccountDAO {

	public static Account getAcc(String email, String password) throws InvalidUserNameOrPasswordExeption, SQLException {
		// if(1==1)
		// throw new InvalidUserNameOrPasswordExeption();
		Connection con = DBConnection.getConnection();
		PreparedStatement ps;

		ps = con.prepareStatement(
				"SELECT email,first_name,last_name,password FROM Accounts WHERE email=? AND password=?;");
		ps.setString(1, email);
		ps.setString(2, password);
		ResultSet rs = ps.executeQuery();
		if (rs.next() == false) {
			throw new InvalidUserNameOrPasswordExeption();
		} else {
			String firstName = rs.getString(2);
			String lastName = rs.getString(2);
			return new Account(email, password, firstName, lastName);
		}

	}
	
}
