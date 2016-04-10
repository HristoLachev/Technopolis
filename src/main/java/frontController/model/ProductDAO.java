package frontController.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductDAO {
	private static Connection con = DBConnection.getConnection();

	public static ArrayList<Product> getProducts(String type, String model, Integer min, Integer max)
			throws SQLException {
		ArrayList<Product> products = new ArrayList<Product>();
		String defaultSearch = "SELECT * FROM Products WHERE idProduct is not null";
		if (type != null) {
			defaultSearch = defaultSearch.concat(" AND name like('%" + type + "%')");
		}
		if (model != null) {
			defaultSearch = defaultSearch.concat(" AND name like('%" + model + "%')");
		}
		if (min != null) {
			defaultSearch = defaultSearch.concat(" AND price>" + min);
		}
		if (max != null) {
			defaultSearch = defaultSearch.concat(" AND price<" + max);
		}
		PreparedStatement ps = con.prepareStatement(defaultSearch);
		ResultSet rs = ps.executeQuery();
		while (rs.next() == true) {
			Product toBeInserted = new Product();
			toBeInserted.setId(rs.getInt(1));
			toBeInserted.setName(rs.getString(2));
			toBeInserted.setPrice(rs.getInt(3));
			toBeInserted.setQuantity((rs.getInt(4)));
			toBeInserted.setImage(rs.getString(5));
			setDescriptions(toBeInserted);
			products.add(toBeInserted);
		}
		return products;

	}

	public static ArrayList<Product> getProductsByType(String type) throws SQLException {
		ArrayList<Product> products = new ArrayList<Product>();
		PreparedStatement ps = con.prepareStatement("SELECT * FROM Products WHERE name like('%" + type + "%');");
		ResultSet rs = ps.executeQuery();
		while (rs.next() == true) {
			Product toBeInserted = new Product();
			toBeInserted.setId(rs.getInt(1));
			toBeInserted.setName(rs.getString(2));
			toBeInserted.setPrice(rs.getInt(3));
			toBeInserted.setQuantity((rs.getInt(4)));
			toBeInserted.setImage(rs.getString(5));
			setDescriptions(toBeInserted);
			products.add(toBeInserted);
		}
		return products;

	}

	public static ArrayList<Product> getProductsByModel(String model) throws SQLException {
		ArrayList<Product> products = new ArrayList<Product>();
		PreparedStatement ps = con.prepareStatement("SELECT * FROM Products WHERE name like('%" + model + "%');");
		ResultSet rs = ps.executeQuery();
		while (rs.next() == true) {
			Product toBeInserted = new Product();
			toBeInserted.setId(rs.getInt(1));
			toBeInserted.setName(rs.getString(2));
			toBeInserted.setPrice(rs.getInt(3));
			toBeInserted.setQuantity((rs.getInt(4)));
			toBeInserted.setImage(rs.getString(5));
			setDescriptions(toBeInserted);
			products.add(toBeInserted);
		}
		return products;

	}

	public static ArrayList<Product> getProductsByPrice(Integer min, Integer max) throws SQLException {
		ArrayList<Product> products = new ArrayList<Product>();
		PreparedStatement ps = con.prepareStatement("SELECT * FROM Products WHERE price>? nad price<?");
		ps.setInt(1, min);
		ps.setInt(1, max);
		ResultSet rs = ps.executeQuery();
		while (rs.next() == true) {
			Product toBeInserted = new Product();
			toBeInserted.setId(rs.getInt(1));
			toBeInserted.setName(rs.getString(2));
			toBeInserted.setPrice(rs.getInt(3));
			toBeInserted.setQuantity((rs.getInt(4)));
			toBeInserted.setImage(rs.getString(5));
			setDescriptions(toBeInserted);
			products.add(toBeInserted);
		}
		return products;

	}

	public static Product getProductById(Integer id) throws SQLException {
		PreparedStatement ps = con.prepareStatement("SELECT * FROM Products WHERE idProduct=?");
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		if (rs.next() == true) {
			Product product = new Product();
			product.setId(rs.getInt(1));
			product.setName(rs.getString(2));
			product.setPrice(rs.getInt(3));
			product.setQuantity(rs.getInt(4));
			product.setImage(rs.getString(5));
			setDescriptions(product);
			return product;
		}

		return null;

	}

	public static Product buyProduct(Integer id) throws SQLException, ProductOutOfQuantityException {
		 PreparedStatement ps = con.prepareStatement("SELECT * FROM Products WHERE idProduct=?");
		  ps.setInt(1, id);
		  ResultSet rs = ps.executeQuery();
		  if (rs.next() == true) {
		   Product product = new Product();
		   product.setId(rs.getInt(1));
		   product.setName(rs.getString(2));
		   product.setPrice(rs.getInt(3));
		   product.setQuantity(rs.getInt(4));
		   product.setImage(rs.getString(5));
		   if(product.getQuantity()==0){
		    throw new ProductOutOfQuantityException();   
		   }
		   else{
		    product.setQuantity(1);
		    Integer newQuantity=rs.getInt(4)-1;
		    PreparedStatement reduceQuantity=con.prepareStatement("UPDATE products SET quantity=? where idProduct=?");
		    reduceQuantity.setInt(1, newQuantity);
		    reduceQuantity.setInt(2, id);
		    reduceQuantity.executeUpdate();
		   }
		   return product;
		  }

		  return null;

	}
	
	public static void setDescriptions(Product product) throws SQLException {
		PreparedStatement ps = con.prepareStatement(
				"SELECT description FROM products" + " join products_has_descriptions on(idProduct=products_idProduct)"
						+ "join descriptions on(Descriptions_idDescriptions=idDescriptions)" + "where idProduct=?");
		ps.setInt(1, product.getId());
		ResultSet rs = ps.executeQuery();
		while (rs.next() == true) {
			product.addDescription(rs.getString(1));
		}

	}

}
