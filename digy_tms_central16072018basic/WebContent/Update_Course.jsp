<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
      import ="java.util.ArrayList"
         import ="javax.servlet.http.*"    
    %>
 	<%@page import="com.digy_tms.Pojo.*"%>
    <%@page import="com.digy_tms.dao.*"%>
    <%@page import="java.util.*"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>DIGY-TMS an Admin Panel Category Flat Bootstrap Responsive Web Template | Blank Page :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="DIGY-TMS Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
	<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
	<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet"> 
	<!-- jQuery -->
<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'>
	<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
	<!-- /js -->
<script src="js/jquery-1.10.2.min.js"></script>
<!-- //js-->
</head> 
<body>
   <div class="page-container">
   <!--/content-inner-->
	<div class="left-content">
	   <div class="inner-content">
		<!-- header-starts -->
			<div class="header-section">
						<!--menu-right-->
						<div class="top_menu">
<!-- 						        <div class="main-search"> -->
<!-- 											<form action="search.jsp"> -->
<!-- 											   <input type="hide" value="Search" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search';}" class="text"/> -->
<!-- 												<input type="hide" value=""/> -->
<!-- 											</form> -->
<!-- 									<div class="close"><img src="images/cross.png" /></div> -->
								</div>
<!-- 									<div class="srch"><button></button></div> -->
									

							<!--/profile_details-->
								<div class="profile_details_left">
					<ul class="nofitications-dropdown" style="margin-left: -20px;">
											<li class="dropdown note dra-down">
											  <div id="dd" class="wrapper-dropdown-3" tabindex="1">
																			<span>User</span>
										<ul class="dropdown">
											<li><a class="deutsch">Profile</a></li>
											<li><a class="english">Logout</a></li>
										

										</ul>
																		</div>
																		<script type="text/javascript">
			
																	function DropDown(el) {
																		this.dd = el;
																		this.placeholder = this.dd.children('span');
																		this.opts = this.dd.find('ul.dropdown > li');
																		this.val = '';
																		this.index = -1;
																		this.initEvents();
																	}
																	DropDown.prototype = {
																		initEvents : function() {
																			var obj = this;

																			obj.dd.on('click', function(event){
																				$(this).toggleClass('active');
																				return false;
																			});

																			obj.opts.on('click',function(){
																				var opt = $(this);
																				obj.val = opt.text();
																				obj.index = opt.index();
																				obj.placeholder.text(obj.val);
																			});
																		},
																		getValue : function() {
																			return this.val;
																		},
																		getIndex : function() {
																			return this.index;
																		}
																	}

																	$(function() {

																		var dd = new DropDown( $('#dd') );

																		$(document).click(function() {
																			// all dropdowns
																			$('.wrapper-dropdown-3').removeClass('active');
																		});

																	});

																</script>
										
										</li>
									
									

							<div class="clearfix"></div>	
							<!--//profile_details-->
						</div>
						<!--//menu-right-->
					<div class="clearfix"></div>
				</div>
					<!-- //header-ends -->
						<!--outter-wp-->
							<div class="outter-wp">
							
							
							
							
<%
System.out.println("Inside the Update Course");
HttpSession ses=request.getSession();
UpdateBean ub=(UpdateBean)ses.getAttribute("course_key");


//UpdateBean ub=new UpdateBean();
String course_key=ub.getCourse_key();
ses.setAttribute("course_key1",course_key);
System.out.println("INSIDE THE Update course.jsp   "+course_key);
String course_id=ub.getCourse_id();
String course_name=ub.getCourse_name();
String course_short_name=ub.getCourse_short_name();
String course_type=ub.getCourse_type();
String course_category=ub.getCourse_category();
String course_sub_category=ub.getCourse_sub_category();
String course_duration_uom=ub.getCourse_duration_uom();
String course_duration_min=ub.getCourse_duration_min();
String course_duration_max=ub.getCourse_duration_max();
String Curese_buffer_01=ub.getCurese_buffer_01();
String Curese_buffer_02=ub.getCurese_buffer_02();
String Curese_buffer_03=ub.getCurese_buffer_03();
String Curese_buffer_04=ub.getCurese_buffer_04();
String Curese_buffer_05=ub.getCurese_buffer_05();
String course_created_by=ub.getCourse_created_by();
String course_created_DtTm=ub.getCourse_created_DtTm();
String course_mod_by=ub.getCourse_mod_by();
String course_mod_DtTm=ub.getCourse_mod_DtTm();
String course_status=ub.getCourse_Status();

System.out.println("\t################");
System.out.println(course_id);
System.out.println(course_name);
System.out.println(course_short_name);
System.out.println(course_category);
System.out.println(course_sub_category);
System.out.println(course_status);
System.out.println(course_created_by);
%>
	
	
 <form action="Update_Servlets" method="POST">
<div class="container" align="center-middle" >
<table align="center">
<tr>

<tr><td><h2><center><b>Course master Updation</b></center></h2></td>
<tr>

	<td>Course_ID</td><td><input type="text" placeholder="Course_ID" required="" name="Course_id" value="<%=ub.getCourse_id() %>" ></input></td>

	<td>Course_Name</td><td><input type="text" placeholder="Course_Name" required="" name="Course_name" value="<%=ub.getCourse_name()%>" /></td>
 </tr>
 <tr>
 	<td>Course_short_name</td><td><input type="text" placeholder="Course_short_name" required="" name="Course_short_name" value="<%=ub.getCourse_short_name()%>"/></td>
	<td>Course_type</td><td><input type="text" placeholder="Course_type" required="" name="Course_type" value="<%=ub.getCourse_type() %>" /></td>
</tr>
 
 <tr>
	 <td>Course_category</td><td><input type="text" placeholder="Course_category" required="" name="Course_category" value="<%=ub.getCourse_category()%>"/></td>
	 <td>Course_sub_category</td><td><input type="text" placeholder="Course_sub_category" required="" name="Course_sub_category" value="<%=ub.getCourse_sub_category() %>"/></td>
 </tr>
 
 <tr>
		 <td>Course_duration_uom</td><td><input type="text" placeholder="Course_duration_uom" required="" name="Course_duration_uom" value="<%=ub.getCourse_duration_uom()%>"/></td> 
		<td>Course_duration_min</td><td><input type="text" placeholder="Course_duration_min" required="" name="Course_duration_min" value="<%=ub.getCourse_duration_min()%>" /></td>
</tr>

 <tr>
 		<td>Course_duration_max</td><td><input type="text" placeholder="Course_duration_max" required="" name="Course_duration_max" value="<%=ub.getCourse_duration_max() %>"/></td>
		<td>Curese_buffer_01</td><td><input type="text" placeholder="Curese_buffer_01" required="" name="Curese_buffer_01" value="<%=ub.getCurese_buffer_01() %>" /></td>
</tr>
 
 <tr>
	 <td>Curese_buffer_02</td><td><input type="text" placeholder="Curese_buffer_02" required="" name="Curese_buffer_02" value="<%=ub.getCurese_buffer_02() %>" /></td>
	 <td>Curese_buffer_03</td><td><input type="text" placeholder="Curese_buffer_03" required="" name="Curese_buffer_03" value="<%=ub.getCurese_buffer_03() %>" /></td>
 </tr>
 
	 <tr><td>Curese_buffer_04</td><td><input type="text" placeholder="Curese_buffer_04" required="" name="Curese_buffer_04" value="<%=ub.getCurese_buffer_04() %>" /></td>
	 <td>Curese_buffer_05</td><td><input type="text" placeholder="Curese_buffer_05" required="" name="Curese_buffer_05" value="<%=ub.getCurese_buffer_05() %>" /></td>
 </tr>
		 <tr><td>Course_status</td><td><input type="text" placeholder="Course_Status" required="" name="Course_Status" value="<%=ub.getCourse_Status() %>" /></td>
		 <td>Course_created_by</td><td><input type="text" placeholder="Course_created_by" required="" name="Course_created_by" value="<%=ub.getCourse_created_by() %>"/></td>
 </tr>
 
 <tr>
		 <td>Course_created_DtTm</td><td><input type="date" placeholder="Course_created_DtTm" required="" name="Course_created_DtTm" value="<%=ub.getCourse_created_DtTm() %>" /></td>
		 <td>Course_mod_DtTm</td><td><input type="date" placeholder="Course_mod_DtTm" required="" name="Course_mod_DtTm" value="<%=ub.getCourse_mod_DtTm() %>" /></td>
		 
 </tr>
 
 <tr><td>Course_mod_by</td><td><input type="text" placeholder="Course_mod_by" required="" name="Course_mod_by" value="<%=ub.getCourse_mod_by() %>" /></td>
 </tr>


   
 <tr>
 <td><center><input type="submit" value="Submit" class="btn btn-success"></center></td>
 <td><center><input type="reset" value="Reset" class="btn btn-success"></center></td>
 
</tr>
</table>
</div>


</form>
							
	</div>
									<!--//outer-wp-->
									 <!--footer section start-->
										<footer>
<!-- 										   <p>&copy 2016 DIGY-TMS . All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">W3layouts.</a></p> -->
										<p>&copy 2018 . All Rights Reserved | Design by Digywood technologies</p>
										</footer>
									<!--footer section end-->
								</div>
							</div>
				<!--//content-inner-->
			<!--/sidebar-menu-->
				<div class="sidebar-menu">
					<header class="logo">
					<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> <a href="index.jsp"> <span id="logo"> <h1>DIGY-TMS</h1></span> 
					<!--<img id="logo" src="" alt="Logo"/>--> 
				  </a> 
				</header>
			<div style="border-top:1px solid rgba(69, 74, 84, 0.7)"></div>
			<!--/down-->
						
							   <!--//down-->
                          <div class="menu">
									<ul id="menu" >
										<li><a href="index.jsp"><i class="fa fa-tachometer"></i> <span>Dashboard</span></a></li>
									<li><a href="generate.jsp"><i class="fa fa-print"></i> <span>Generation of JSON</span></a></li>
									<li><a href="index.jsp"><i class="fa fa-question-circle"></i> <span>Question Maintenance</span><span class="fa fa-angle-right" style="float: right"></span></a>
									<ul id="menu-academico-sub" >
									         <li><a href="GroupMaintenanceServlet">Group</a></li>
									          <li><a href="index.jsp">Questions</a></li>
									           <li><a href="index.jsp">Additionals</a></li>
									            <li><a href="index.jsp">Review Center</a></li>
									         
								      </ul>
								      </li>
									<li><a href="Ptuservlet"><i class="fa fa-file-text-o"></i> <span>Practice Test Unit</span><span  style="float: right"></span></a>
									<li><a href=""><i class="fa fa-file-text-o"></i> <span>Assessment Test Unit</span><span  style="float: right"></span></a>
									<li><a href=""><i class="fa fa-th"></i> <span>Master</span><span class="fa fa-angle-right" style="float: right"></span></a>
									<ul id="menu-academico-sub" >
									         <li><a href="index.jsp">Organaisation</a></li>
									          <li><a href="index.jsp">Branch</a></li>
									           <li><a href="Search_master.jsp">Course</a></li>
									            <li><a href="index.jsp">Subject</a></li>
									             <li><a href="index.jsp">Paper</a></li>
									              <li><a href="index.jsp">Category</a></li>
									               <li><a href="index.jsp">Subcategory</a></li>
											
								      </ul>
									  

	                                <li><a href=""><i class="fa fa-group"></i> <span>Enrolments</span></a>
									<li><a href=""><i class="fa fa-money"></i> <span>Fee Configuration</span></span></a>
									<li><a href=""><i class="fa fa-link"></i> <span>Center-Course-Link</span></span></a>
									<li><a href="encryption.jsp"><i class="fa fa-lock"></i><span>Encryption</span></a>
											  </ul>		
							</div>

							<script>
							var toggle = true;
										
							$(".sidebar-icon").click(function() {                
							  if (toggle)
							  {
								$(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
								$("#menu span").css({"position":"absolute"});
							  }
							  else
							  {
								$(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
								setTimeout(function() {
								  $("#menu span").css({"position":"relative"});
								}, 400);
							  }
											
											toggle = !toggle;
										});
							</script>
<!--js -->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
</body>
</html>