﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Adventure - Book with us</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Abril+Fatface" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
    
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.html">Adventure Tours & Travels</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="Home.aspx" class="nav-link">Home</a></li>
                <li class="nav-item"><a href="Login.aspx" class="nav-link">Admin Login</a></li>
                <li class="nav-item"><a href="Booking.aspx" class="nav-link">Booking</a></li>
	         <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
      <div class="hero-wrap js-fullheight" style="background-image: url('images/bg_1.jpg'); height:30px;">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Register Yourself Here</h1>
             </div>
             <p>Register yourself for further bookings..</p>
        </div>
         <br />
          <br />
          <div>
          <h1 style="font-size:larger; color:black"><center>Fill up the Form Carefully..</center></h1>
          <br />
              
              <form id="form1" runat="server">
               <center>
        <table style="width:30%; flex-align:center">
           
          
            <tr>
                <td><b>Name</b></td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" required="required"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><b>Address</b></td>
                <td>
                    <asp:TextBox ID="txtAdd" runat="server" required="required"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td><b>State</b></td>
                <td>
                    <asp:DropDownList ID="DropDownListState" runat="server" required="required">
                        <asp:ListItem>--Select State--</asp:ListItem>
                        <asp:ListItem>West Bengal</asp:ListItem>
                        <asp:ListItem>Bihar</asp:ListItem>
                        <asp:ListItem>Maharastra</asp:ListItem>
                        <asp:ListItem>Kerala</asp:ListItem>
                        <asp:ListItem>Odisa</asp:ListItem>
                    </asp:DropDownList>
&nbsp;</td>
            </tr>
             <tr>
                <td><b>City</b></td>
                <td>
                    <asp:DropDownList ID="DropDownListCity" runat="server" required="required">
                        <asp:ListItem>--Select City--</asp:ListItem>
                        <asp:ListItem>Kolkata</asp:ListItem>
                        <asp:ListItem>Howrah</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Kochi</asp:ListItem>
                        <asp:ListItem>Bengaluru</asp:ListItem>
                    </asp:DropDownList>
&nbsp;</td>
            </tr>
            <tr>
                <td><b>Phone</b></td>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server" required="required"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td><b>Email-id</b></td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" required="required"></asp:TextBox>
                 </td>
            </tr>
              <tr>
               <td><b>Create Password</b></td>
               <td>
                   <asp:TextBox ID="txtPass" runat="server" TextMode="Password" required="required"></asp:TextBox>
                  </td>
            </tr>
            <tr>
                <td><b>Age</b></td>
                <td>
                    <asp:TextBox ID="txtAge" runat="server" required="required"></asp:TextBox>
                </td>
            </tr>
           
            <tr>
                <td><b>Gender</b></td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonListGender" runat="server" RepeatDirection="Horizontal" required="required">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            
            <tr>
                <td>
                    <td>
                        <asp:Button ID="btnRegister" runat="server" Font-Bold="True" Text="Register" OnClick="btnRegister_Click" />
                        <br />
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </td>
                
            </tr>
            
            <tr>
                <td colspan="2">
                    &nbsp;</tr>
        </table>
                   </center>
              </form>
          </div>
          </div>
          <section>
          
          <br /><br />
          <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Adventure Tours & Travels</h2>
              <p>Far far away, behind the word mountains, far from the countries, there live the blind texts.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">Information</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">About Us</a></li>
                <li><a href="#" class="py-2 d-block">Online enquiry</a></li>
                <li><a href="#" class="py-2 d-block">Call Us</a></li>
                <li><a href="#" class="py-2 d-block">General enquiries</a></li>
                <li><a href="#" class="py-2 d-block">Booking Conditions</a></li>
                <li><a href="#" class="py-2 d-block">Privacy and Policy</a></li>
                
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Experience</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Beach</a></li>
                <li><a href="#" class="py-2 d-block">Adventure</a></li>
                <li><a href="#" class="py-2 d-block">Hills & Mountains</a></li>
                <li><a href="#" class="py-2 d-block">Mordern Cities</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">7/1 SDF Building,Sector-V Saltlake, Kolkata</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+91 9875456321</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@adventurelife.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">
              </section>

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    </div>



  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
          </body>
    </html>