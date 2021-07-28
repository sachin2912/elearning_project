<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Logout</title>
<script type="text/javascript">
alert("Logging Out !!! \n You will be redirected to Login Page");
</script>
</head>
<body>

<%
	session.invalidate();
	response.sendRedirect("Login.jsp");
%>
</body>
</html>