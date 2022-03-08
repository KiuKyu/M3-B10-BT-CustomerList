<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 08-Mar-22
  Time: 3:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.kiu.Customer" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
  <head>
    <title>$Title$</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
          crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
  </head>
  <body>
  <%
    List<Customer> customers = new ArrayList<>();
    customers.add(new Customer("Pom 1", "01/01/1994", "HN", "images/12.jpg"));
    customers.add(new Customer("Pom 2", "01/01/1994", "HN", "images/12.jpg"));
    customers.add(new Customer("Pom 3", "01/01/1994", "HN", "images/12.jpg"));
    customers.add(new Customer("Pom 4", "01/01/1994", "HN", "images/12.jpg"));
    customers.add(new Customer("Pom 5", "01/01/1994", "HN", "images/12.jpg"));
    pageContext.setAttribute("customers", customers);
  %>
  <h2>Danh sách khách hàng</h2>
  <table class="table table-striped">
    <tr>
      <th>Tên</th>
      <th>Ngày sinh</th>
      <th>Địa chỉ</th>
      <th>Ảnh</th>
    </tr>
    <c:forEach var="customer" items="${customers}">
      <tr>
        <td>${customer.name}</td>
        <td>${customer.dob}</td>
        <td>${customer.address}</td>
        <td>${customer.image}</td>
      </tr>
    </c:forEach>
  </table>
  </body>
</html>
