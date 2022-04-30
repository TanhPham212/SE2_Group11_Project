function changePass()
{
	var old = document.getElementById("old").value;
	var new1 = document.getElementById("new1").value;
	var new2 = document.getElementById("new2").value;
	var flag = 0;
	if(old.length == 0)
	{
		flag = 1;
		document.getElementById("oldWarning").innerHTML = "Must be filled";	
	}
	if(new1.length < 8)
	{
		flag = 1;
		document.getElementById("new1Warning").innerHTML = "Must be at least 8 characters";
	}
	if(new1 != new2)
	{
		flag = 1;
		document.getElementById("new2Warning").innerHTML = "Not match, try again";
	}
	if(flag == 1)
	{
		return;
	}
	var object = new Object();
	object.oldPassword = old;
	object.newPassword = new1;
	data = JSON.stringify(object)
	$.ajax({
			type: "POST",	
			data: data,	
			contentType : "application/json",
			url: "http://localhost:8080/laptopshop/updatePassword",
			success: function(result){
				if(result.status == "old")
				{
					alert("Wrong");
//					window.location.reload();
					return;
				}else{
					alert("Password changed");
					window.location.href = "/laptopshop/account";
				}
				
			},
			error : function(e){
				alert("Error: ",e);
				console.log("Error" , e );
			}
		});
}