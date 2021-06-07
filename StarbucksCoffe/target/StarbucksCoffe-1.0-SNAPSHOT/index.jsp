<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:query var="rs" dataSource="jdbc/asm">
    select * from product
</sql:query>
<!DOCTYPE html>
<html>
<head>
    <title>Starbuck Coffe</title>
    <link type="text/css" rel="stylesheet" href="css/add-product-style.css">
</head>
<body>

<a href="ProductControllerServlet">Product CRUD</a>
<a href="ViewCustomerControllerServlet">View Customer</a>
</body>
</html>