<%--
  Created by IntelliJ IDEA.
  User: john
  Date: 12.04.2019
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${sessionScope.locale}" />
<fmt:setBundle basename="ch.hesge.programmation.labels" var="msg" />
<html>
<head>
  <title>Homepage</title>
  <link rel="stylesheet" type="text/css" href="styles/homepage_style.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
</head>
<body>
  <div id="navbar" class="clear">
    <a href="#"><i class="fas fa-home"></i></a>
    <a href="#" class="right-side">
      <i class="fas fa-shopping-cart"></i><span>0</span>
    </a>
  </div>
  <div id="content">
    <div id="title">
      <h1><fmt:message key="title" bundle="${msg}" /></h1>
    </div>
    <div id="description">
      <h3><fmt:message key="description" bundle="${msg}" /></h3>
    </div>
    <div id="products">
      <h2><fmt:message key="top-products" bundle="${msg}" /></h2>
      <div id="top-products">
        <div class="top-product"><img src="images/product_images/71rqTtawU2L._SL1500_.jpg" /></div>
        <div class="top-product"><img src="images/product_images/cat_home.png" /></div>
        <div class="top-product"><img src="images/product_images/leash.jpg" /></div>
        <div class="top-product"><img src="images/product_images/dog_cage.jpg" /></div>
      </div>
    </div>
  </div>
</body>
</html>
