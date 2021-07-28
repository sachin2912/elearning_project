package com.project.elearning;

public class ValidateData {
	public static boolean validateEmail(String email) {
		if (!email.contains("@"))                                             //used to check presence of '@' in email
		{
			System.out.println("email does not contain '@' !!!");
			return false;
		}
		if (!email.contains(".")) { 											//used to check presence of '.' in email
			System.out.println("email does not contain '.' !!!");
			return false;
		}
		if (email.indexOf("@")+1 == email.indexOf(".")) {						//used to check if '@' and '.' are not consecutive in email
			System.out.println("In email '@' and  '.' cannot be together !!!");
			return false;
		}
		if (email.length()<5) {													//used to check length more than 5
			System.out.println("email length is less than 5 !!!");
			return false;
		}
		return true;
	}
	public static boolean validatePhoneNumber(String phoneNumber) {
		//System.out.println(phoneNumber + "  " + phoneNumber.length());
		if (phoneNumber.length() != 10) {                                       //check length of phone number must be equal to 10
			System.out.println("Phone Number length not equal to 10 !!!");
			return false;
		}
		try {  
		    Double.parseDouble(phoneNumber);                                    //check if all the digits in phone number are numeric
		    return true;
		    } catch(NumberFormatException e){  
		    	System.out.println("Phone Number can only be number !!!");
		    	return false;  
		  } 
		
		
		
	}
	
	
	public static boolean validatePassword(String password) {
		if (password.length() < 6 || password.length() > 15) {                  // used to check password length between 6 and 15
			System.out.println("Password length must be betwwen 6 to 15 characters !!!");
			return false;
		}
		String numbers = "(.*[0-9].*)";
		if (!password.matches(numbers)) {                                       //used to check presence on a number in password
			System.out.println("Password must contain atleast one number !!!");
			return false;
		}
		String upperCaseChars = "(.*[A-Z].*)"; 
        if (!password.matches(upperCaseChars ))                                 //used to check presence of capital alphabet in password
        {
                System.out.println("Password must have atleast one uppercase character !!!");
                return false;
        }
        String lowerCaseChars = "(.*[a-z].*)";
        if (!password.matches(lowerCaseChars ))                                 //used to check presence of small alphabet in password
        {
                System.out.println("Password must have atleast one lowercase character !!!");
                return false;
        }
		
		
		return true;
	}
	

}
