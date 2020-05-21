$(document).ready(function() {
				add();
			});

			function add() {
				
				$.get("myorder.do",function(data){
					var name=new Array();
					var price=new Array();
					var quantity=new Array();
					var totalprice=new Array();
					var img = new Array();
					var orderID = new Array();
					var subtotal = new Array();
					
					var j=0;
					var i=0;
					obj = JSON.parse(data);
					
					for(i=0;i<obj.listorderid.length;i++)
	            	{
						orderID[i]=obj.listorderid[i];
						quantity[i]=1;
	            	}
					
					for(i=0;i<obj.listAllgoods.length;i++)
					{
						name[i]=new Array();
						img[i]=new Array();
						price[i]=new Array();
						totalprice[i]=new Array();
						for(j=0;j<obj.listAllgoods[i].length;j++)
						{
							name[i][j]=obj.listAllgoods[i][j].name;
							img[i][j]=obj.listAllgoods[i][j].mainImage;
							price[i][j]=obj.listAllgoods[i][j].price;
							totalprice[i][j]=obj.listAllgoods[i][j].price;
						}
					}
					
					for(i=0;i<obj.listtotalprice.length;i++)
	            	{
						subtotal[i]=obj.listtotalprice[i];
	            	}
							
							
							for(i = 0; i < obj.listAllgoods.length; i++) {
								$("#stocker").append("<tr><th><h4>OrderID:"+orderID[i]+"</h4></th><th></th><th></th><th></th><th></th><th></th></tr>");
								for(j=0;j< obj.listAllgoods[i].length;j++){
								$("#stocker").append("<tr class='panel alert'><td><div class='media-left is-hidden-sm-down'><figure class='product-thumb'><img src='"+img[i][j]+"' alt='product'></figure></div><div class='media-body valign-middle'><h6 class='title mb-15 t-uppercase'><a href='deal_single.do'>"+name[i][j]+"</a></h6></div></td><td>$"+price[i][j]+"</td><td><input class='quantity-label' type='number' value='"+quantity[i][j]+"'></td><td><div class='sub-total'>$"+totalprice[i][j]+"</div></td><td><div class='media-body valign-lg-middle'>In Transit</div></td></tr>");
								}
								$("#stocker").append("<tr><td ></td><td ></td><td ></td><td ><h5>TotalPrice:$"+subtotal[i]+"</h5></td></tr>");
							}
				
				})
			}