<%--
  Created by IntelliJ IDEA.
  User: john
  Date: 26.04.2019
  Time: 12:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Products</title>
</head>
<body>
    <div id="navbar">
        <div><a href="#"><i class="fas fa-home"></i></a></div>
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

    </div>
</body>
</html>
