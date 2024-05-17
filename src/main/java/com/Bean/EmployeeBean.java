package com.Bean;

import jakarta.validation.constraints.NotBlank;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class EmployeeBean {

	// Variable private
	// getter-setter
	// public constructor
	Integer id;
	@NotBlank
	String firstName;
	@NotBlank
	String lastName;
	@NotBlank
	String email;
	@NotBlank
	String password;
	
	Integer age;
	@NotBlank
	String hobby;
	@NotBlank
	String address;
	@NotBlank
	String city;
	@NotBlank
	String gender;
}
