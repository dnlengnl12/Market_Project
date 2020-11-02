<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>


<html>
<head>
		<title>Pinball Website Template | Home :: w3layouts</title>
		<link href="../resources/css/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" type="image/x-icon" href="../resources/images/fav-icon.png" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		

<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.1.min.js"></script>
		
		<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>Center Modal</title>

        <style>
			  body input.inpt::-webkit-input-placeholder {
			  font-size: 14px;
			  color: #999999;
			  font-family: 'Lato', sans-serif;
			}
			body input.inpt:-moz-placeholder {
			  font-size: 14px;
			  color: #999999;
			  font-family: 'Lato', sans-serif;
			}
			body input.inpt::-moz-placeholder {
			  font-size: 14px;
			  color: #999999;
			  font-family: 'Lato', sans-serif;
			}
			body input.inpt:-ms-input-placeholder {
			  font-size: 14px;
			  color: #999999;
			  font-family: 'Lato', sans-serif;
			}
			body input.inpt:focus {
			  border-color: #999999;
			}
			
			body h1.login_header {
			  font-size: 30px;
			  font-weight: 700;
			  margin-bottom: 23px;
			  text-align: center;
			  text-indent: 6px;
			  letter-spacing: 7px;
			  text-transform: uppercase;
			  color: #1e1f76;
			}
			body input.inpt {
				text-align:center;
				 font-size: 14px;
				 width: 50%;
				 height: 15px;
				 margin-bottom: 12px;
				 padding: 14px 22px;
				 color: #999999;
				 border: 3px solid #d1d8fe;
				 background: transparent;
				 -moz-border-radius: 2px;
				 -webkit-border-radius: 2px;
				 border-radius: 10px;
				 margin: 0px 0px 12px 0px;
				 outline: 0px solid #d1d8fe;
			}
        
			body span.explain {
				font-size: 15px;
				margin: 0px 0px 17px 40px;
				color: #1e1f76;
			}
			body .loginform{
				text-align: center;
			}
			body .storebox{
				text-align: left;
				font-size: 13px;
				margin: 0px 0px 0px 135px;
				color: #999999;
			}
			body .container .content input.inpt {
			  font-size: 14px;
			  width: 40%;
			  height: 22px;
			  margin-bottom: 12px;
			  padding: 16px 13px;
			  color: #999999;
			  border: 1px solid #d9d9d9;
			  background: transparent;
			  -moz-border-radius: 2px;
			  -webkit-border-radius: 2px;
			  border-radius: 2px;
			  margin: 0px 0px 12px 40px;
			}
			
			body input.loginbutton{
				text-align: center;
				font-size: 17px;
				width: 58%;
				margin-bottom: 40px;
				height: 40px;
				color: #1b1620;
				background-color: #7687ba;
				outline: 0px solid #7687ba;
				border-radius: 5px;
			}
                    /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            -moz-border-radius: 2px;
            -webkit-border-radius: 2px;
            border-radius: 2px;
        }
    
        /* Modal Content/Box */
        .modal-content {
            background-color: #ebebeb;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 37%; /* Could be more or less, depending on screen size */
            -moz-border-radius: 15px;
            -webkit-border-radius: 15px;
            border-radius: 15px;                          
        }
        /* The Close Button */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
        #followQuickMenu { 
        	position:absolute; 
        	top:180px; 
        	right:50%; 
        	margin-right:-670px;
        }
       
		
            
        </style>
        
		<!----webfonts---->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
		<!----//webfonts---->
		<!-- Global CSS for the page and tiles -->
  		<link rel="stylesheet" href="../resources/css/main.css">
  		<!-- //Global CSS for the page and tiles -->
		<!---start-click-drop-down-menu----->
		<script src="../resources/js/jquery.min.js"></script>
        <!----start-dropdown--->
         <script type="text/javascript">
			var $ = jQuery.noConflict();
				$(function() {
					$('#activator').click(function(){
						$('#box').animate({'top':'0px'},500);
					});
					$('#boxclose').click(function(){
					$('#box').animate({'top':'-700px'},500);
					});
				});
				$(document).ready(function(){
				//Hide (Collapse) the toggle containers on load
				$(".toggle_container").hide(); 
				//Switch the "Open" and "Close" state per click then slide up/down (depending on open/close state)
				$(".trigger").click(function(){
					$(this).toggleClass("active").next().slideToggle("slow");
						return false; //Prevent the browser jump to the link anchor
				});
									
			});

			$(document).ready(function(){
			       // Get the modal
		        var login_Modal = document.getElementById("login_Modal");
		 
		        // Get the button that opens the modal
		        var login = document.getElementById("login");
		 
		        // Get the <span> element that closes the modal
		        var span = document.getElementsByClassName("close")[0];                                          
		 
		        // When the user clicks on the button, open the modal 
		        login.onclick = function() {
		           login_Modal.style.display = "block";
		       	}
		 
		        // When the user clicks on <span> (x), close the modal
		        span.onclick = function() {
		            login_Modal.style.display = "none";
		        }
		 
		        // When the user clicks anywhere outside of the modal, close it
		        window.onclick = function(event) {
		            if (event.target == login_Modal) {
		                login_Modal.style.display = "none";
		            }
		        }
			});

			function writeForm(){
				location.href="/board/boardWriteForm";
			}

		</script>
</head>
	<body>
		<!---start-wrap---->
			<!---start-header---->
			<div class="header">
				<div class="wrap">
				<div class="logo">
					<a href="index.html"><img src="../resources/images/logo.png" title="pinbal" /></a>
				</div>
				<div class="nav-icon">
					 <a href="#" class="right_bt" id="activator"><span> </span> </a>
				</div>
				 <div class="box" id="box">
					 <div class="box_content">        					                         
						<div class="box_content_center">
						 	<div class="form_content">
								<div class="menu_box_list">
									<ul>
										<li><a href="/board/boardAllList"><span>전체</span></a></li>
										<li><a href="#"><span>티켓</span></a></li>
										<li><a href="#"><span>앨범</span></a></li>
										<li><a href="#"><span>?</span></a></li>
										<li><a href="#"><span>goods</span></a></li>
										<li><a href="contact.html"><span>Contact</span></a></li>
										<div class="clear"> </div>
									</ul>
								</div>
								<a class="boxclose" id="boxclose"> <span> </span></a>
							</div>                                  
						</div> 	
					</div> 
				</div>       	  
				<div class="top-searchbar">
					<form>
						<input type="text" /><input type="submit" value="" />
					</form>
				</div>
				<div class="userinfo">
					<div class="user">
						<ul>
							<li><a href="#" id="login"><img src="../resources/images/user-pic.png" title="user-name" /><span>Login</span></a></li>
  
						</ul>
						 
 
					    <!-- The Modal -->
					    <div id="login_Modal" class="modal">
	 
					      <!-- Modal content -->
					      <div class="modal-content">
					        <span class="close">&times;</span>
					        <h1 class="login_header">Login To Your Account</h1>                                                               
					        <br>
					        <div class="loginform">
					        <form action="">
						        <input type="text" placeholder="아이디를 입력 해 주세요." class="inpt">
						        <br>
						        <input type="password" placeholder="비밀번호를 입력 해 주세요." class="inpt">
						        <br>
						        <div class="storebox">
						        <input type="checkbox">아이디/비밀번호 저장
						        </div>
						        <br>
						        <input type="button" value="로그인" class="loginbutton">
					 		</form>
					 			<a href="/joinForm">회원가입</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a>아이디 찾기</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a>비밀번호 찾기</a>
					 		</div>     
					      </div>
					 
					    </div>
					</div>
				</div>
				<div class="clear"> </div>
			</div>
		</div>
		<!---//End-header---->
			<!---start-content---->
		<div class="content">
			<div class="wrap">
			 <div id="main" role="main">
			      <ul id="tiles">
			        <!-- These are our grid blocks -->
			        <li onclick="location.href='single-page.html';">
			        	<img src="../resources/images/img1.jpg" width="282" height="118">
			        	<div class="post-info">
			        		<div class="post-basic-info">
				        		<h3><a href="#">Animation films</a></h3>
				        		<span><a href="#"><label> </label>Movies</a></span>
				        		<p>Lorem Ipsum is simply dummy text of the printing & typesetting industry.</p>
			        		</div>
			        		<div class="post-info-rate-share">
			        			<div class="rateit">
			        				<span> </span>
			        			</div>
			        			<div class="post-share">
			        				<span> </span>
			        			</div>
			        			<div class="clear"> </div>
			        		</div>
			        	</div>
			        </li>
			     </ul>
			     
			     <input type="button" id="fllowQuickMenu" class="write" value="글등록" onclick="writeForm();">
			 </div>
		</div>
	</div>
			      
</body>
			
</html>