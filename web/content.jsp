<%-- 
    Document   : content
    Created on : Oct 20, 2017, 1:13:26 AM
    Author     : Phuc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #anh { position:relative; margin:20px auto; max-width: 1024px;} 
            #anh #hinhslide{width:100%; height:100%;}
            #previous{ position:absolute; top: 250px; left: 0px; width:40px; height:40px; display:none;} 
            #next{ position:absolute; top: 250px; right: -12px; width:40px; height:40px; display:none;}
            #anh:hover #previous{display:block; opacity:0.6;} 
            #anh:hover #next{ display:block; opacity:0.6;}
        </style>
    </head>
    <body onload="loadAnh();">
        <div style="margin-bottom: 20px;">
            <div id="anh">
                <img id="hinhslide" src="Image/1.jpg"/>
                <div id="previous"> <img src="Image/prev.png" onclick="back()" /></div>
                <div id="next"> <img src="Image/next.png" onclick="next()" /></div>
            </div>
            <script>
                var anh = [];
                var t;
                var currentIndex = 1;
                function loadAnh() {
                    for (var i = 1; i <= 4; i++) {
                        anh[i] = new Image();
                        anh[i].src = "Image/" + i + ".jpg";
                    }
                }
                function next() {
                    clearInterval(t);
                    if (currentIndex < 4) {
                        currentIndex++;
                        document.getElementById("hinhslide").src = anh [currentIndex].src;
                    } else {
                        currentIndex = 1;
                        document.getElementById("hinhslide").src = anh[currentIndex].src;
                    }
                    t = setInterval("next()", 3000);
                }
                function back() {
                    clearInterval(t);
                    if (currentIndex > 1) {
                        currentIndex--;
                        document.getElementById("hinhslide").src = anh[currentIndex].src;
                    } else {
                        currentIndex = 4;
                        document.getElementById("hinhslide").src = anh[currentIndex].src;
                    }

                    t = setInterval("next()", 3000);
                }

                t = setInterval("next()", 2000);
            </script>
    </body>
</html>
