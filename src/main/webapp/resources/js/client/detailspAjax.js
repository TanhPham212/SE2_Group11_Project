$(document).ready(function(){
	$(".add-to-cart").click(function(){
		ajaxGet($("#spid").text());
	});

	function ajaxGet(id){
		$.ajax({
			type: "GET",		
			url: "http://localhost:8080/laptopshop/api/gio-hang/addSanPham?id="+id,
			success: function(result){
				if(result.status == "false")
				{
					window.alert("This product is out of stock, please comeback later");	
				}else
				{
					window.alert("Added to cart");
				}	
			},
			error : function(e){
				alert("Error: ",e);
				console.log("Error" , e );
			}
		});
	}
})
