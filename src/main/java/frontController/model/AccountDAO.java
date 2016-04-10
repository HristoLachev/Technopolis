package frontController.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

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
			Account acc = new Account(id, firstName, lastName, email, password, phoneNumber, null, null);
			ArrayList<Order> orderFalse = OrderDAO.getOrdersFalseForAccount(acc);
			ArrayList<Order> orderTrue = OrderDAO.getOrdersTrueForAccount(acc);
			acc.setOrdersFalse(orderFalse);
			acc.setOrdersTrue(orderTrue);
			return acc;
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

	public static void passwordChange(Account acc, String password) throws SQLException {
		PreparedStatement ps = con.prepareStatement("UPDATE accounts SET password=? WHERE idAccount=?;");
		ps.setString(1, password);
		ps.setInt(2, acc.getId());
		ps.executeUpdate();
		acc.setPassword(password);

	}

	public static void firstNameChange(Account acc, String firstName) throws SQLException {
		PreparedStatement ps = con.prepareStatement("UPDATE accounts SET first_name=? WHERE idAccount=?;");
		ps.setString(1, firstName);
		ps.setInt(2, acc.getId());
		ps.executeUpdate();
		acc.setFirstName(firstName);

	}

	public static void lastNameChange(Account acc, String lastName) throws SQLException {
		PreparedStatement ps = con.prepareStatement("UPDATE accounts SET last_name=? WHERE idAccount=?;");
		ps.setString(1, lastName);
		ps.setInt(2, acc.getId());
		ps.executeUpdate();
		acc.setLastName(lastName);

	}

	public static void emailChange(Account acc, String email) throws SQLException {
		PreparedStatement ps = con.prepareStatement("UPDATE accounts SET email=? WHERE idAccount=?;");
		ps.setString(1, email);
		ps.setInt(2, acc.getId());
		ps.executeUpdate();
		acc.setEmail(email);

	}

	public static void phoneNumberChange(Account acc, String phoneNumber) throws SQLException {
		PreparedStatement ps = con.prepareStatement("UPDATE accounts SET phone_number=? WHERE idAccount=?;");
		ps.setString(1, phoneNumber);
		ps.setInt(2, acc.getId());
		ps.executeUpdate();
		acc.setPhoneNumber(phoneNumber);

	}
}
