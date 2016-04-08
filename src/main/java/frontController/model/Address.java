package frontController.model;

public class Address {
	private Integer id;
	private String location;
	private String city;
	private String postCode;
	private String firstName;
	private String lastName;
	private String phoneNumber;

	public Address(String location, String city, String postCode, String firstName, String lastName,
			String phoneNumber) {
		this.location = location;
		this.city = city;
		this.postCode = postCode;
		this.firstName = firstName;
		this.lastName = lastName;
		this.phoneNumber = phoneNumber;
	}

	public Address(Integer id, String location, String city, String postCode, String firstName, String lastName,
			String phoneNumber) {
		this(location, city, postCode, firstName, lastName, phoneNumber);
		this.id = id;

	}

	public Address() {
		// TODO Auto-generated constructor stub
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getId() {
		return id;
	}

	public String getLocation() {
		return location;
	}

	public String getCity() {
		return city;
	}

	public String getPostCode() {
		return postCode;
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

	public void setLocation(String location) {
		this.location = location;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
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

	@Override
	public String toString() {
		return"адрес:" + location + "град:" + city + " пощенски код:" + postCode
				+ " Име:" + firstName + " Фамилно име:" + lastName + " Телефонен номер:" + phoneNumber + "]";
	}
	
	
	

}
