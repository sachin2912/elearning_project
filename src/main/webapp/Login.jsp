<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Login</title>
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
                Login
            </h2>
        </div>
        <div id="regform">
            <table>
                <form method="post" action="LoginForm">
                <tr>
                	<td>
                		<input type="radio" name="logintype" id="user" value="USER" required>
                		<label for="user">User</label>
                	</td>
                	<td>
                		<input type="radio" name="logintype" id="admin" value="ADMIN" required>
                		<label for="admin">Admin</label>
                	</td>
                </tr>
                     <tr>   
                        <td>
                            <strong>
                                <label>
                                    email
                                </label>
                            </strong>
                        </td>
                        <td>
                            <input type="email" name="email" id="email" placeholder="abc@xxx.com" minlength="10" maxlength="100"  required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>
                                <label> 
                                    password
                                </label>
                            </strong>
                        </td>
                        <td>
                            <input type="password" name="password" id="password" placeholder="*******" required>
                        </td>    
                    </tr>
                   
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="Login" >

                        </td>
                        </tr>
                        <tr>
                        <td>
                        </td>
                        <td>
                        <a href="RegistraionForm.html">Register</a>
                        </td>
                        
                    </tr>
                </table>
            </form>
        </div>
</body>
</html>