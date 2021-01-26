

<%@page import="java.util.ArrayList"%>
<%@page import="com.tech.blog.entities.Category"%>
<%@page import="com.tech.blog.dao.PostDao"%>
<%@page import="com.tech.blog.entities.User"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Blogger.com</title>
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
       <!--navbar-->
       <%@include file="normal_navbar.jsp"%>
       
       <!--//banner-->
        
       <div class="container-fluid p-0 m-0" >
           <div class="jumbotron bg-primary text-white banner-background">
               <div class="container">
                   
                   
                   <h1 class="display-3">Welcome to Blogger.com</h1>
               <p>Welcome to Blogger.com,World largest Technical Blog sites. Blogging refers to writing, photography, and other media that's self-published online. Blogging started as an opportunity for individuals to write diary-style entries,
                   but it has since been incorporated into websites for many businesses.</p>
               <a href="register_page.jsp" class="btn btn-outline-light btn-lg"><span class="fa fa-user-plus"></span> Start ! its Free</a>
               <a href="login_page.jsp"class="btn btn-outline-light btn-lg"><span class="fa fa-user-circle"></span> Login</a>
               
           </div>
           </div> 
           
           
       </div>
       
       <!--post-->
       <main>
           <div class="container">
               <div class="row">
                   <!--First Column-->
                   <div class="col-md-4">
                       <!--categories-->
                       <div class="list-group">
                           <a href="#" onclick="getPosts(0,this)" class="c-link list-group-item list-group-item-action active">
                              All Posts
                           </a>
                           <!--Categories-->
                           <%
                           PostDao d=new PostDao(ConnectionProvider.getConnection());
                          ArrayList<Category> list=d.getAllCategories();
                         
                          for(Category cc:list)
                          {
                          %>
                             <a href="#" onclick="getPosts(<%=cc.getCid()%>,this)" class="c-link list-group-item list-group-item-action"><%=cc.getName()%></a>
                         <%  
                          }
                           %>
                       </div>

                   </div>
                       <div class="col-md-8" id="post-container">
                       <!--second column-->
                       <!--post-->
                       <div class="container text-center mt-2"id="loader">
                           <i class="fa fa-refresh fa-3x fa-spin"></i>
                           <h3 class="mt-2">Loading...</h3>
                           <div class="container-fluid" id="post-container">


                       </div>

                           
                           
                           
                       </div>
                       
                   </div>
               </div>
           
           </div>
           
       </main>
      
       
        <!--JavaScript-->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" 
        integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" 
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" 
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" 
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script>
            function getPosts(catId,temp){
                $("#loader").show();
                $("#post-container").hide();
                
                $(".c-link").removeClass('active')
                
                
                 $.ajax({
               url: "loadPost.jsp",
               data:{cid : catId},
               
               success: function (data, textStatus, jqXHR) {
                        console.log(data);
                        $("#loader").hide();
                        $("#post-container").show();
                        $("#post-container").html(data);
                        $(temp).addClass('active');
                        
    }
            
           });
           
            }
            
            
            
            
        $(document).ready(function (){
           console.log("ready");
           let allPostRef=$('.c-link')[0]
           getPosts(0,allPostRef);
          
        });
        
        </script>
            
            
    
    </body>
</html>
