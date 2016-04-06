package com.frontController.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class AddressDAO {
	private static Connection con = DBConnection.getConnection();

	public static Address registerAddress(Address gotten, Integer AccountId) throws SQLException {

		Address checked = checkAddress(gotten);
		if (checked == null) {
			PreparedStatement inesrtAddress = con.prepareStatement("INSERT INTO Addresses VALUES(null,?,?,?,?,?,?);",
					Statement.RETURN_GENERATED_KEYS);
			inesrtAddress.setString(1, gotten.getLocation());
			inesrtAddress.setString(2, gotten.getCity());
			inesrtAddress.setString(3, gotten.getPostCode());
			inesrtAddress.setString(4, gotten.getFirstName());
			inesrtAddress.setString(5, gotten.getLastName());
			inesrtAddress.setString(6, gotten.getPhoneNumber());
			inesrtAddress.executeUpdate();
			ResultSet rs = inesrtAddress.getGeneratedKeys();
			rs.next();
			Integer newAddressId = rs.getInt(1);
			PreparedStatement insertConnection = con
					.prepareStatement("INSERT INTO Accounts_has_Addresses VALUES(?,?);");
			insertConnection.setInt(1, AccountId);
			insertConnection.setInt(2, newAddressId);
			insertConnection.executeUpdate();
			gotten.setId(newAddressId);
			return gotten;
		} else {
			if (!(checkAddressHasAccount(AccountId, checked.getId()))) {
				PreparedStatement insertConnection = con
						.prepareStatement("INSERT INTO Accounts_has_Addresses VALUES(?,?);");
				insertConnection.setInt(1, AccountId);
				insertConnection.setInt(2, checked.getId());
				insertConnection.executeUpdate();
				return checked;
			} else {
				return checked;
			}
		}

	}

	private static Address checkAddress(Address toBeChecked) throws SQLException {
		PreparedStatement checkAddress = con.prepareStatement(
				"SELECT * FROM Addresses WHERE location=? and city=? and post_code=? and first_name=? and last_name=?");
		checkAddress.setString(1, toBeChecked.getLocation());
		checkAddress.setString(2, toBeChecked.getCity());
		checkAddress.setString(3, toBeChecked.getPostCode());
		checkAddress.setString(4, toBeChecked.getFirstName());
		checkAddress.setString(5, toBeChecked.getLastName());
		ResultSet rs = checkAddress.executeQuery();
		if (rs.next() == false) {
			return null;
		}
		toBeChecked.setId(rs.getInt(1));
		return toBeChecked;
	}

	private static boolean checkAddressHasAccount(Integer AccId, Integer AddressId) throws SQLException {
		PreparedStatement checkConnection = con.prepareStatement(
				"SELECT * FROM Accounts_has_Addresses WHERE Accounts_idAccount=? AND Addresses_idAddress=?;");
		checkConnection.setInt(1, AccId);
		checkConnection.setInt(2, AddressId);
		ResultSet rs = checkConnection.executeQuery();
		if (rs.next() == false) {
			return false;
		}
		return true;

	}

}
