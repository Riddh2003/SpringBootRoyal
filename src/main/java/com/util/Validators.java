package com.util;

public class Validators {
	public static boolean isEmpty(String str){
		if( str == null || str.trim().length() == 0) {
			return true;
		}
		else {
			return false;
		}
	}
	
	public static boolean isAlpha(String str) {
		String alphaReg = "[a-zA-Z]+";
		return str.matches(alphaReg);
	}
	
	public static boolean isEmail(String str) {
		String emailstr = "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";
		return str.matches(emailstr);
	}
	
	public static boolean isPassword(String str) {
		String passwordstr = "^(?=.*[0-9])(?=.*[a-zA-Z]).{8,}$";
		return str.matches(passwordstr);
	}
}
