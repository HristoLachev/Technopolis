package com.frontController.model;

public class Account {
	private Integer id;
	private String email;
	private String password;
	private String firstName;
	private String lastName;
	private String phoneNumber;

	public Account(Integer id, String firstName, String lastName, String email, String password, String phoneNumber) {
		this(firstName, lastName, email, password, phoneNumber);
		this.id = id;
	}

	public Account(String firstName, String lastName, String email, String password, String phoneNumber) {
		this.email = email;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.phoneNumber = phoneNumber;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Account() {
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

	@Override
	public String toString() {
		return "Account [id=" + id + ", email=" + email + ", password=" + password + ", firstName=" + firstName
				+ ", lastName=" + lastName + ", phoneNumber=" + phoneNumber + "]";
	}

}
