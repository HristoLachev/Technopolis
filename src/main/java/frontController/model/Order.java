package frontController.model;

import java.util.ArrayList;

public class Order {
	private Integer id;
	private Address address;
	private Account account;
	private boolean status;
	private ArrayList<Product> basket = new ArrayList<Product>();


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public ArrayList<Product> getBasket() {
		return basket;
	}

	public void setBasket(ArrayList<Product> basket) {
		this.basket = basket;
	}

	public void addProduct(Product e) {
		basket.add(e);
	}

	@Override
	public String toString() {
		return "Order [id=" + id + ", address=" + address + ", account=" + account + ", status=" + status + ", basket="
				+ basket + "]";
	}

	
	
}
