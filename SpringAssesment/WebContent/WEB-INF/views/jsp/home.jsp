<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page session="false"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<c:url var="test" value="/test" scope="request" />

<spring:url value="/resources/core/css/bootstrap.css" var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<spring:url value="/resources/core/css/bootstrap-select.css" var="bootstrapSelectCss" />
<link href="${bootstrapSelectCss}" rel="stylesheet" />
<spring:url value="/resources/core/css/bootstrap-theme.css" var="bootstrapThm" />
<link href="${bootstrapThm}" rel="stylesheet" />



<spring:url value="/resources/core/js/jquery.js"	var="jqueryJs" />
<script src="${jqueryJs}"></script>
<spring:url value="/resources/core/js/bootstrap-select.js"	var="bootstrapSelectjs" />
<script src="${bootstrapSelectjs}"></script>
<spring:url value="/resources/core/js/bootstrap.min.js"	var="bootstrapMinjs" />
<script src="${bootstrapMinjs}"></script>
<spring:url value="/resources/core/js/notify.js"	var="notifyJs" />
<script src="${notifyJs}"></script>
 <spring:url value="/resources/core/js/views/home.js"	var="home" />
<script src="${home}"></script>
<spring:url value="/resources/core/js/jquery.cookie.js"	var="jCooki" />
<script src="${jCooki}"></script>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv='cache-control' content='no-cache'>
<meta http-equiv='expires' content='0'>
<meta http-equiv='pragma' content='no-cache'>
<html>
<head>
<!-- <script src="JS/jquery.js"></script>
<script src="JS/bootstrap.js"></script>
<script src="JS/bootstrap-select.js"></script>
<script src="JS/notify.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
<link href="css/bootstrap.min.css" rel="stylesheet"></link>
<link href="css/bootstrap-select.css" rel="stylesheet"></link> -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Portal</title>
</head>

<body style="background-color: #e6f7ff;">
	 
		
	
	
	
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Student Portal</a>
		</div>
		<ul class="nav navbar-nav">
			<li id="stdHome"><a href="#" id="stdHomeTab">Home</a></li>
			<li id="activeHome"><a href="#" id="showHomeTab">Home</a></li>
			<li id="activeMark"><a href="#"  id="showMarkTab">Marks</a></li>
			<li id="activeSdtDetails"><a href="#"  id="showStdDetailsTab">Student Details</a></li>
			<li ><a href="#" id="stdProfileTab">Profile</a></li>

		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#" id="UserRoleSh"> </a></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" id="userlogName" href="#"><span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li ><input type="submit" class="btn btn-link" value="Profile"></input></li>
		
		<li ><input type="submit" class="btn btn-link" value="Logout"></input></li>
				</ul></li>
		</ul>
	</div>
	</nav>
	<div id="showAdm">


		<div id="showHome">
		<div class="container">
					<div class="row">
			<center>
			
			
			<h4 class="modal-title">Student Approval Pending</h4>
			
			
			<table class="table table-reflow" id="grid">
				<thead>
								<tr>
									<th>#Student Id</th>
									<th>Student Name</th>
									<th>Department</th>
									<th>Status</th>
									<th>Activate <i class="fa fa-check" aria-hidden="true"></i></th>
									
								</tr>
							</thead>
							
							

					
						
					</table>
			</center>


</div>
</div>

		</div>


<div id="showStdDetails">


<center>
				<h4 class="modal-title">
					Student Details</h4>


				<div class="container">
					<div class="row">
					
					<table class="table table-reflow">
					
					
						<thead>
								<tr>
									<th>#</th>
									<th>Student Name</th>
									<th>User ID</th>
									<th>Department</th>
									<th>Pasword Reset <i class="fa fa-refresh" aria-hidden="true"></th>
									<th>Delete User <i class="fa fa-trash" aria-hidden="true"></i></th>
									<th>Deactivate User <i class="fa fa-exclamation" aria-hidden="true"></i></i></th>
									
 

								</tr>
							</thead>
							
							
						
				
					</table>
					
					
					
					</div>
					</div>
					</center>

</div>


		<div id=showMark>
			<center>
				<h4 class="modal-title">
					Student Marks</h4>


				<div class="container">
					<div class="row">
						
						<table class="table table-reflow">
							<thead>
								<tr>
									<th>#</th>
									<th>Student Name</th>
									<th>Department</th>
									<th>Python Mark</th>
									<th>Angular Mark</th>
									<th>Java Mark</th>
									<th>Cpp Mark</th>
									<th>Grade</th>
									<th>Total (400)</th>

								</tr>
							</thead>
							
							

								<tr>
							<td></td>
							
							
							<td>
							
							
							</td>
							
							<td>
							
							
							</td>
							




							<td><a class="announce "
									data-user-id="#"
									data-name="#"
									data-python="#"
									data-angular="#"
									data-c="#"
									data-cpp="#"
									 data-target="#edit"
									data-toggle="modal"
									href="#">
									Update</a></td>
							<%-- <td><a
								href=<%="\"marks.jsp?Id=" + resultado.getInt("uId") + "\""%>>Marks</a></td> --%>
							
						</tr>
						

					</table>
				</div>
			</div>

		</center>
</div>

	</div>
	<div class="modal fade" id="edit" role="dialog">
    <div class="modal-dialog">
             <form action="UpdateMarks" method="post">	
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Update Details</h4>
        </div>
        
        <div class="modal-body">
       
       
        <div class="row"> 
 <div class="col-sm-1 "></div>
    <div class="col-sm-3 "> <label>User ID:</strong></label>
						</div>
    <div class="col-sm-5"> <input class="form-control" readonly="readonly" 
								 type="text" name="userId" value="">
						</div>
   <div class="col-sm-3 "></div>
  </div>
  <br>
  
     <div class="row"> 
 <div class="col-sm-1 "></div>
    <div class="col-sm-3 "> <label>Name :</strong></label>
						</div>
    <div class="col-sm-5"> <input readonly="readonly" class="form-control" type="text"
								name="name" value="">
						</div>
   <div class="col-sm-3 "></div>
  </div>
  <br>
  
      <div class="row"> 
 <div class="col-sm-1 "></div>
    <div class="col-sm-3 "> <label>Python Mark :</strong></label>
						</div>
    <div class="col-sm-5"> <input  class="form-control" type="text"
								name="python" value="">
						</div>
   <div class="col-sm-3 "></div>
  </div>
  <br>
       
           <div class="row"> 
 <div class="col-sm-1 "></div>
    <div class="col-sm-3 "> <label>Angular Mark :</strong></label>
						</div>
    <div class="col-sm-5"> <input  class="form-control" type="text"
								name="angular" value="">
						</div>
   <div class="col-sm-3 "></div>
  </div>
  <br>
       
       
           <div class="row"> 
 <div class="col-sm-1 "></div>
    <div class="col-sm-3 "> <label>C Mark :</strong></label>
						</div>
    <div class="col-sm-5"> <input  class="form-control" type="text"
								name="c" value="">
						</div>
   <div class="col-sm-3 "></div>
  </div>
  <br>
       
       
           <div class="row"> 
 <div class="col-sm-1 "></div>
    <div class="col-sm-3 "> <label>Cpp Mark :</strong></label>
						</div>
    <div class="col-sm-5"> <input  class="form-control" type="text"
								name="cpp" value="">
						</div>
   <div class="col-sm-3 "></div>
  </div>
  <br>
       
       
       
    
  

       
       
       <!-- 
        <input class="form-control" type="text" name="userId" value=""/>
        <input type="text" name="name" value=""/>
        <input type="text" name="dept" value=""/> -->
        
         <div class="row"> 
         <div class="col-sm-6 "></div>
  <button type="submit" class="btn btn-success">Save</button>
</form>
 
    
  </div>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-default"
						data-dismiss="modal">Cancel</button>
        </div>
      </div>
      
    </div>
  </div>















<div class="modal fade" id="activeUser" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Update Details</h4>
        </div>
       
<center>   
 <div class="modal-body">
If you want to Activate :<mark> <span id="activeUserName"></span></mark>
</div>   
<form  name="myform" action="ActivateUser" id="actUser" method="post">
		<input type="hidden" name="actUsers" id="activateUserId" value="" />

<button type="submit" class="btn btn-success" >Yes</button>
<button  class="btn btn-danger" data-dismiss="modal">No</button>
</form>

</center><br>
<!-- <div class="modal-footer">
          <button type="submit" class="btn btn-default" data-dismiss="modal">Cancel</button>
        </div> -->
        </div>
       
      </div>
      
    </div>
    
    
    
    <div class="modal fade" id="deleteUser" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Delete User</h4>
        </div>
       
<center>   
 <div class="modal-body">
If you want to Delete :<mark> <span id="delUserName"></span></mark>
</div>   
<form  name="myform" action="DeleteUser" id="actUser" method="post">
		<input type="hidden" name="delUsers" id="delUserId" value="" />

<button type="submit" class="btn btn-success" >Yes</button>
<button  class="btn btn-danger" data-dismiss="modal">No</button>
</form>

</center><br>
<!-- <div class="modal-footer">
          <button type="submit" class="btn btn-default" data-dismiss="modal">Cancel</button>
        </div> -->
        </div>
       
      </div>
      
    </div>
    
    
    
    
    
    <div class="modal fade" id="passChange" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Change Password</h4>
        </div>
       
<center>   
 <div class="modal-body">

</div>   
<form  name="myform" action="ChangePass" id="actUser" method="post">


   <div class="row"> 
 <div class="col-sm-1 "></div>
    <div class="col-sm-3 "> <label>New Password :</strong></label>
						</div>
    <div class="col-sm-5"> 
    
    	<input type="hidden" name="changePassId" id="passId" value="" />
		<input type="password" class="form-control" name="newPass" value="" /><br>
						</div>
   <div class="col-sm-3 "></div>
  </div>
  <br>
       

	

<button type="submit" class="btn btn-success" >Yes</button>
<button  class="btn btn-danger" data-dismiss="modal">No</button>
</form>

</center><br>
<!-- <div class="modal-footer">
          <button type="submit" class="btn btn-default" data-dismiss="modal">Cancel</button>
        </div> -->
        </div>
       
      </div>
      
    </div> 
    
    
    
    
    
    
    <div class="modal fade" id="deactivateUser" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Delete User</h4>
        </div>
       
<center>   
 <div class="modal-body">
If you want to Deactivate :<mark> <span id="decUserName"></span></mark>
</div>   
<form  name="myform" action="DeactivateUser" id="actUser" method="post">
		<input type="hidden" name="decUsers" id="decUserId" value="" />

<button type="submit" class="btn btn-success" >Yes</button>
<button  class="btn btn-danger" data-dismiss="modal">No</button>
</form>

</center><br>
<!-- <div class="modal-footer">
          <button type="submit" class="btn btn-default" data-dismiss="modal">Cancel</button>
        </div> -->
        </div>
       
      </div>
      
    </div>
  





<div class="modal fade" id="resetPass" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Password Reset</h4>
        </div>
       
<center>   
 <div class="modal-body">
If you want to Reset Password :<mark> <span id="resetUserName"></span></mark>
</div>   
<form  name="myform" action="ResetPass" id="actUser" method="post">
		<input type="hidden" name="resetUsers" id="resetUserId" value="" />

<button type="submit" class="btn btn-success" >Yes</button>
<button  class="btn btn-danger" data-dismiss="modal">No</button>
</form>

</center><br>
<!-- <div class="modal-footer">
          <button type="submit" class="btn btn-default" data-dismiss="modal">Cancel</button>
        </div> -->
        </div>
       
      </div>
      
    </div>
  








	<div id="showStud">
<div id="stdMark">
		<center>
			<h4 class="modal-title">
 
		<div class="container">
					<div class="row">
						 
						<table class="table table-reflow">
							<thead>
								<tr>
									<th>#</th>
									
									<th>Python Mark</th>
									<th>Angular Mark</th>
									<th>Java Mark</th>
									<th>Cpp Mark</th>
									<th>Grade</th>
									<th>Total (400)</th>

								</tr>
							</thead>
							
								 

							<%-- <td><a class="announce "
									data-user-id="<%=resultado.getInt("uId")%>"
									data-name="<%=resultado.getString(2)%>"
									data-python="<%=resultado.getString(4)%>"
									data-angular="<%=resultado.getString(5)%>"
									data-c="<%=resultado.getString(6)%>"
									data-cpp="<%=resultado.getString(7)%>"
									 data-target="#edit"
									data-toggle="modal"
									href=<%="\"#edit?Id=" + resultado.getInt("uId") + "\""%>>
									Update</a></td> --%>
							<%-- <td><a
								href=<%="\"marks.jsp?Id=" + resultado.getInt("uId") + "\""%>>Marks</a></td> --%>
							
						</tr>
						 
					</table>
				</div>
			</div>



		</center>

</div>

<div id="stdProfile">

<center>
			<h4 class="modal-title">Welcome  </h4>

		<div class="container">
					<div class="row">
						 
						<table class="table table-reflow">
							<thead>
								<tr>
									<th>#Student Id</th>
									
									<th>Name</th>
									<th>Department</th>
									<th>Change Password <i class="fa fa-key" aria-hidden="true"></i></th>
									

								</tr>
							</thead>
							 

					</table>
				</div>
			</div>



		</center>


</div>


	</div>

</body>
<script type="text/javascript">
	
	
</script>
</html>