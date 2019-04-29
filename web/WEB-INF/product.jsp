<%--
  Created by IntelliJ IDEA.
  User: Mikee
  Date: 29/04/2019
  Time: 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${sessionScope.locale}" />
<fmt:setBundle basename="ch.hesge.programmation.labels" var="msg" />
<html>
<head>
    <title>Product details</title>
    <link rel="stylesheet" type="text/css" href="../styles/homepage_style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
</head>
<body>
    <div id="navbar">
        <div><a href="/"><i class="fas fa-home"></i></a></div>
        <div class="right-side">
            <a href="#">
                <i class="fas fa-shopping-cart"></i>
                <div id="cart-number" class="inline-element">
                    <%= request.getSession().getAttribute("cart")%>
                </div>
            </a>
        </div>
    </div>
    <div id="content">
        <div id="product-description">
            <h1>Cat's shampoo</h1>
            <p><fmt:message key="description" bundle="${msg}" /></p>
            <form method="post" action="#">
                <button type="submit" class="btn btn-default">
                    CHF 999.- <i class="fa fa-shopping-cart"></i>
                </button>
            </form>
        </div>
        <div id="product-images">
            <img src="../images/product_images/dog_cage.jpg" alt="dog-cage">
            <img src="../images/product_images/dog_cage.jpg" alt="dog-cage">
        </div>
    </div>
</body>
</html>
