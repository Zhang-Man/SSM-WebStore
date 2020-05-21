$(document).ready(function() {
    add();
});
//初始4个选项

//添加选项
function add() {
    $.get("searchAllgoods.do",function(data)
		 {
  		var sta1;
  		var bacground;
  		var able;
  		
  		var img=new Array();
  		var stock=new Array();
  		var id=new Array();
  		var price=new Array();
  		var categoryname=new Array();
  		var name=new Array();
  		var detail=new Array();
  		var subtitle=new Array();
   	 //alert(data);
   	 obj = JSON.parse(data);
   	 for(var i=0;i<obj.listgoods.length;i++)
   	 {
   		
   		img[i]=obj.listgoods[i].mainImage;
   		stock[i]=obj.listgoods[i].stock;
   		id[i]=obj.listgoods[i].id;
   		price[i]=obj.listgoods[i].price;
   		name[i]=obj.listgoods[i].name;
   		detail[i]=obj.listgoods[i].detail;
   		subtitle[i]=obj.listgoods[i].subtitle;
   		categoryname[i]=obj.Categoryname;
			
   	 }
  	for(var i=0;i<obj.listgoods.length;i++){
  		able=" ";
  		background="";
  		sta1="Show Me";
  		if(stock[i]==0){
  			able="disabled";
  			background="#ff0000";
  			sta1="Sell Out";
  		}
  		var $data = $(" <form  action=\"setGoodsid.do\" method=\"post\"><div style=\"margin-top:10px;\" class=\"col-xs-12\"><input id=\""+id[i]+"\" name=\"goodsid\" style=\"display:none\" value=\""+id[i]+"\"/><div class=\"coupon-single panel t-center t-sm-left\"><div class=\"ribbon-wrapper is-hidden-xs-down\"><div class=\"ribbon\">Featured</div></div><div class=\"row row-sm-cell row-tb-0 row-rl-0\"><div class=\"col-sm-5\"><figure class=\"p-15\"><img class=\"store-logo\" src=\""+img[i]+"\" alt=\"\"></figure></div><!-- end col --><div class=\"col-sm-7\"><div class=\"panel-body\"><ul class=\"deal-meta list-inline mb-10\"><li class=\"color-green\"><i class=\"fa fa-gamepad mr-5\"></i>"+categoryname[i]+"</li><li class=\"color-muted\"><i class=\"fa fa-cny mr-5\">"+price[i]+"</i></li></ul><h5 class=\"deal-title mb-10\"><a href=\"#\">"+name[i]+"</a></h5><p class=\"mb-15 color-muted font-12\"><i class=\"lnr lnr-clock mr-10\"></i>"+detail[i]+"</p><div class=\"showcode\"> <a href='deal_single.do'> <button id=\"goodsid\" type=\"submit\" style='background:"+background+"' "+able+" id='buybutton"+id[i]+"' class=\"show-code btn btn-sm btn-block\" data-toggle=\"modal\" data-target=\"#coupon_0\">"+sta1+"</button></a> <div class=\"coupon-hide\">"+subtitle[i]+"</div></div></div></div><!-- end col --></div><!-- end row --></div><div class=\"modal fade get-coupon-area\" tabindex=\"-1\" role=\"dialog\" id=\"coupon_01\"><div class=\"modal-dialog\"><div class=\"modal-content panel\"><div class=\"modal-body\"><button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button><div class=\"row row-v-10\"><div class=\"col-md-10 col-md-offset-1\"><img src=\"assets/images/brands/store_logo.jpg\" alt=\"\"><h3 class=\"mb-20\">Save 30% off New Domains Names</h3><p class=\"color-mid\">Not applicable to ICANN fees, taxes, transfers,or gift cards. Cannot be used in conjunction with any other offer, sale, discount or promotion. After the initial purchase term.</p></div><div class=\"col-md-10 col-md-offset-1\"><a href=\"#\" class=\"btn btn-link\">Visit Our Store</a></div><div class=\"col-md-10 col-md-offset-1\"><h6 class=\"color-mid t-uppercase\">Click below to get your coupon code</h6><a href=\"#\" target=\"_blank\" class=\"coupon-code\">"+subtitle[i]+"</a></div><div class=\"col-md-10 col-md-offset-1\"><div class=\"like-report mb-10\"><span>Share this coupon :</span><ul class=\"list-inline social-icons social-icons--colored mt-10\"><li class=\"social-icons__item\"><a href=\"#\"><i class=\"fa fa-facebook\"></i></a></li><li class=\"social-icons__item\"><a href=\"#\"><i class=\"fa fa-twitter\"></i></a></li><li class=\"social-icons__item\"><a href=\"#\"><i class=\"fa fa-google-plus\"></i></a></li><li class=\"social-icons__item\"><a href=\"#\"><i class=\"fa fa-linkedin\"></i></a></li></ul></div></div></div></div></div></div></div></div> </form>");      $("#socketer").append($data);
     }
		 });
			
}
