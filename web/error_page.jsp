<%@page import="java.sql.*" %>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Oops ! Something went wrong...</title>
          <!--Css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
           .banner-background{
            clip-path: polygon(50% 0%, 80% 0, 100% 0, 100% 100%, 75% 95%, 50% 100%, 22% 94%, 0 100%, 0 0, 16% 0);
           }
        </style>
        
        
    </head>
    <body>
       
        <div class="container text-center" style="padding: 30px">
            <img src="img/warning-sign.png" class="img-fluid" style="height: 50vh">
            
            <h3 style="padding:20px" class="display-4">Oops ! Something went wrong...</h3>
            
            <a href="index.jsp" class="btn-primary btn-lg text-white"><span class="fa fa-home"></span> Home</a>
        </div>
    </body>
</html>
