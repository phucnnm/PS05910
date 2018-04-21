<%-- 
    Document   : showcart
    Created on : Oct 1, 2017, 3:18:37 PM
    Author     : Phuc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"   %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show</title>
        <link rel="stylesheet" type="text/css" href="css/showcart.css">
    </head>
    <body>
        <jsp:include page="_menu.jsp"></jsp:include>
        <jsp:include page="_header.jsp"></jsp:include>

            <div style="margin: 50px;">
            <c:set var="shop" value="${sessionScope.SHOP}" />
            <c:if test="${empty shop}">
                <div class="check-out" style="margin: 100px;">
                    <h1><font color="red">Shopping cart is empty!</font></h1>
                    <p class="link" style="font-size: 18px;">You have no items in your shopping cart.<br>
                        Click<a href="index.jsp"> "here"</a> to continue shopping</p>     
                </div>
            </c:if>
            <div class="show">
                <c:if test="${not empty shop}">
                    <h1>Your Shopping Cart</h1>
                    <table border="1">
                        <thread>
                            <tr>
                                <td>No.</td>
                                <td>Code</td>
                                <td>Image</td>
                                <td>Name</td>
                                <td>Price</td>
                                <td>Quantity</td>
                                <td>Action</td>
                            </tr>
                        </thread>
                        <tbody>
                        <form action="ControllerCartBean">
                            <c:set var="count" value="0" />
                            <c:forEach var="rows" items="${shop}">
                                <c:set var="count" value="${count + 1}" />  
                                <tr>
                                    <td>${count}</td>
                                    <td>${rows.value.sanpham.code}</td>
                                    <td><img src="Image/products/${rows.value.sanpham.image}"></td>
                                    <td>${rows.value.sanpham.name}</td>
                                    <td>${rows.value.sanpham.price}</td>
                                    <td>${rows.value.quantity}</td>
                                    <td>
                                        <input type="checkbox" name="rmv" 
                                               value="${rows.value.sanpham.code}" />
                                    </td>
                                </tr>

                            </c:forEach>
                            <tr>
                                <c:url var="add" value="ControllerCartBean">
                                    <c:param name="action" value="AddMore"/>
                                </c:url>
                                <td class="add"><a href="${add}">Add More</a></td>
                                <td class="remove"><input type="submit" value="Remove" name="action"/></td>
                            </tr>
                        </form>
                        </tbody>
                    </table>

                </c:if>
            </div>
        </div>
        <jsp:include page="_footer.jsp"></jsp:include>

    </body>
</html>
