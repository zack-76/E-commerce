package model;

public class Client {

	private int id;
	private String last_name;
	private String first_name;
	private String address;
	private String city;
	private String phone;
	private String email;
	private String password;
	
	public Client() {
		
	}

	public Client( String last_name, String first_name, String address, String city, String phone, String email,
			String password) {
		
		this.last_name = last_name;
		this.first_name = first_name;
		this.address = address;
		this.city = city;
		this.phone = phone;
		this.email = email;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
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
	
	
	
	
	
	

}
