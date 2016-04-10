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

	public ArrayList<String> getDescriptions() {
		return descriptions;
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
		return name + ",брой:" + quantity;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		return true;
	}

}
