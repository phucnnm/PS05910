<%-- 
    Document   : index
    Created on : Oct 3, 2017, 11:26:55 PM
    Author     : Phuc
--%>

<%@page import="model.ProductDTO"%>
<%@page import="java.util.List"%>
<%@page import="model.Product"%>
<%@page import="model.Products"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
        <link rel="stylesheet" type="text/css" href="css/index.css">
    </head>
    <body >
                <jsp:include page="_menu.jsp"></jsp:include>
        <jsp:include page="_header.jsp"></jsp:include>

        <jsp:include page="content.jsp"></jsp:include>
            <div style="margin-bottom: 100px;">
                <div style="margin:40px 20px 20px 50px;">
                    <h1 style="margin:20px 50px;">Products</h1>
                    <hr>
                </div>
            <%
                Products listSP = new Products();
                List<Product> list = listSP.showProduct("");
                for (Product sp : list) {
                    out.print("<div class=\"nd\"><form action=\"ControllerCartBean\" method=\"get\">");
                    out.print("     <div class=\"col\">");
                    out.print("         <div class=\"product-image-wrapper\">");
                    out.print("             <div class=\"products\">");
                    out.print("                 <div class=\"productinfo text-center\">"
                            + "<img src=\"Image/products/" + sp.getImage() + "\" alt=\"\" /><h2>" + sp.getName() + "</h2>"
                            + "<p>" + sp.getPrice() + "vnd</p>"
                    );
                    out.print("<input type=\"hidden\" name=\"txtCode\" value=\"" + sp.getCode() + "\" />"
                            + "<input type=\"hidden\" name=\"txtImg\" value=\"" + sp.getImage() + "\" />"
                            + "<input type=\"hidden\" name=\"txtPrice\" value=\"" + sp.getPrice() + "\" />"
                            + "<input type=\"hidden\" name=\"txtName\" value=\"" + sp.getName() + "\" />"
                            + "<input class=\"addto\" type=\"submit\" name=\"action\"  value=\"Add to Cart\" />");
                    out.print("                </div>"
                            + "         </div>"
                            + "     </div>"
                            + "</div>");
                    out.print("</form></div>");
                }
            %>  
        </div>

        <jsp:include page="_footer.jsp"></jsp:include> 
    </body>
</html>
