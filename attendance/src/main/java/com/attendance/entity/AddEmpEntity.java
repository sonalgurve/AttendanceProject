package com.attendance.entity;

import javax.annotation.Generated;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name = "add_emp")
public class AddEmpEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@Column(name= "name", length = 255, nullable = false)
	private String name;
	
	@Column(name= "email", length = 255, nullable = false)
	private String email;
	
	@Column(name= "phone", length = 12, nullable = false, unique = true)
	private long phone;
	
	@Column(name= "dob", length = 12, nullable = false)
	private String dob;
	
	@Column(name= "jdate", length = 255, nullable = false)
	private String jdate;
	
	@Column(name= "exp", length = 20, nullable = false)
	private long exp;
	
	@Column(name= "dept", length = 225, nullable = false)
	private String department;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getJdate() {
		return jdate;
	}

	public void setJdate(String jdate) {
		this.jdate = jdate;
	}

	public long getExp() {
		return exp;
	}

	public void setExp(long exp) {
		this.exp = exp;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	

	

}
