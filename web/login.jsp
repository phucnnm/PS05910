<%-- 
    Document   : login
    Created on : Oct 4, 2017, 12:12:07 AM
    Author     : Phuc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" type="text/css" href="css/login.css">
        <style>
            body{background-image: url("Image/bg.jpg");}
        </style>
    </head>
    <body>
        <div class="dangnhap">
            <div class="card card-container">
                <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
                <form action="ControllerCustomers" class="form">
                    <input type="text" name="txtUser" placeholder="Username" id="inputUser" class="form-control"/><br/>

                    <input type="password" name="txtPass" placeholder="Password" id="inputPassword" class="form-control"/><br/>
                    <div id="remember">
                        <label style="color: #FFF">
                            <input type="checkbox" value="remember-me"> Remember me
                        </label>
                    </div>
                    <div class="submit">
                        <input type="submit" name="action" value="Login" />
                    </div>
                    <a href="#" class="forgot-password">
                        Forgot the password?
                    </a>
                </form>
            </div>
        </div>

    </body>
</html>
