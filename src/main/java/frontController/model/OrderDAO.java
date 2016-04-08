package frontController.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class OrderDAO {
	private static Connection con = DBConnection.getConnection();

	public static ArrayList<Order> getOrdersTrueForAccount(Account acc) throws SQLException {
		PreparedStatement ps = con.prepareStatement("SELECT * FROM Orders WHERE idAccount=? and status=1 ;");
		ps.setInt(1, acc.getId());
		ResultSet rs = ps.executeQuery();
		ArrayList<Order> orders = new ArrayList<Order>();
		while (rs.next()) {
			Order order = new Order();
			order.setId(rs.getInt(1));
			order.setAccount(acc);
			order.setStatus(rs.getBoolean(2));
			order.setAddress(AddressDAO.getAddress(rs.getInt(4)));
			getProductsForOrder(order);
			orders.add(order);
		}
		return orders;

	}

	public static ArrayList<Order> getOrdersFalseForAccount(Account acc) throws SQLException {
		PreparedStatement ps = con.prepareStatement("SELECT * FROM Orders WHERE idAccount=? and status=0;");
		ps.setInt(1, acc.getId());
		ResultSet rs = ps.executeQuery();
		ArrayList<Order> orders = new ArrayList<Order>();
		while (rs.next()) {
			Order order = new Order();
			order.setId(rs.getInt(1));
			order.setAccount(acc);
			order.setStatus(rs.getBoolean(2));
			order.setAddress(AddressDAO.getAddress(rs.getInt(4)));
			getProductsForOrder(order);
			orders.add(order);
		}
		return orders;

	}
	
	private static void getProductsForOrder(Order order) throws SQLException {
		PreparedStatement ps = con.prepareStatement(
				"SELECT idOrder,idProduct,name,price,bought_quantity from orders join orders_has_products on(idOrder=orders_idOrder) join products on(products_idProduct=idProduct) where idOrder=1");
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			Product product = new Product();
			product.setId(rs.getInt(2));
			product.setName(rs.getString(3));
			product.setPrice(rs.getInt(4));
			product.setQuantity(rs.getInt(5));
			ProductDAO.setDescriptions(product);
			order.addProduct(product);
		}

	}

	public static void executeOrder(Account acc, Address address) throws SQLException {
		if (acc != null && address != null) {
			PreparedStatement ps = con.prepareStatement("INSERT INTO Orders VALUES(null,0,?,?);",
					Statement.RETURN_GENERATED_KEYS);
			ps.setInt(1, acc.getId());
			ps.setInt(2, address.getId());
			ps.executeUpdate();
			ResultSet rs = ps.getGeneratedKeys();
			rs.next();
			Integer orderId = rs.getInt(1);

			ArrayList<Product> productsToBeBought = acc.getBasket();
			Order order = new Order();
			order.setId(orderId);
			order.setAccount(acc);
			order.setAddress(address);
			order.setStatus(false);
			order.setBasket(productsToBeBought);
			acc.addToOrders(order);
			for (Product product : productsToBeBought) {
				PreparedStatement mapProducts = con.prepareStatement("INSERT INTO orders_has_products VALUES(?,?,?);");
				mapProducts.setInt(1, orderId);
				mapProducts.setInt(2, product.getId());
				mapProducts.setInt(3, product.getQuantity());
				mapProducts.executeUpdate();
			}
			acc.setBasket(new ArrayList<Product>());

		}
	}

}
