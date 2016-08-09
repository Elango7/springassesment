/**
 * 
 */
// var showMsg = document.getElementById("showMessage").value;
$(document).ready(function(){
	$("#showAdminSec").hide();

	$("#showStudent").hide();

	
	
	$('#loginSt').click(function(){
		event.preventDefault();
		var loginCrd = {}
		loginCrd["mailId"] = $("#mailId").val();
		loginCrd["password"] = $("#pass").val();
		console.log($("#mailId").val());
		
		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : "http://localhost:8080/SpringAssesment/api/users/login",
			data : JSON.stringify(loginCrd),
			dataType : 'json',
			timeout : 100000,
			success : function(data) {
				console.log("SUCCESS: ", data);
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
		
		
		
		});

});


/*var loginStatus = document.getElementById("LoginStatus").value;
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
*/

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