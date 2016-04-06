package com.frontController.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductDAO {
	private static Connection con = DBConnection.getConnection();

	public static ArrayList<Product> getProductsByType(String type) throws SQLException {
		ArrayList<Product> products = new ArrayList<Product>();
		PreparedStatement ps = con.prepareStatement("SELECT * FROM Products WHERE name like('" + type + "%');");
		ResultSet rs = ps.executeQuery();
		while (rs.next() == true) {
			Product toBeInserted = new Product();
			toBeInserted.setId(rs.getInt(1));
			toBeInserted.setName(rs.getString(2));
			toBeInserted.setPrice(rs.getString(3));
			toBeInserted.setQuantity((rs.getInt(4)));
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
			toBeInserted.setPrice(rs.getString(3));
			toBeInserted.setQuantity((rs.getInt(4)));
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
			toBeInserted.setPrice(rs.getString(3));
			toBeInserted.setQuantity((rs.getInt(4)));
			setDescriptions(toBeInserted);
			products.add(toBeInserted);
		}
		return products;

	}

	private static void setDescriptions(Product product) throws SQLException {
		PreparedStatement ps = con.prepareStatement(
				"SELECT description FROM products" + " join products_has_descriptions on(idProduct=products_idProduct)"
						+ "join descriptions on(Descriptions_idDescriptions=idDescriptions)" + "where idProduct=?");
		ps.setInt(1, product.getId());
		ResultSet rs = ps.executeQuery();
		while (rs.next() == true) {
			product.addDescription(rs.getString(1));
		}

	}

	public static ArrayList<Product> removeDublicates(ArrayList<Product> list) {
		for (int i = 0; i < list.size(); i++) {
			for (int j = i; j < list.size(); j++) {
				if (list.get(i).getId() == list.get(j).getId()) {
					list.remove(j);
				}
			}
		}
		return list;
	}

}
