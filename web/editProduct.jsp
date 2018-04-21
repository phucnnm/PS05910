<%-- 
    Document   : editProduct
    Created on : Sep 30, 2017, 11:37:06 PM
    Author     : Phuc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Page</title>
        <link rel="stylesheet" type="text/css" href="css/editProduct.css">
    </head>
    <body>
        <jsp:include page="_menu.admin.jsp"></jsp:include>
        <jsp:include page="_header.jsp"></jsp:include>

            <div class="edit">
                <h1>Edit Product</h1>
                <form action="ControllerProducts">
                    <label>Code:</label>${SP.code}<input type="hidden" name="txtCode" value="${SP.code}"/>
                <label>Image: </label> <input type="text" name="txtImage" value="${SP.image}"/><br/>
                <label>Name: </label> <input type="text" name="txtName" value="${SP.name}"/><br/>
                <label>Price:</label> <input type="text" name="txtPrice" value="${SP.price}"/><br/>
                <div class="btnUpdate"><input type="submit" name="action" value="Update"/> </div>
            </form>
        </div>
        <jsp:include page="_footer.jsp"></jsp:include>
    </body>
</html>
