package frontController.model;

import java.util.ArrayList;

public class Product {
	private Integer id;
	private String name;
	private Integer price;
	private String information;
	private String image;
	private int quantity;
	private ArrayList<String> descriptions;

	public Product() {
		descriptions = new ArrayList<String>();
	}

	public String getInformation() {
		return information;
	}

	public Product(Integer id) {
		this.id = id;

	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getImage() {
		return image;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public void addDescription(String description) {
		descriptions.add(description);
	}

	public void printDescriptions() {
		for (String s : descriptions) {
			System.out.println(s);
		}
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", price=" + price + ", quantity=" + quantity + "]";
	}

}
