<%@ page import="java.sql.*" %>


<%

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/projectjava",
		"root","root");

Statement st= conn.createStatement();
ResultSet rs = st.executeQuery("select * from addques");



String id="";
String q="";



%>









<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
     <meta charset="UTF-8">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="csstable/style.css">

    <title>Performance_Evaluation</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="css/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/startmin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="css/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<div id="wrapper">

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Performance Evaluation</a>
        </div>

        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>

        <!-- Top Navigation: Left Menu -->
        <ul class="nav navbar-nav navbar-left navbar-top-links">
            <!--<li><a href="http://localhost/project/cetpa"><i class="fa fa-home fa-fw"></i> Website</a></li>-->
        </ul>

        <!-- Top Navigation: Right Menu -->
        <ul class="nav navbar-right navbar-top-links">
            <li class="dropdown navbar-inverse">
              <!--  <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-bell fa-fw"></i> <b class="caret"></b>
                </a>-->
                <ul class="dropdown-menu dropdown-alerts">
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-comment fa-fw"></i> New Comment
                                <span class="pull-right text-muted small">4 minutes ago</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>See All Alerts</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i> Exit<b class="caret"></b>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i> Contact us</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> Help</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="AdminPanel.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    </li>
                </ul>
            </li>
        </ul>

        <!-- Sidebar -->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">

                <ul class="nav" id="side-menu">
                    <li class="sidebar-search">
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                        </div>
                    </li>
                    <li>
                        <a href="" class="active"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                    </li>
					 <li>
                        <a href="addquestion.html" class="active"><i class="fa fa-plus"></i> Add_Question</a>
                    </li>
                    <li>
                        <a href="deletequestion.jsp" class="active"><i class="fa fa-trash-o "></i> Delete_Question</a>
                    </li>
                    <li>
                        <a href="Search.html" class="active"><i class="fa fa-search"></i> Search</a>
                    </li>
                    
                </ul>

            </div>
        </div>
    </nav>

				    <!-- Page Content -->
				    <div id="page-wrapper">
				        <div class="container-fluid">
				
				            <div class="row">
				                <div class="col-lg-12">
				                    <h1 class="page-header">* Question Delete *</h1>
				                </div>
				            </div>

            <!-- ... Your content goes here ... -->
           
				      <h1>Select <span>id</span> to <span>Delete Question</span></h1>
		              		
				
            
            
            
					 <% 
					 out.println("<form action=delq.jsp method=get>");
					 out.println("<table class=responstable>");
					 while(rs.next()){
						
						 id = rs.getString("id");
						  q = rs.getString("question");
						  
						  
							
							
							out.println("<table border=5 class=responstable >");
							out.println("<tr>");
							out.println("<th data-th=Driver details>");
							out.println("id");
							out.println("</th>");
							out.println("<th>");
							out.println("<input type = checkbox name=ch  value="+id+">");
							out.println("</th>");
							out.println("<th>");
							out.println("Question");
							out.println("</th>");

							out.println("</tr>");
							out.println("<tr>");
							out.println("<td>");
							out.println(id);
							out.println("</td>");
							out.println("<td>");
							out.println("");
							out.println("</td>");
							out.println("<td>");
							out.println(q);
							out.println("</td>");

							out.println("</tr>");

							out.println("</table>");
							 out.println("<script src='http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js'></script>");
				
					 }
					 out.println("<input type=submit value=delete  name=delete class = btn btn-block btn-success style=background-color:#008B8B;color:white; >");
					 out.println("</form>");
					
					%>
					</div></div>
            
            
				     
				             
				            
				           
               
                
                    
              


<!-- jQuery -->
<script src="js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="js/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="js/startmin.js"></script>

</body>
</html>
