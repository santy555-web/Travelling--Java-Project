<!DOCTYPE html>
<%@page import="sun.security.util.Length"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login page</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="main">

<!-- Sing in  Form -->
        <section  class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="images/signin-image.jpg" alt="sing up image"></figure>
                        <a href="register.html" class="signup-image-link">Create an account</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Login</h2>
                        
                        <form action="login" method="POST" class="register-form" id="login-form" action="/action_page.php">
                         <div class="form-group">
                               <%
                               if(request.getParameter("card")!=null){
                               %>
                               <div class="alert alert-denger"> 
                               <p>
                               ${param.card}
                               </p>
                               </div>
                               <%
                               }
                               %>
                                </div>
                            
                            
                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="gmail" id="gmail" placeholder="Your Gmail" value="${cookie.email.getValue()}" required="required"/>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="password" id="your_pass" placeholder="Password" value="${cookie.password.getValue()}" required="required"/>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="remember" id="remember-me" class="agree-term" value="yes" />
                                <label for="remember-me" class="label-agree-term" ><span><span></span></span>Remember me</label>
                            </div>
                            <%
                            if(request.getParameter("msg1")!=null)
                            {
                            	%>
                            	<div class="alert alert-danger">
                            	<p style="color:red;">${param.msg1}</p>
                            	</div>
                            	<%
                            }
                            %>
                            
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>
                            </div>
                        </form>
                      <!--   <div class="social-login">
                            <span class="social-label">Or login with</span>
                            <ul class="socials">
                                <li><a href="https://facebook.com"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
                                <li><a href="https://twitter.com"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                                <li><a href="https://gmail.com"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
                            </ul>
                        </div>-->
                    </div>
                </div>
            </div>
        </section>
 </div>
 
 <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>