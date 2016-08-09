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
<spring:url value="/resources/core/js/views/loginfo.js"	var="loginfo" />
<script src="${loginfo}"></script>
<spring:url value="/resources/core/js/jquery.cookie.js"	var="jCooki" />
<script src="${jCooki}"></script>








<!-- <script  src="/resources/core/js/jquery.js"></script>
<script   src="/resources/core/js/bootstrap.js"></script>
<script   src="/resources/core/js/bootstrap-select.js"></script>
<script   src="/resources/core/js/notify.js"></script>


<link href="/resources/core/css/bootstrap.min.css" rel="stylesheet"></link>
<link href="/resources/core/css/bootstrap-select.css" rel="stylesheet"></link> -->

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LogIn Page</title>
</head>
<body style="background-color:#e6f7ff;" >
	<%-- <input type="hidden" id="showMessage" value=<%=session.getAttribute("showmsg")%> />
		<input type="hidden" id="LoginStatus" value=<%=session.getAttribute("invalidLogin")%> /> --%>

<div>
<center>
  <div class="page-header">

<h1>LogIn Details</h1>
</div>
<br><br>
<br>

 <div class="row"> 
 <div class="col-sm-5"></div>
    <div class="col-sm-1 "> <label><strong>Mail Id:</strong></label></div>
    <div class="col-sm-2"> <input class="form-control" type="text" id="mailId" placeholder="Mail Id" required></div>
   <div class="col-sm-4 "></div>
  </div>
  <br>
  <div class="row"> 
 <div class="col-sm-5 "></div>
    <div class="col-sm-1 "> <label>Password:</strong></label></div>
    <div class="col-sm-2"> <input class="form-control" type="password" id="pass" placeholder="Password" required></div>
   <div class="col-sm-4 "></div>
  </div>
  <br>
    <div class="row"> <div class="col-sm-1 "></div>	
  <button id="loginDt" class="btn btn-success">Login</button>

  <button type="button" class="btn btn-link" data-toggle="modal" data-target="#openReg">Register</button>      
 
    
  </div>
</center>
</div>


<div class="modal fade" id="openReg" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">User Register</h4>
        </div>
        <div class="modal-body">
        
        
        
        
        <form action="UserRegistration" method="post">
        <div>
<center>
 
 <div class="row"> 
 <div class="col-sm-1 "></div>
    <div class="col-sm-3 "> <label>Name:</strong></label></div>
    <div class="col-sm-4"> <input class="form-control" type="text" name="regName" placeholder="Name" required></div>
   <div class="col-sm-4 "></div>
  </div>
  <br>
 <div class="row"> 
 <div class="col-sm-1 "></div>
    <div class="col-sm-3 "> <label>Mail ID:</strong></label></div>
    <div class="col-sm-4"> <input class="form-control" name="regmail" type="text" placeholder="Mail id" required></div>
   <div class="col-sm-4 "></div>
  </div>
  <br>
  <div class="row"> 
 <div class="col-sm-1 "></div>
    <div class="col-sm-3 "> <label>Password:</strong></label></div>
    <div class="col-sm-4"> <input class="form-control" name="regPass" type="password" id="firstPass" placeholder="Password" required></div>
   <div class="col-sm-4 "></div>
  </div>
  <br>
  
  <!--  <div class="row"> 
 <div class="col-sm-1 "></div>
    <div class="col-sm-3 "> <label>Confirm Password:</strong></label></div>
    <div class="col-sm-4"> <input onchange="changepass()" class="form-control" id="checkPass"  class="checkPass" type="text" placeholder="Password" required></div>
   <div class="col-sm-4 "></div>
  </div>
  <br> -->
  
 <!--   <div class="row"> 
 <div class="col-sm-1 "></div>
    <div class="col-sm-3 "> <label>DOB:</strong></label></div>
    <div class="col-sm-4"> <input class="form-control" type="text" placeholder="DD/MM/YYYY" required></div>
   <div class="col-sm-4 "></div>
  </div>
  <br>
   -->
  
   <div class="row"> 
 <div class="col-sm-1"></div>
    <div class="col-sm-3 "> <label>Role:</strong></label></div>
    <div class="col-sm-3">

<select class="selectpicker" id="roledrop" name="regRole" onchange="changeFunc();" title="Choose Role" required> 
 <option id="stud" value="Admin">Admin</option>
  <option id="stud" value="Student">Student</option>
 
</select>
</div>
   <div class="col-sm-4"></div>
  </div>
  <br>
  <div class="row" id="showAdminSec"> 
 <div class="col-sm-1 "></div>
    <div class="col-sm-3 "> <label>Activation Code:</strong></label></div>
    <div class="col-sm-4"> <input class="form-control" name="actCode" type="password" id="firstPass" placeholder="Activation Code" ></div>
   <div class="col-sm-4 "></div>
  </div>
  <br>
  
  
 <div class="row" id="showStudent"> 
 <div class="col-sm-1 "></div>
    <div class="col-sm-3 "> <label>Department:</strong></label></div>
    <div class="col-sm-3">

<select class="selectpicker"  name="regDept" id="studdrop" required>
  <option id="studDep" value="BSC">BSC</option>
  <option id="studDep" value="MCA">MCA</option>
</select>
</div>
   <div class="col-sm-4 "></div>
  </div>
  <br>




    <div class="row"> <div class="col-sm-1 "></div>	
  <button type="submit"   class="btn btn-success">Register</button>

  <button type="reset" class="btn " >Clear</button>      
 
    
  </div>
</center>
</div>
        </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-default" data-dismiss="modal">Cancel</button>
        </div>
      </div>
      
    </div>
  </div>


</body>
<script type="text/javascript">


</script>
</html>