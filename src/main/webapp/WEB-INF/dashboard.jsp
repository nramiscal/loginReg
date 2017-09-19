<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>

span{
	font-weight: normal;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dashboard</title>
</head>
<body>
    <h1>Welcome <c:out value="${currentUser.firstName}"></c:out>!</h1>
 
    <h3>First Name: <span>${currentUser.firstName }</span></h3>
    <h3>Last Name: <span>${currentUser.lastName }</span></h3>
    <h3>Email: <span>${currentUser.username }</span></h3>
    <h3>Sign Up Date: <span><fmt:formatDate pattern = "EEEEE, MMM d, yyyy" value = "${currentUser.created_at }" /> at <fmt:formatDate type = "time" timeStyle = "short" value = "${currentUser.created_at}" /></span></h3>
    <h3>Last Sign In: <span><fmt:formatDate pattern = "EEEEE, MMM d, yyyy" value = "${currentUser.updated_at }" /> at <fmt:formatDate type = "time" timeStyle = "short" value = "${currentUser.updated_at}" /></span></h3>
    
    <form id="logoutForm" method="POST" action="/logout">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type="submit" value="Logout" />
    </form>
    
</body>
</html>