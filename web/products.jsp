<%-- 
    Document   : products
    Created on : Sep 30, 2017, 4:00:08 PM
    Author     : Phuc
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Products</title>
        <style>
            .btnsearch{margin: 20px 100px 50px 100px; font-size: 18px;}
            table,tr, td{ border:2px solid #333; border-collapse:collapse; padding: 5px;} 
            td{width: 180px; }
            .sua>a{text-decoration:none; color: blue;}
            .sua>a:hover{color: red;}
            .btnDelete>input{background:#FFF;}
            .btnDelete>input:hover{background:#FFF;color: #33a7d8;}
        </style>
    </head>
    <body>
        <jsp:include page="_menu.admin.jsp"></jsp:include>
        <jsp:include page="_header.jsp"></jsp:include>
            <div style="margin: 20px 20px 30px 20px;">
                <h1 style="margin-left: 100px; color: red;">Menu</h1>
                <form action="ControllerProducts">
                    <div class="btnsearch">
                        Enter product name: <input type="text" name="txtTenSP" value=""/>
                        <input type="submit" name="action" value="Search"/>
                    </div>
                    <table>
                        <tr style="background: #0668b3; color: #FFF;">
                            <td>No.</td>
                            <td>Code</td>
                            <td>Image</td>
                            <td>Name</td>
                            <td>Price</td>
                            <td>Edit</td>
                            <td>Delete</td>
                        <c:set var="count" value="0"/>
                        <c:forEach var="rows" items="${listSP}">
                        <tr>
                            <c:set var="count" value="${count+1}"/>
                            <td>${count}</td>
                            <td>${rows.code}</td>
                            <td>${rows.image}</td>
                            <td>${rows.name}</td>
                            <td>${rows.price}</td>
                            <c:url var="del" value="ControllerProducts">
                                <c:param name="action" value="Edit"/>
                                <c:param name="txtCode" value="${rows.code}"/>
                                <c:param name="txtImage" value="${rows.image}"/>
                                <c:param name="txtName" value="${rows.name}"/>
                                <c:param name="txtPrice" value="${rows.price}"/>
                            </c:url>

                            <td class="sua"><a href="${del}" style="">
                                    Edit</a>
                            </td>
                            <td class="btnDelete">
                                <input type="hidden" name="txtCode" value="${rows.code}"/>
                                <input type="submit" name="action" value="Delete"/>
                            </td>

                        </tr>
                    </c:forEach>
                    </tr>
            </form>
        </table>
    </div>
    <jsp:include page="_footer.jsp"></jsp:include>


</body>
</html>
