
$(document).ready(function() {
	add();
});

function add() {
	
	$.get("cartsigninjudge.do",function(data){
		obj = JSON.parse(data);
		if(obj.massage=="no")
    	   {window.location.href="signin.do";}
		else{
			
			
		$.get("mycartgoods.do",function(data){
			
			var img = new Array();
			var name = new Array();
			var stock = new Array();
			var price = new Array();
			var productid = new Array();
			var goodsid = new Array();
			
			obj = JSON.parse(data);
			
			for(var i=0;i<obj.listcartproductid.length;i++)
			{
				productid[i]=obj.listcartproductid[i];
			}
	    	for(var i=0;i<obj.listgoods.length;i++)
	    	{
	    		goodsid[i]=obj.listgoods[i].id;
	    		img[i]=obj.listgoods[i].mainImage;
	    		name[i]=obj.listgoods[i].name;
	    		stock[i]=obj.listgoods[i].stock;
	    		price[i]=obj.listgoods[i].price;
	    	}
	    	
	    	var totalprice = new Array();
			var total=0;
			var total2;
			var shippingprice=56;
			var sta;
			
			
			
			for(var i = 0; i < obj.listgoods.length; i++) {
				
				totalprice[i]=price[i];
				total=total+totalprice[i];
				sta="<font color=\"green\">Salling</font>"
	            if(stock[i]==0){
	            	sta="<font color=\"red\">Sall Out</font>";
	            }
				var $data=$(" <tr class=\"panel alert\"><td><div class=\"media-left is-hidden-sm-down\"><figure class=\"product-thumb\"><img src=\"" + img[i] + "\" alt=\"product\"></figure></div><div class=\"media-body valign-middle\"><h6 class=\"title mb-15 t-uppercase\"><a href=\"#\">" + name[i] + "</a></h6><div class=\"type font-12\"><span class=\"t-uppercase\">"+sta+"</span></div></div></td><td>" + price[i] + "</td><td><input class=\"quantity-label\" type=\"number\" value=\"01\"></td><td><div class=\"sub-total\">" + totalprice[i] + "</div></td><td><form  action=\"setcartGoodsidForOrder.do\" method=\"post\"><input name=\"productid\" style=\"display:none\" value=\""+goodsid[i]+"\"/><button type=\"submit\" class=\"close\"  aria-hidden=\"true\"><i class=\"fa fa-trash-o\"></i></button></form><form  action=\"deletecartproduct.do\" method=\"post\"><input name=\"productid\" style=\"display:none\" value=\""+productid[i]+"\"/><button type=\"submit\" class=\"close\"  aria-hidden=\"true\"><i class=\"fa fa-trash-o\"></i></button></form></td><td><input type=\"checkbox\" name='cartcheckbox' value='"+productid[i]+"' checked /></td></tr>");
				$("#socketer").append($data);
			}
			total2=total+shippingprice;
	        document.getElementById("total1").innerHTML=total;
	        document.getElementById("shippingprice").innerHTML=shippingprice;
	        document.getElementById("total2").innerHTML=total2;
		})
		}
	})
}