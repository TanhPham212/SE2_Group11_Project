function changeInformation()
{
	var name = document.getElementById("name").value;
	var phone = document.getElementById("phone").value;
	var address = document.getElementById("address").value;
	var flag = 0;
	if(name.length == 0)
	{
		flag = 1;
		document.getElementById("nameWarning").innerHTML = "Must be filled";	
	}
	if(phone.length == 0)
	{
		flag = 1;
		document.getElementById("phoneWarning").innerHTML = "Must be filled";
	}
	if(address.length == 0)
	{
		flag = 1;
		document.getElementById("addressWarning").innerHTML = "Must be filled";	
	}
	var pat = "[0-9]+{9,10}"
	if(!/^([0-9]{9,10})$/.test(phone))
	{
		flag = 1;
		document.getElementById("phoneWarning").innerHTML = "Phone number must be 9-10 digits";
	}
	if(flag == 1)
	{
		return;
	}
	var send = new Object();
	send.hoTen = name;
	send.soDienThoai = phone;
	send.diaChi = address;
	var data = JSON.stringify(send)
	$.ajax({
			type: "POST",	
			data: data,	
			contentType : "application/json",
			url: "http://localhost:8080/laptopshop/updateInfo",
			success: function(result){
				alert("Updated");
				window.location.href = "/laptopshop/account";
			},
			error : function(e){
				alert("Error: ",e);
				console.log("Error" , e );
			}
		});
	
}