<!DOCTYPE html>

<%@page import="home_page_model.Home_Page_Model"%>
<%@page import="common_use_bean.Home_Page_Use_Bean"%><html class="no-js">

<head>
    <!-- meta -->
    <meta charset="utf-8">
    


    <!-- bootstrap -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap/css/bootstrap.min.css">
    <!-- /bootstrap -->

    <!-- core styles -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/main.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/animate.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/vendor/offline/theme.css">
    <!-- /core styles -->

    <!-- page styles -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/vendor/toastr/toastr.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/vendor/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- /page styles -->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- load modernizer -->
    <script src="<%=request.getContextPath() %>/vendor/modernizr.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.6.1/firebase-app.js"></script>
<script defer src="https://www.gstatic.com/firebasejs/7.6.0/firebase-firestore.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.6.0/firebase-auth.js"></script>


<script type="text/javascript">
$(document).ready(function(){
const db= firebase.firestore();
db.doc('/record/GYwCRhmhBpfKP0knOHAa/').get().then(res=>{
document.getElementById('books').innerHTML += res.data().totalBooks;
document.getElementById('outBooks').innerHTML += res.data().totalBooksOut;
document.getElementById('issue').innerHTML += res.data().totalIssues;
document.getElementById('student').innerHTML += res.data().totalStudents;
document.getElementById("load").style.display = "none";
})
})

</script>


</head>

<!-- body -->

<body>
	

	
    <div class="app" data-sidebar="locked">
        <!-- top header -->
        
               <%@include file="../../common/tab.jsp" %>
               
           

            <!-- chat panel -->
           
            <!-- /chat panel -->

            <!-- main content -->
            <section class="main-content">

                <!-- content wrapper -->
                <div class="content-wrap">

                    <div class="row mg-b">
                        <div class="col-xs-6" style="display: flex">
                            <div></div>
                            <div>
                            <h3 class="no-margin">Dashboard</h3>
                           
                            <small>Welcome back, ADMIN</small>
                        </div>
                            <div id="load" style="margin-top: -33px;">
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
                        </div>
                       
                    </div>
					<%
					Home_Page_Model obj_Home_Page_Model=new Home_Page_Model();
					Home_Page_Use_Bean obj_Home_Page_Use_Bean=obj_Home_Page_Model.select_counts();
					%>
					 <div class="row">
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <section class="panel">
                                <div class="panel-body">
                                    <div class="circle-icon bg-success">
                                        <i class="fa fa-book"></i>
                                    </div>
                                    <div>
                                        <h3 id="books" class="no-margin">
                                        	
                                        	<!-- <%=obj_Home_Page_Use_Bean.getBook_count() %> -->
                                        
                                        </h3>
                                        Total Books
                                    </div>
                                </div>
                            </section>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <section class="panel">
                                <div class="panel-body">
                                    <div class="circle-icon bg-danger">
                                        <i class="fa fa-users"></i>
                                    </div>
                                    <div>
                                        <h3 id="student" class="no-margin">
                                          
											<!-- <%=obj_Home_Page_Use_Bean.getStudent_count() %> -->
                                        
										</h3>
                                        Total Students
                                    </div>
                                </div>
                            </section>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <section class="panel">
                                <div class="panel-body">
                                    <div class="circle-icon bg-default">
                                        <i class="fa fa-magnet"></i>
                                    </div>
                                    <div>
                                        <h3 id="issue" class="no-margin">
                                        
                                        <!-- <%=obj_Home_Page_Use_Bean.getTotal_issues_today() %>
                                         -->
                                        
                                        </h3>
                                       	Total Issues Today
                                    </div>
                                </div>
                            </section>
                        </div> 
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <section class="panel">
                               <div class="panel-body">
                                    <div class="circle-icon bg-default">
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div>
                                        <h3 id="outBooks" class="no-margin"> 
                                        
                                        <!-- <%=obj_Home_Page_Use_Bean.getTotal_books_out() %> -->
                                        
                                        
                                        </h3>
                                       	Total Books Out
                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>
                    
                </div>
                <!-- /content wrapper -->
            </section>
            <!-- /main content -->
        </section>

    </div>

    <div data-phase="1" class="offline-ui">
        <div class="offline-ui-content" data-retry-in="" data-retry-in-abbr=""></div>
        <a class="offline-ui-retry"></a>
    </div>

    <!-- core scripts -->
    <script src="<%=request.getContextPath() %>/vendor/jquery-1.11.0.min.js"></script>
    <script src="<%=request.getContextPath() %>/bootstrap/js/bootstrap.js"></script>
    <!-- /core scripts -->

    <!-- page scripts -->
    <script src="<%=request.getContextPath() %>/vendor/toastr/toastr.min.js"></script>
    <script src="<%=request.getContextPath() %>/vendor/moment.js"></script>
    <script src="<%=request.getContextPath() %>/vendor/skycons.js"></script>
    <script src="<%=request.getContextPath() %>/vendor/jquery.blockUI.js"></script>
    <script src="<%=request.getContextPath() %>/vendor/raphael.min.js"></script>
    <script src="<%=request.getContextPath() %>/vendor/morris/morris.js"></script>
    <script src="<%=request.getContextPath() %>/vendor/switchery/switchery.js"></script>
    <script src="<%=request.getContextPath() %>/vendor/jquery.slimscroll.js"></script>
    <!-- /page scripts -->

    <!-- theme scripts -->
    <script src="<%=request.getContextPath() %>/js/off-canvas.js"></script>
    <script src="<%=request.getContextPath() %>/vendor/offline/offline.min.js"></script>
    <script src="<%=request.getContextPath() %>/js/main.js"></script>
    <!-- /theme scripts -->

    <script src="<%=request.getContextPath() %>/js/dashboard.js"></script>

</body>
<!-- /body -->

</html>
