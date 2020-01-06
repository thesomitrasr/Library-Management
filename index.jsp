<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.Iterator"%>
<%@page import="common.Common_Things"%><html>
<head>
<script src="https://www.gstatic.com/firebasejs/7.6.1/firebase-app.js"></script>
<script defer src="https://www.gstatic.com/firebasejs/7.6.0/firebase-firestore.js"></script>
<script defer src="https://www.gstatic.com/firebasejs/7.6.0/firebase-auth.js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

 
 <!-- meta -->
    <meta charset="utf-8">
    
     

    <!-- bootstrap -->
    <link rel="stylesheet" href="<%=Common_Things.url %>/bootstrap/css/bootstrap.min.css">
    <!-- /bootstrap -->

    <!-- core styles -->
    <link rel="stylesheet" href="<%=Common_Things.url %>/css/main.css">
    <!-- /core styles -->

    <!-- page styles -->
    <!-- /page styles -->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- load modernizer -->
    <script src="<%=Common_Things.url %>/vendor/modernizr.js"></script>
	<script src="<%=Common_Things.url %>/js/firebase.js"></script>






	    
		



			<script type="text/javascript">
				function validateForm1() {
				    var x = document.forms["myForm1"]["admission_no"].value;
				    if (x==null || x=="") {
				        alert("Please enter Admission Number");
				        return false;
				    }

				    var x = document.forms["myForm1"]["password"].value;
				    if (x==null || x=="") {
				        alert("Please enter Password");
				        return false;
				    }
				    
				}
			</script>

</head>
<body>	

	
		

	
		

			 <div class="app-user"> 
				        <div class="user-container"> 








		<%
		

	
	
	
	
	 
	 
	
	 
		 

			
			
		 
		 	
	%>
							
		

				
					

					

 

				            <section class="panel panel-default">
				                <header class="panel-heading"><%=" Library Management System - Janhavi" %></header>
				                <div class="bg-white user pd-lg">
				                    <h6>
				                        <strong>Welcome.</strong>Sign in to get started!</h6>
				
				                  <form id="login" name="myForm"  method="post" onsubmit="return ">
									<input id="username" type="text" class="form-control mg-b-sm" name="user_name" placeholder="User Name" autofocus >
				                        <input id="psd" type="password" class="form-control" placeholder="Password"  name="password" >
				                         
				                        <div class="text-right mg-b-sm mg-t-sm">
				                            <a href="#"><%="" %></a>
				                        </div>
										<button id="btns" class="btn btn-info btn-block" type="submit">Sign in</button>
										<p id="error" style="opacity:0;font-size: 12px; text-align: center; margin-top: 19px; color:red">* Please enter username & password correctly</p>
										<div id="load" style="margin-left: 125px; display: none">
										<div class="loadingio-spinner-rolling-gl80wrysziu"><div class="ldio-1kupyuyudmf">
											<div></div>
											</div></div>
										</div>
											<style type="text/css">
											@keyframes ldio-1kupyuyudmf {
											  0% { transform: translate(-50%,-50%) rotate(0deg); }
											  100% { transform: translate(-50%,-50%) rotate(360deg); }
											}
											.ldio-1kupyuyudmf div {
											  position: absolute;
											  width: 27px;
											  height: 27px;
											  border: 5.4px solid #1badb2;
											  border-top-color: transparent;
											  border-radius: 50%;
											}
											.ldio-1kupyuyudmf div {
											  animation: ldio-1kupyuyudmf 1s linear infinite;
											  top: 54px;
											  left: 54px
											}
											.loadingio-spinner-rolling-gl80wrysziu {
											  width: 108px;
											  height: 108px;
											  display: inline-block;
											  overflow: hidden;
											  background: none;
											}
											.ldio-1kupyuyudmf {
											  width: 100%;
											  height: 100%;
											  position: relative;
											  transform: translateZ(0) scale(1);
											  backface-visibility: hidden;
											  transform-origin: 0 0; /* see note above */
											}
											.ldio-1kupyuyudmf div { box-sizing: content-box; }
											/* generated by https://loading.io/ */
											</style>


				                    </form>
				<script type="text/javascript">
				document.getElementById("login").addEventListener('submit', function(e){
				e.preventDefault()
				document.getElementById("load").style.display = "flex";
				document.getElementById("error").style.opacity = 0;
				const username= document.getElementById('username').value+'@lms.com'
				const password= document.getElementById('psd').value
				if ((username===null || username==="") ||(password===null || password==="")  ){
					document.getElementById("load").style.display = "none";
					document.getElementById("error").style.opacity = 1;

				}
				else{
					firebase.auth().signInWithEmailAndPassword(username,password).then(res=>{
						document.getElementById("error").style.opacity = 0;
						document.getElementById("load").style.display = "none";
				window.location.href='<%=Common_Things.url %>/admin-sign-in'
				}).catch(err=>{
					document.getElementById("error").style.opacity = 0;
					document.getElementById("load").style.display = "none";
					alert(err.message)
				   
				})

				}
    


              
})

				
				</script>
				                   
				                </div>
				            </section>




						<%
					String message=(String)session.getAttribute("ss_index_message");
					if(message!=null){
					%>
						
						<div class="alert alert-warning alert-dismissable">
                                        <%=message%>
                                    </div>


					<%			session.removeAttribute("ss_index_message");
					}
					%>









				       



	
	

		




 								</div>
				
				
				
				
				
				
				
				
				
				    </div>







</body>
</html>