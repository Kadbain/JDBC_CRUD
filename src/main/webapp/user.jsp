<%--
  Created by IntelliJ IDEA.
  User: TEMAPROF
  Date: 03.06.2017
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <title>Add new user</title>
</head>
<body>
<script>
    $(function() {
        $('input[name=dob]').datepicker();
    });
</script>

<form method="POST" action='UserController' name="frmAddUser">
    User ID : <input type="text" readonly="readonly" name="userid"
                     value="<c:out value="${user.userid}" />" /> <br />
    First Name : <input
        type="text" name="firstName"
        value="<c:out value="${user.firstName}" />" /> <br />
    Last Name : <input
        type="text" name="lastName"
        value="<c:out value="${user.lastName}" />" /> <br />
    DOB : <input
        type="text" name="dob"
        value="<fmt:formatDate pattern="MM/dd/yyyy" value="${user.dob}" />" /> <br />
    Email : <input type="text" name="email"
                   value="<c:out value="${user.email}" />" /> <br /> <input
        type="submit" value="Submit" />
</form>
</body>
</html>
