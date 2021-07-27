<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  	<meta http-equiv="X-UA-Compatible" content="ie=edge" />
	  <title>
	            Contact Form
	  </title>
	  <style>
        body{
            text-align: center;
            width: 100%;
        }
        td {
            padding: 15px;
        }
        #regform{
            text-align: center;
            width: 100%;
            right: 200px;
        }
        table{
            margin: auto;
            text-align: center;
            width: 50%;
            
        }

        
    	</style>
	</head>
 	<body>
 		<h1 style="padding: 15px;">
 			E-Learning Portal
 	</h1>
        <div class="heading">
            <h2>
                Contact Form
            </h2>
        </div>
        <div id="regform">
            <table>
                <form method="post" action="AddContactDetails">
                    <tr>
                        <td>
                            <strong>
                                <label> 
                                    User ID
                                </label>
                            </strong>
                        </td>
                        <td>
                            <input type="number" name="user_id" id="userID" required>
                        </td>    
                    </tr>
                    <tr>   
                        <td>
                            <strong>
                                <label>
                                    Name
                                </label>
                            </strong>
                        </td>
                        <td>
                            <input type="text" name="name" id="name"  minlength="10" maxlength="100"  required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>
                                <label>
                                    Email
                                </label>
                            </strong>
                        </td>
                        <td>
                            <input type="email" name="email" id="email" minlength="10" maxlength="100" required>
                        </td>
                    </tr>
                    <tr>
                        <td>   
                            <strong>
                                <label>
                                    Phone Number
                                </label>
                            </strong>
                        </td>
                        <td>
                            <input type="text" name="phoneno" id="phoneNo" minlength="10" maxlength="10" required>
                        </td>
                    </tr>
                        <tr>
                            <td>
                                <strong>
                                    <label>
                                        Message
                                    </label>
                                </strong>
                            </td>
                            <td>
                                <textarea name="message" id="message" rows="4" value="" cols="15"  required>
                                </textarea>
                            </td>    
                    </tr>
                   
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="Submit" >

                        </td>
                    </tr>
                </table>
            </form>
        </div>
        
    </body>
</html>