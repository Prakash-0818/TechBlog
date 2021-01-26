

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register-page</title>
        <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
           .banner-background{
            clip-path : polygon(50% 0%, 80% 0, 100% 0, 100% 100%, 75% 95%, 50% 100%, 22% 94%, 0 100%, 0 0, 16% 0);
           }
        </style>
    </head>
    <body>
        <%@include file="normal_navbar.jsp"%>
        <main class="d-flex align-items-center bg-primary banner-background p-5">
            <div class="container">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-header bg-primary text-center text-white">
                            <span class="fa fa-user-plus fa-3x"></span>
                            <br>
                            <h3>Register here!!</h3>
                        </div>
                        <div class="card-body">
                            <form id="reg-form" action="RegisterServlet" method="POST">
                                <div class="form-group">
                                    <label for="user_name">User Name</label>
                                    <input type="text" name="user_name" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter name" required="">

                                </div>   


                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" name="user_email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required="">
                                </div>


                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password"  name="user_password"class="form-control" id="exampleInputPassword1" placeholder="Password" required="">
                                </div>

                                <div class="form-group">
                                    <label for="gender">Select Gender</label>
                                    <br>

                                    <input type="radio" id="gender" name="gender" value="male"> Male
                                    <input type="radio" id="gender" name="gender" value="female"> Female
                                    <input type="radio" id="gender" name="gender" value="others"> Others
                                </div>

                                <div class="form-group">
                                    <textarea name="about" class="form-control" id="about" cols="" rows="" placeholder="Enter Something about yourself" required=""></textarea>
                                </div>

                                <div class="form-check">
                                    <input type="checkbox"  name="check" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">agree terms and conditions</label>
                                </div>
                                <br>
                                <div class="container text-center" id="loader" style="display: none;">
                                    <span class="fa fa-refresh fa-spin fa-2x"></span>
                                    <h4>Please wait...</h4>
                                </div>
                                <div class="text-center">
                                <button id="sumbimt-btn" type="submit" class="btn btn-primary">Register</button>
                                <button type="Reset" class="btn btn-danger ml-2">Reset</button>
                                </div>
                            </form>

                        </div>

                    </div>
                </div>
            </div>
        </main>
        
        
        
        
        
        
        
         <script
         src="https://code.jquery.com/jquery-3.5.1.min.js"
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
           $(document).ready(function(){
               console.log("loaded");
               
               $("#reg-form").on('submit',function(event){
                   event.preventDefault();
                   
                   let form=new FormData(this);
                   
                   $("#sumbimt-btn").hide();
                   $("#loader").show();
                   
                   //send register servlet;
                   $.ajax({
                      url: "RegisterServlet",
                      type: 'POST',
                      data: form,
                      success: function (data, textStatus,  jqXHR){
                          
                          console.log(data);
                          $("#sumbimt-btn").show();
                          $("#loader").hide();
                          
                          if(data.trim()==='done')
                          {
                          swal("Registration Successfully...")
                                 .then((value) => {
                              window.location = "index.jsp";
                             });
                             } else
                             {
                                 
                                  swal("Enter valid Content..");
                             }
                      },
                      error: function(jqXHR, textStatus, errorThrown){
                        
                         $("#sumbimt-btn").show();
                          $("#loader").hide();   
                          swal("Something went wrong");
                      },                     
                      processData: false,
                      contentType: false                      
                   });  
                 });
               });
        </script>
    </body>
</html>
