/**
 * 
 */
// var showMsg = document.getElementById("showMessage").value;

$(document).ready(function(){
	$("#showAdminSec").hide();

	$("#showStudent").hide();
	
	$('#loginDt').click(function(){
		
		
		var loginfo = {}
		loginfo["password"] = $("#pass").val();
		loginfo["mailId"] = $("#mailId").val();
		
		
		
		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : "http://localhost:8080/SpringAssesment/api/users/login",
			data : JSON.stringify(loginfo),
			dataType : 'json',
			timeout : 100000,
			success : function(data) {
				console.log("SUCCESS: ", data );
				$.cookie('userName', data.userName);
				$.cookie('role', data.roll);
				$.cookie('userId', data.userId);
				console.log($.cookie('userName'));
				if (data.roll=="Admin" || data.roll=="Student") {
					
					window.location = "http://localhost:8080/SpringAssesment/home";

				}else {
					$.notify("Invalid User",  "error");
				}
			
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
		
		});
	
	
	$('#regUser').click(function(){
		var regInfo = {}
		regInfo["password"] = $("#regPass").val();
		regInfo["mailId"] = $("#regmail").val();
		regInfo["regName"] = $("#regName").val();
		regInfo["regRole"] = $("#regRole").val();
		regInfo["actCode"] = $("#actCode").val();
		regInfo["regDept"] = $("#regDept").val();
		regInfo["regMailId"] = $("#mailId").val();
		
		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : "http://localhost:8080/SpringAssesment/api/users/register",
			data : JSON.stringify(regInfo),
			dataType : 'json',
			timeout : 100000,
			success : function(data) {
				console.log("SUCCESS: ", data );
				$.cookie('userName', data.userName);
				$.cookie('role', data.roll);
				$.cookie('userId', data.userId);
				console.log($.cookie('userName'));
				 
			
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
		
		
		
		
	
	});
});

/*
var loginStatus = document.getElementById("LoginStatus").value;
if (loginStatus==1) {
	$.notify("The email and password that you entered don't match!", "error");
}
$('#validateCheck').click(function(){
	console.log("inside");
	   $('#passValidate').attr('action', '/UserRegistration');
	   $('#passValidate').attr('method', 'post');
	});

if (showMsg==7) {
	$.notify("Incorrect Activation Code",  "error");

}else if (showMsg==8) {
	$.notify("Register Succefully",  "success");

}else if (showMsg==11) {
	// $("#openReg").show();
	$(".regPass").notify("Hello Box",{ position:"right" });
	//$('#openReg'showMsg).modal('show');
	$.notify("Mail Id Already Exit",  "error");

}

function changepass() {
	var pass=document.getElementById("#firstPass").value;
	var checkpass=document.getElementById("#checkPass").value;
	if (pass!=checkpass) {
		$(".checkPass").notify(
				  "I'm to the right of this box", 
				  { position:"right" }
				);
	}
	console.log("dswd");
	
}

function changeFunc() {
    var selectBox = document.getElementById("roledrop");
    var selectedValue = selectBox.options[selectBox.selectedIndex].value;
   // alert(selectedValue);
    if (selectedValue=="Student") {
    	$("#showAdminSec").hide();

    	// alert(selectedValue);
    	$("#showStudent").show();
	}else if(selectedValue=="Admin") {
	
		$("#showStudent").hide();
		$("#showAdminSec").show();

	}
   }
$(document).ready(function(){
	$("#showAdminSec").hide();

	$("#showStudent").hide();

});*/

/*
 * $(document).ready(function(){
 * 
 * alert($("#roledrop :selected").text());
 * 
 * var e = document.getElementById("roledrop"); var strUser =
 * e.options[e.selectedIndex].value;
 * alert(document.getElementById("stud").value);
 * 
 * });
 */