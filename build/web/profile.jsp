<%@page import="com.tech.blog.entities.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.tech.blog.dao.PostDao"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.entities.Message"%>
<%@page import="com.tech.blog.entities.User"%>
<%@page errorPage="error_page.jsp" %>
<%
    response.setHeader("Cache-Control","no-cache, no-store, must-revavidate");
User user=(User)session.getAttribute("currentUser");    
if(user==null)
{
response.sendRedirect("login_page.jsp");

}

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>profile_page</title>
         <!--Css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
          
            body{
               background: url(img/pexels-engin-akyurt-1435752.jpg);
               background-attachment: fixed;
               background-size: cover;
           }
        </style>
    </head>
    <body>
    
        <!--navbar-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <a class="navbar-brand" href="#"><span class="fa fa-laptop"></span> Blogger.com</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
       <li class="nav-item">
           <a class="nav-link" href="#"><span class="fa fa-address-card"></span> Contact</a>
      </li> 
      <li class="nav-item active">
          <a class="nav-link" href="#" data-toggle="modal" data-target="#addPostModal"><span class="fa fa-plus"></span> Add Post</a>
      </li>
    </ul>
 
      <ul class="navbar-nav mr-right">
            <li class="nav-item active">
           <a class="nav-link" href="#" data-toggle="modal" data-target="#profile-modal" ><span class="fa fa-user-circle"></span> <%=user.getName() %></a>
             </li>
           <li class="nav-item active">
           <a class="nav-link" href="LogoutServlet"><span class="fa fa-sign-out"></span> Logout</a>
           </li>
      </ul>
  </div>
</nav>
    <!end of navbar-->
    <%
        Message m = (Message) session.getAttribute("msg");
        if (m != null) {
    %> 
    <div class="alert <%=m.getCssClass()%>" role="alert">
        <%= m.getContent()%>
    </div>

    <%
            session.removeAttribute("msg");

        }
    %>



       <!--Main body of the page-->
       <main>
           <div class="container">
               <div class="row mt-4">
                   <!--first Column-->
                   <div class="col-md-4 mt-2">
                       <!--Categories-->
                       <div class="list-group">
                           <a href="#" onclick="getPosts(0,this)"  class="c-link list-group-item list-group-item-action active">
                               All Posts
                           </a>
                           <!--fetch Categories-->
                           <%
                               PostDao d = new PostDao(ConnectionProvider.getConnection());
                               ArrayList<Category> list1 = d.getAllCategories();
                               for (Category cc : list1) {
                           %>
                           <a href="#" onclick="getPosts(<%=cc.getCid()%>,this)" class="c-link list-group-item list-group-item-action"><%=cc.getName()%></a>
                           <%
                               }

                           %>

                       </div>
                   </div>
                   <!--Second column-->
                   <div class="col-md-8">
                       <!--post-->
                       <div class="container text-center" id="loader">
                           <i class="fa fa-refresh fa-spin fa-2x"></i>
                           <h3 class="mt-3">Loading...</h3>
                       </div>
                       <div class="container-fluid" id="post-container">


                       </div>

                   </div>
               </div>
           </div>
       </main>                      
                                   
                                   
       <!--close Main body of the page-->
                                                            
                                   
        <!--Profile modal-->
<!-- Modal -->
<div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header bg-primary text-white">
          <h5 class="modal-title" id="exampleModalLabel"><span class="fa fa-laptop"></span> Blogger.com</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <div class="container text-center">
              <img src="pics/<%= user.getProfile()%>" class="img-fluid" style="max-width: 125px">
              <h5 class="modal-title mt-3" id="exampleModalLabel"><%=user.getName() %> </h5>
              
              <!--Profile Details-->
              <div id="profile-details">
              <table class="table">
               
                  <tbody> 

                      <tr>
                          <th scope="row"> ID :</th>
                          <td><%=user.getId()%></td>

                      </tr>
                      <tr>
                          <th scope="row"> Email :</th>
                          <td><%=user.getEmail()%></td>

                      </tr>
                      <tr>
                          <th scope="row"> Password :</th>
                          <td><%=user.getPassword()%></td>

                      </tr>
                      <tr>
                          <th scope="row"> Gender :</th>
                          <td><%=user.getGender()%></td>

                      </tr>

                      <tr>
                          <th scope="row"> Status :</th>
                          <td><%=user.getAbout()%></td>

                      </tr>
                      <tr>
                          <th scope="row"> Registered-ON :</th>
                          <td><%=user.getRdate()%></td>

                      </tr>
                  </tbody>
</table>
</div>
      <!--profile edit-->
      
      <div id="profile-edit" style="display: none;">
          <h3 class="mt-2"> Edit Details Carefully </h3>
          <form action="EditServlet" method="POST" enctype="multipart/form-data">
              
              <table class="table">
                  <tr>
                      <td> ID :</td>
                      <td><%=user.getId()%></td>
                  </tr>
                  
                  <tr>
                      <td> Name :</td>
                      <td><input type="text"  class="form-control" name="user_name" value="<%=user.getName()%>"> </td>
                  </tr>
                  
                  <tr>
                      <td> Email :</td>
                      <td><input type="email"  class="form-control" name="user_email" value="<%=user.getEmail()%>"> </td>
                  </tr>
                  
                   <tr>
                      <td> Password :</td>
                      <td><input type="password"  class="form-control" name="user_password" value="<%=user.getPassword()%>"> </td>
                   </tr>
                  
                   <tr>
                      <td> Gender :</td>
                      <td> <%=user.getGender().toUpperCase()%></td>
                   </tr>
                  
                   <tr>
                      <td> Status :</td>
                      <td>
                          <textarea class="form-control" name="user_about"><%=user.getAbout()%></textarea>
                      </td>
                   </tr>
                   
                     <tr>
                      <td>Edit Profile :</td>
                      <td><input type="file" name="image" class="form-control-file" value="<%=user.getProfile()%>"></td>
                   </tr>
              </table>
                      <div class="container">
                          <button type="submit" class="btn btn-primary"> Save</button>
                      </div>
                      
          </form>
      </div>
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
       <button type="button"  id="edit-profile-button" class="btn btn-primary"><span class="fa fa-edit"></span> Edit</button>
          
      </div>
    </div>
  </div>
</div>
         
    <!--end of profile modal-->
    
    
    <!--Add post modal-->
<!-- Modal -->
<div class="modal fade" id="addPostModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Enter post details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form action="PostServlet" id="add-post-form" method="POST">
              <div class="form-group">
                  <select class="form-control" name="cid" required="">
                  <option selected disabled>--Select Category--</option>
                  
                  <%
                  PostDao postd=new PostDao(ConnectionProvider.getConnection());
                  ArrayList<Category> list=postd.getAllCategories();
                  for(Category c:list)
                  {
                  %>
                  <option value="<%=c.getCid()%>" ><%=c.getName()%></option>
                  <%  
                  }
                  %>
              </select>
              </div>
              <div class="form-group">
                  <input type="text" name="pTitle" placeholder="Enter post_title" class="form-control" required="">
              </div>
              <div class="form-group">
                  <textarea class="form-control" name="pContent" placeholder="Enter post_content" required=""></textarea>
              </div>
          
              <div class="form-group">
                  <textarea class="form-control" name="pCode" placeholder="Enter post_code(if any)"></textarea>
              </div>
              <div class="form-group">
                  <label> Select Image :</label>
                  <input type="file" name="pic" class="form-control">
              </div>
              <div class="container text-center text-white">
                   <button type="submit" class="btn btn-primary"> Post</button>
              </div>
              <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="reset" class="btn btn-outline-danger">Reset</button>
      </div>
          </form>
      </div>
    </div>
  </div>
</div>
    
    
    
    <!--Close Post Modal-->
      
    
    <!--JavaScript-->
       <script src="https://code.jquery.com/jquery-3.5.1.min.js" 
               integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" 
       crossorigin="anonymous"></script>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" 
       integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" 
       integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"
       integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA=="
       crossorigin="anonymous"></script>

        <script>
           $(document).ready(function (){
               
               let editStatus=false;
               
               $("#edit-profile-button").click(function(){
                  
                  if( editStatus === false)
                  {
                      $("#profile-details").hide();
                      $("#profile-edit").show();
                      editStatus = true;
                      $(this).text("Back");
                      
                  }else
                  {
                       $("#profile-details").show();
                      $("#profile-edit").hide();
                      editStatus =false;
                       $(this).text("Edit");
                  }
                   
               });
           });  
        </script>
        
        <!--Post javascript-->
        <script>
            $(document).ready(function(){
               $("#add-post-form").on("submit",function(event){
                   event.preventDefault();
                   console.log("you have clicked on submit");
                    
                    let form=new FormData(this);
                    
                    $.ajax({
                        url: "PostServlet",
                        type: 'POST',
                        data: form,
                        
                        success: function (data, textStatus, jqXHR) {
                            if(data.trim()==='done')
                            {
                         swal("Successfully Posted")
                                 .then((value) => {
                              window.location = "profile.jsp";
                             });
                           
                              }
                            
                             else
                            {
                                
                            swal("Oops ! Something went wrong.try again");

                            }
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        
                         swal("Oops ! Something went wrong..try again");
                    },
                    processData: false,
                    contentType: false
                    
                    });
               });
            });
            
        </script>
        
        <!--Loading post using ajax-->
        <script>
            function getPosts(catId,temp){
                
                $("#loader").show();
                $("#post-container").hide();
                $(".c-link").removeClass('active');
                
                 $.ajax({
                     
                     url: "load_posts.jsp",
                     data: {cid:catId},
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
               let allPostRef=$('.c-link')[0]
               getPosts(0,allPostRef);
                               
           });
        </script>
        
    </body>
</html>
