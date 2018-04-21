<%-- 
    Document   : newProduct
    Created on : Oct 1, 2017, 1:22:54 PM
    Author     : Phuc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/newProduct.css">
    </head>
    <body>
        <jsp:include page="_menu.admin.jsp"></jsp:include>
        <jsp:include page="_header.jsp"></jsp:include>
            <div class="new">
                <h1>New Product</h1>
                <form action="ControllerProducts">
                    <label>Code: </label><input type="text" name="txtCode" value=""/><br/>
                    <label> Image:</label> <input type="text" name="txtImage" value=""/><br/>
                    <label>Name: </label><input type="text" name="txtName" value=""/><br/>
                    <label>Price: </label><input type="text" name="txtPrice" value=""/><br/>
                    <div class="btnInsert"> <input type="submit" name="action" value="Insert"/></div>
                </form>
            </div>
        <jsp:include page="_footer.jsp"></jsp:include>
    </body>
</html>
