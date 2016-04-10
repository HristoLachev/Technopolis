package frontController.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

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

	public static Address getAddress(Integer id) throws SQLException {
		PreparedStatement ps = con.prepareStatement("SELECT * FROM Addresses WHERE idAddress=?");
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		Address tobeReturned = new Address();
		tobeReturned.setId(id);
		if (rs.next()) {
			tobeReturned.setLocation(rs.getString(2));
			tobeReturned.setCity(rs.getString(3));
			tobeReturned.setPostCode(rs.getString(4));
			tobeReturned.setFirstName(rs.getString(5));
			tobeReturned.setLastName(rs.getString(6));
			tobeReturned.setPhoneNumber(rs.getString(7));
		}
		return tobeReturned;

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

	public static ArrayList<Address> getAdressForAccount(Account acc) throws SQLException {
		PreparedStatement ps = con.prepareStatement(
				"SELECT a.* FROM accounts join accounts_has_addresses on(idAccount=Accounts_idAccount) join addresses a on(Addresses_idAddress=idAddress) where idAccount=?");
		ps.setInt(1, acc.getId());
		ResultSet rs = ps.executeQuery();
		ArrayList<Address> addresses = new ArrayList<Address>();
		while (rs.next()) {
			Address address = new Address();
			address.setId(rs.getInt(1));
			address.setLocation(rs.getString(2));
			address.setCity(rs.getString(3));
			address.setPostCode(rs.getString(4));
			address.setFirstName(rs.getString(5));
			address.setLastName(rs.getString(6));
			address.setPhoneNumber(rs.getString(7));
			addresses.add(address);
		}
		return addresses;

	}

}
