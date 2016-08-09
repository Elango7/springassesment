/**
 * 
 */


	

	$(document).ready(function() {
		var stUrl="http://localhost:8080/SpringAssesment/";
		document.getElementById("activeHome").className = "active";
		
		$.ajax({
	        url: "",
	        context: document.body,
	        success: function(s,x){

	            $('html[manifest=saveappoffline.appcache]').attr('content', '');
	                $(this).html(s);
	        }
		 }); 
		
		
		
		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : stUrl+"api/users/getStdDetails/"+$.cookie('userId'),
			 
			dataType : 'json',
			timeout : 100000,
			success : function(data) {
				console.log("SUCCESS: ", data.length);
				
				display(data);
				 
 			},
			error : function(e) {
				console.log("ERROR: ", e);
				display(e);
			},
			done : function(e) {
				console.log("DONE");
				enableSearchButton(true);
			}
		});
		
		
		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : stUrl+"api/users/getStdInactive/"+$.cookie('userId'),
			 
			dataType : 'json',
			timeout : 100000,
			success : function(data1) {
				console.log("SUCCESS: ", data1.length);
				
				display1(data1);
				 
 			},
			error : function(e) {
				console.log("ERROR: ", e);
				display(e);
			},
			done : function(e) {
				console.log("DONE");
				enableSearchButton(true);
			}
		});
		
		

		var role = $.cookie('role');
		var logout = $.cookie('userName');
		var showMsg = $.cookie('userName');
		document.getElementById("userlogName").innerHTML = $.cookie('userName');
		document.getElementById("UserRoleSh").innerHTML = role;

		console.log($.cookie('userName'));
		 
		$("#showStdDetails").hide();

		$("#showHome").show();
		$("#showMark").hide();
		$("#showAdm").hide();
		$("#showStud").hide();

		
		
		if (showMsg==1) {
			$("#showMark").show();
			$("#showStdDetails").hide();
			$("#showHome").hide();
			
			
			$("#showStud").hide();
			$.notify("Mark Update Successfully :)", "success");
			document.getElementById("activeMark").className = "active";
			document.getElementById("activeHome").className = "";
			document.getElementById("activeSdtDetails").className = "";
			showMsg=10;	
		}else if (showMsg==2) {
			
			$.notify("Password Reset Successfully :)", "success");
			document.getElementById("activeMark").className = "";
			document.getElementById("activeHome").className = "";
			document.getElementById("activeSdtDetails").className = "active";
			$("#showMark").hide();
			$("#showStdDetails").show();
			$("#showHome").hide();
			$("#showStud").hide();
			showMsg='';

		}else if (showMsg==3) {
			$.notify("Activate Successfully :)", "success");
			$("#showMark").hide();
			$("#showStdDetails").hide();
			$("#showHome").show();
			
			document.getElementById("activeMark").className = "";
			document.getElementById("activeHome").className = "active";
			document.getElementById("activeSdtDetails").className = "";
			$("#showStud").hide();
			showMsg=10;
		}else if (showMsg==4) {
			$.notify("User Deleted Successfully :)", "success");
			$("#showMark").hide();
			$("#showStdDetails").show();
			$("#showHome").hide();
			document.getElementById("activeMark").className = "";
			document.getElementById("activeHome").className = "";
			document.getElementById("activeSdtDetails").className = "active";
			
			$("#showStud").hide();
			showMsg='';
		}else if (showMsg==5) {
			$.notify("User Deactivate Successfully :)", "success");
			$("#showMstdHomeark").hide();
			$("#showStdDetails").show();
			$("#showHome").hide();
			
			document.getElementById("activeMark").className = "";
			document.getElementById("activeHome").className = "";
			document.getElementById("activeSdtDetails").className = "active";
			$("#showstdProfileStud").hide();
			showMsg='';
		}else if (showMsg==0) {
			
			//$.notify("Password Reset Successfully :)", "success");
			document.getElementById("activeMark").className = "";
			document.getElementById("activeHome").className = "active";
			document.getElementById("activeSdtDetails").className = "";
			$("#showMark").hide();
			$("#showStdDetails").hide();
			$("#showHome").show();
			$("#showStud").hide();
			showMsg='';

		}else if (showMsg==6) {
			
			$.notify("Password Change Successfully :)", "success");
			showMsg=10;

		}
		
		
		
		if (role == "Admin" || role == "admin") {
			$("#stdHome").hide();
			$("#stdProfileTab").hide();
			$("#showAdm").show();
		} else if (role == "Student" || role == "student") {
			$("#stdProfileTab").show();

			$("#activeHome").hide();
			$("#stdProfile").hide()

			$("#showStud").show();
			$("#stdMark").show()
			$("#showStdDetailsTab").hide();
			$("#showMarkTab").hide();

		}else
			  window.location="login.jsp";
		if (logout=="true") {
			  window.location="login.jsp";

		}
		$("#stdHomeTab").click(function() {
			$("#stdMark").show()
			$("#stdProfile").hide()
		
			
		});
		$("#stdProfileTab").click(function() {
			$("#stdMark").hide()
			$("#stdProfile").show()
		
			
		});
		$("#showMarkTab").click(function() {
			document.getElementById("activeMark").className = "active";
			document.getElementById("activeHome").className = "";
			document.getElementById("activeSdtDetails").className = "";

			$("#showStdDetails").hide();


			$("#showMark").show();
			$("#showHome").hide();
			
			
			$("#showStud").hide();
		});
		
		$("#showStdDetailsTab").click(function() {
			document.getElementById("activeMark").className = "";
			document.getElementById("activeHome").className = "";
			document.getElementById("activeSdtDetails").className = "active";

			

			$("#showMark").hide();
			$("#showStdDetails").show();
			$("#showHome").hide();
			
			
			$("#showStud").hide();
		});
		
		$("#showHomeTab").click(function() {
			document.getElementById("activeMark").className = "";
			document.getElementById("activeHome").className = "active";
			document.getElementById("activeSdtDetails").className = "";

			$("#showMark").hide();
			$("#showHome").show();
			$("#showStdDetails").hide();

			
			$("#showStud").hide();
		});
		$('#edit').on('show.bs.modal',function(e) {
			console.log($(e.relatedTarget).data('user-id'));
			console.log($(e.relatedTarget).data('name'));
			console.log($(e.relatedTarget).data('dept'));

			var userId = $(e.relatedTarget).data('user-id');
			
			
			$(e.currentTarget).find('input[name="userId"]').val(userId);
			$(e.currentTarget).find('input[name="name"]').val($(e.relatedTarget).data('name'));
			$(e.currentTarget).find('input[name="python"]').val($(e.relatedTarget).data('python'));
			$(e.currentTarget).find('input[name="angular"]').val($(e.relatedTarget).data('angular'));
			$(e.currentTarget).find('input[name="c"]').val($(e.relatedTarget).data('c'));
			$(e.currentTarget).find('input[name="cpp"]').val($(e.relatedTarget).data('cpp'));

		});


$('#activeUser').on('show.bs.modal',function(e) {
	//activeUserName
	console.log($(e.relatedTarget).data('dect-name'));
	var actUserID =$(e.relatedTarget).data('name');
	document.getElementById('activateUserId').value=$(e.relatedTarget).data('active-id');
	document.getElementById('activeUserName').textContent=$(e.relatedTarget).data('name');
	
});


$('#passChange').on('show.bs.modal',function(e) {
	//activeUserName
	console.log($(e.relatedTarget).data('p-id'));
	document.getElementById('passId').value=$(e.relatedTarget).data('p-id');
	
});


$('#deactivateUser').on('show.bs.modal',function(e) {
	//activeUserName
	console.log($(e.relatedTarget).data('dec-name'));
	var actUserID =$(e.relatedTarget).data('name');
	document.getElementById('decUserId').value=$(e.relatedTarget).data('dec-id');
	document.getElementById('decUserName').textContent=$(e.relatedTarget).data('dec-name');
	
});


$('#resetPass').on('show.bs.modal',function(e) {
	//activeUserName
	console.log($(e.relatedTarget).data('reset-id'));
	var resetUserID =$(e.relatedTarget).data('reset-id');
	document.getElementById('resetUserId').value=resetUserID;
	document.getElementById('resetUserName').textContent=$(e.relatedTarget).data('user-name');
	
});


$('#deleteUser').on('show.bs.modal',function(e) {
	//activeUserName
	console.log($(e.relatedTarget).data('del-id'));
	var resetUserID =$(e.relatedTarget).data('del-id');
	document.getElementById('delUserId').value=resetUserID;
	document.getElementById('delUserName').textContent=$(e.relatedTarget).data('del-name');
	
});
function display(data) {
	//console.log(data );
	var json=null;
	var json1=null


	for (var int = 0; int < data.length; int++) {
		//console.log(data[int] );
		/*<td><%=resultado.getString(2)%></td>
		<td><%=resultado.getString(4)%></td>
		<td><%=resultado.getString(3)%></td>*/
		var total=data[int].mPython+data[int].mJava+data[int].mAngular+data[int].mCpp;
		  json =json+ "<tr><td>"+data[int].userId+"</td><td>"+data[int].userName+"</td><td>"+data[int].dept+"</td><td> <a class=announce	data-reset-id="+data[int].userId+" data-user-name="+data[int].userName+" data-target='#resetPass' data-toggle='modal' href=#>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<i class='fa fa-2x fa-refresh' aria-hidden='true'></i></a></td></tr>";
		  
		  json1=json1+"<tr><td>"+data[int].userId+"</td><td>"+data[int].userName+"</td><td>"+data[int].dept+"</td><td>"+data[int].mPython+"</td><td>"+data[int].mAngular+"</td><td>"+data[int].mJava+"</td><td>"+data[int].mCpp+"</td><td>"+total+"</td>	<td><a class='announce' data-user-id="+data[int].userId+" data-name="+data[int].userName+"	data-python="+data[int].mPython+"	data-angular="+data[int].mAngular+" data-c="+data[int].mJava+"	data-cpp="+data[int].mCpp+" data-target='#edit' data-toggle='modal' href='#'>Update</a></td>	";
		
	}
	$('#showstdFull').html(json);
	$('#showmarkFull').html(json1);
	
	
	
	
	/*
	$('#temp').html(data.userName);

	console.log(data.userName);
	var json = "<h4>Ajax Response</h4><pre>"
			+ JSON.stringify(data, null, 4) + "</pre>";
	$('#showstdFull').html(json);
*/}



function display1(data1) {
	console.log(data1 );
	var json=null;
  
	for (var int = 0; int < data1.length; int++) {
		console.log(data1[int] );
		/*<td><%=resultado.getString(2)%></td>
		<td><%=resultado.getString(4)%></td>
		<td><%=resultado.getString(3)%></td>*/
		
		json =json+ "<tr><td>"+data1[int].userId+"</td><td>"+data1[int].userName+"</td><td>"+data1[int].dept+"</td><td>Inactive</td><td> <a class='announce'	data-reset-id="+data1[int].userId+" data-user-name="+data1[int].userName+" data-target='#resetPass' data-toggle='modal' href='#'>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<i class='fa fa-2x fa-refresh' aria-hidden='true'></i></a></td></tr>		";
	}
	$('#showstdInactive').html(json);
 	
	
	
	
	/*
	$('#temp').html(data.userName);

	console.log(data.userName);
	var json = "<h4>Ajax Response</h4><pre>"
			+ JSON.stringify(data, null, 4) + "</pre>";
	$('#showstdFull').html(json);
*/}

	});