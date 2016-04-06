package com.frontController.model;

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

}
