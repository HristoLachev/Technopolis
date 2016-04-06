package com.frontController.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class AccountDAO {

	private static Connection con = DBConnection.getConnection();

	public static Account getAcc(String email, String password) throws SQLException, InvalidEmailOrPasswordExeption {
		PreparedStatement ps = con.prepareStatement("SELECT * FROM Accounts WHERE email=? AND password=?;");
		ps.setString(1, email);
		ps.setString(2, password);
		ResultSet rs = ps.executeQuery();
		if (rs.next() == false) {
			throw new InvalidEmailOrPasswordExeption();
		} else {
			Integer id = rs.getInt(1);
			String firstName = rs.getString(2);
			String lastName = rs.getString(3);
			String phoneNumber = rs.getString(6);
			return new Account(id,firstName, lastName, email, password, phoneNumber);
		}

	}

	public static Account registerAcc(Account gotten) throws SQLException, EmailTakenExeption {
		PreparedStatement psEmail = con.prepareStatement("SELECT email FROM Accounts where email=?");
		psEmail.setString(1, gotten.getEmail());
		ResultSet rsEmail = psEmail.executeQuery();
		if (rsEmail.next() == false) {
			PreparedStatement ps = con.prepareStatement("INSERT INTO Accounts VALUES(null,?,?,?,?,?);",
					Statement.RETURN_GENERATED_KEYS);
			ps.setString(1, gotten.getFirstName());
			ps.setString(2, gotten.getLastName());
			ps.setString(3, gotten.getEmail());
			ps.setString(4, gotten.getPassword());
			ps.setString(5, gotten.getPhoneNumber());
			ps.executeUpdate();
			ResultSet rs = ps.getGeneratedKeys();
			rs.next();
			Integer newAccountId = rs.getInt(1);
			gotten.setId(newAccountId);
			return gotten;

		} else {
			throw new EmailTakenExeption();
		}

	}
}
