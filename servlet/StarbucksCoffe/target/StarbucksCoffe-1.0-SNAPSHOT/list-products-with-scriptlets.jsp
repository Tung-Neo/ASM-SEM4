<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, StarbucksCoffe.*" %>
<html>
<head>
    <title>Starbuck Coffe</title>
</head>
<%
    List<Product> theProducts =
            (List<Product>) request.getAttribute("PRODUCT_LIST");
%>
<body>
<% for (Product tempProduct : theProducts) { %>
<tr>
    <td> <%= tempProduct.getCategory() %> </td>
    <td> <%= tempProduct.getProductName() %> </td>
    <td> <%= tempProduct.getInformation() %> </td>
    <td> <%= tempProduct.getIce() %> </td>
    <td> <%= tempProduct.getTopping() %> </td>
    <td> <%= tempProduct.getQty() %> </td>
</tr>
<% } %>
</body>
</html>
