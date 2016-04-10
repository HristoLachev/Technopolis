package frontController.model;

import java.util.ArrayList;

public class Account {
	private Integer id;
	private String email;
	private String password;
	private String firstName;
	private String lastName;
	private String phoneNumber;
	private ArrayList<Product> basket = new ArrayList<Product>();
	private ArrayList<Order> ordersFalse = new ArrayList<Order>();
	private ArrayList<Order> ordersTrue = new ArrayList<Order>();

	public Account(Integer id, String firstName, String lastName, String email, String password, String phoneNumber,
			ArrayList<Order> ordersFalse, ArrayList<Order> ordersTrue) {
		this(firstName, lastName, email, password, phoneNumber);
		this.id = id;
		this.ordersFalse = ordersFalse;
		this.ordersTrue = ordersTrue;
	}

	public Account(String firstName, String lastName, String email, String password, String phoneNumber) {
		this.email = email;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.phoneNumber = phoneNumber;
	}

	public Account() {
	}

	public ArrayList<Product> getBasket() {
		return basket;
	}

	public ArrayList<Order> getOrdersFalse() {
		return ordersFalse;
	}

	public ArrayList<Order> getOrdersTrue() {
		return ordersTrue;
	}

	public void setOrdersFalse(ArrayList<Order> ordersFalse) {
		this.ordersFalse = ordersFalse;
	}

	public void setOrdersTrue(ArrayList<Order> ordersTrue) {
		this.ordersTrue = ordersTrue;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public Integer getId() {
		return id;
	}

	public String getEmail() {
		return email;
	}

	public String getFirstName() {
		return firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void addToBasket(Product p) {
		basket.add(p);
	}

	public void addToOrders(Order o) {
		ordersFalse.add(o);
	}

	@Override
	public String toString() {
		return "Account [id=" + id + ", email=" + email + ", password=" + password + ", firstName=" + firstName
				+ ", lastName=" + lastName + ", phoneNumber=" + phoneNumber + "]";
	}

	public void buyProduct(Product p) {
		for (Product product : this.basket) {
			if (product.getId() == p.getId()) {
				product.setQuantity(product.getQuantity() + 1);
				return;
			}
		}
		addToBasket(p);

	}

	public void setBasket(ArrayList<Product> basket) {
		this.basket = basket;
	}

	public void removeFromBasket(Product p) {
		basket.remove(p);
	}

	public void printProducts() {
		for (Product p : basket) {
			System.out.println(p);
		}

	}

}
