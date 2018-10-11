<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
     import ="java.util.ArrayList"
     import ="java.util.List"
         import ="javax.servlet.http.*"
    %>
 
 <%@page import="com.digy_tms.Pojo.*"%>
    <%@page import="com.digy_tms.dao.*"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
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
<style>
#search {
    width: 9em;  height: 3em;
}
#reset{
width: 9em;  height: 2.5em;
}
#create{
width: 9em;  height: 2.5em;
}
.table1{
 overflow: scroll;
  border: 4px  black;
 width: 1110px;
    height: 264px;
     margin-left: 37px;
     background-color: #DCDCDC;
}
.row_color{
background-color: #6A5ACD;

}
</style>

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
							
							<script type="text/javascript">
function myalert()
{
	alert("Search Unsuccessfull No Result Found");

	
	}
</script>
							
<form class="form-horizontal" action="Search_Master_Servlets" method="POST" >
<div class="container1 " align="center-middle" >
<center>
<table align="center" >
<h3>Search Category</h3>

<tr>
	<div class="form-group">
			<td><label>Cource_ID</label></td><td><input type="text" name="Course_id"  placeholder="Course_ID"/></td>
			<td><label>Cource_Name</label></td><td><input type="text" name="Course_name"  placeholder="Course_Name" /></td>
			 
	</div>
</tr>

<tr>
	<div class="form-group">
	
				<td><label>Cource Category</label></td><td>
					<select name="course_category">
							  <option  selected="selected" >--Select--       </option>
							  <option value="CAT001" >CAT001</option>
							  <option value="CAT002" >CAT002</option>
							  <option value="CAT003" >CAT003</option>
							  <option value="CAT004" >CAT004</option>
					</select></td>
					
			<td> <label>Cource Sub Category</label></td><td>
					<select name="course_sub_category">
							  <option  selected="selected" >--Select--</option>
							  <option value="SUBCAT001" >SUBCAT001</option>
							  <option value="SUBCAT002" >SUBCAT002</option>
							  <option value="SUBCAT003" >SUBCAT003</option>
							  <option value="SUBCAT004" >SUBCAT004</option>
					</select></td>
	</div>
</tr>
<tr>
	<div class="form-group" >
			<tr><td><label>Cource_Status</label></td><td>
					<select name="status" >
					<option  selected="selected" >--Select--</option>
							  <option value="ACTIVE" >ACTIVE</option>
							  <option value="NOT ACTIVE" >NOT ACTIVE</option>						  
					</select></td>	
	</div>
</tr>
</table>
			<input type="submit" name="search" value="Search" class="btn btn-primary" id="search"/> 
			<input type="reset" name="cancel" value="Reset" class="btn btn-primary" id="reset"/>
			<a href="http://localhost:8081/digy_tms_central16072018basic/Course_master_edit.jsp" class="btn btn-primary" id="create"  >CreateNew</a>
</div>

</form>
</div>

<c:catch var ="catchException"> 

<c:if test="${FlagStatus}">

 						<%
					   HttpSession ses=request.getSession();
					   //ArrayList<Item> list = (ArrayList<Item>) request.getAttribute("itemList");
					//   ArrayList<Integer> key=(ArrayList<Integer>)

					System.out.println("JSp");
				//	   ArrayList<Integer> key =request.getAttribute("Course_key");
					   ArrayList<Integer> key =(ArrayList)request.getAttribute("Course_key");
					   System.out.println("JSp");
					   for(int i=0;i<key.size();i++)
					   System.out.println("JSP   List "+key.get(i));
					   pageContext.setAttribute("key",key);  
					   %>
					   <c:set var="continueExecuting" scope="request" value="true"/>
					 <c:if test="${empty key}">
					 <script type="text/javascript">
					 myalert();
					 
					 </script>
					 <c:set var="continueExecuting" scope="request" value="false"/>
					 </c:if>
			
						<c:if test="${continueExecuting}">
						<div class="table1">
			<center>
			
					
<table border = "1" width = "50%" cellpadding="10">
					         <tr class="row_color">
					         	
					            <th>Course ID</th>
					            <th>Course Name</th>
					            <th>Course Short name</th>
					            <th>Course Type</th>
					            <th>Course Category</th>
					            <th>Course sub category</th>
					            <th>Course duration uom</th>
					            <th>Cousre Duration min</th>
					            <th>Course Duration Max</th>
					            <th>Curese buffer 01</th>
					            <th>Curese buffer 02</th>
					            <th>Curese buffer 03</th>
					            <th>Curese buffer 04</th>
					            <th>Curese buffer 05</th>
					            <th>Course Status</th>
					            <th>Course created by</th>
					            <th>Course created DtTm</th>
					            <th>Course mod by</th>
					            <th>Course mod DtTm</th>
					            <th>Updation</th>
					            <th>Deletion</th>
					            <th></th>
					           
					         </tr>
					         
					         
					<sql:setDataSource var="myresult" driver="com.mysql.jdbc.Driver"
							url="jdbc:mysql://localhost:3306/digywood_digytms"
							user="root" password="root"/>
							
						<c:forEach items="${key}" var="item"><!-- Used in query -->
					<sql:query dataSource="${myresult}" var="result" >
					
					select Course_Key,Course_ID,Course_Name,Course_Short_name,Course_Type,Course_Category,Course_sub_category,Course_duration_uom,Cousre_Duration_min,Course_Duration_Max,Curese_buffer_01,Curese_buffer_02,Curese_buffer_03,Curese_buffer_04,Curese_buffer_05,Course_Status,Course_created_by,Course_created_DtTm,Course_mod_by,Course_mod_DtTm
					 from course_master where Course_Key='${item}' ;
					</sql:query>
		         
					         <c:forEach var = "row" items = "${result.rows}">
					            <tr>
					            		<c:set var="course_key" value="${row.Course_Key}"> </c:set> 
					               <td> <c:out value = "${row.Course_ID}"/></td>
					               <td> <c:out value = "${row.Course_Name}"/></td>
					               <td> <c:out value = "${row.Course_Short_name}"/></td>
					               <td> <c:out value = "${row.Course_Type}"/></td>
					               <td> <c:out value = "${row.Course_Category}"/></td>
					               <td> <c:out value = "${row.Course_sub_category}"/></td>
					               <td> <c:out value = "${row.Course_duration_uom}"/></td>
					               <td> <c:out value = "${row.Cousre_Duration_min}"/></td>
					               <td> <c:out value = "${row.Course_Duration_Max}"/></td>
					               <td> <c:out value = "${row.Curese_buffer_01}"/></td>
					               <td> <c:out value = "${row.Curese_buffer_02}"/></td>
					               <td> <c:out value = "${row.Curese_buffer_03}"/></td>
					               <td> <c:out value = "${row.Curese_buffer_04}"/></td>
					               <td> <c:out value = "${row.Curese_buffer_05}"/></td>
					               <td> <c:out value = "${row.Course_Status}"/></td>
					               <td> <c:out value = "${row.Course_created_by}"/></td>
					               <td> <c:out value = "${row.Course_created_DtTm}"/></td>
					               <td> <c:out value = "${row.Course_mod_by}"/></td>
					               <td> <c:out value = "${row.Course_mod_DtTm}"/></td>
					               
					               
					      <form >
					     <td><h3><a href="Update_Servlets?user=${row.Course_Key}" style=" padding: 25px 25px 25px 25px; " ><i class="glyphicon glyphicon-upload"></i></a></h3></td>
					     
					      <!-- 
						   <td>  <input type="submit" formaction="Update_Servlets"  value="Update" class="form-control"/> 
						         <!--	 <td><a href="http://localhost:8081/Course_master/Update_Servlets" class="btn btn-primary" role="button" ><span class="glyphicon glyphicon-upload"></span></a> 
						        <input type="hidden" name="user" value="${course_key}" /></td>
						-->         
						         
   						 </form>  
   						        
 							<form>
 							<td><h3><a href="Delete_Servlets?delete=${row.Course_Key}" style=" padding: 25px 25px 25px 25px; " ><i class="glyphicon glyphicon-trash"></i></a></h3></td> 
 							
 							
 									<!-- <td>	<input type="submit" formaction="Delete_Servlets" ><i class="glyphicon glyphicon-search"></i></input>  -->
 									<!--  	 <input type="hidden" name="" value="${course_key }" /></td>  -->
									<!-- <td><a href="http://localhost:8081/digy_tms_central16072018basic/Search_Master_Servlets.java" class="btn btn-primary" role="button">Delete</a></td> -->
							
							 </form>	
					            </tr>
					         </c:forEach></c:forEach>
					      </table>
					      </center>
					      
					      </div>
					      </c:if>
					      
					      
	</c:if>
    
    <!--   
      <c:if test="${not flag}">
      <script> myalert() </script>
      </c:if>
      -->
</c:catch>
       <c:if test = "${catchException != null}">
         <p>The exception is : ${catchException} <br />
         There is an exception: ${catchException.message}</p>
      </c:if>
   
							
							
							
	</div>
									<!--//outer-wp-->
									 <!--footer section start-->
										<footer position: fixed;>
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