<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>



			
			<script type="text/javascript" src="assets/js/jquery-3.1.0.min.js"></script>
       <script>
       $(function(){
           $("#button").click(function(){
        	   var str = {"name":$("#name").val(),"status":$("#status").val()}
        	   alert($("#name").val());
        	   alert($("#status").val());
        	   json = JSON.stringify(str)
             $.get("selectCategory.do",{"json":json},function(data)
			 {
            	 alert(data);
            	 obj = JSON.parse(data);
            	 for(var i=0;i<obj.listcategory.length;i++)
            	 {
            		 //alert(obj.listcategory[i].name);
            	 }
            	// $.each(obj,function(index,item){
            	//	 alert(index);
            	//	 alert(item);
            	//	 $.each(item,function(key,val){
            	//			alert(key);
            	//			alert(val);
            	//	 });
            		 //con+="<td ><img src='"+s1+"'  width='64px' height='64px'  /><p style='font-size: 15px;'>"+s2+"</p></td>";  	 
            	 //});
            	 //alert(obj.listcategory[0].name);
			 });
          });
       })
       </script>
             <script type="text/javascript"> 
               //改变时间
       function transferTime(cTime) {
       //将json串的一串数字进行解析
       var jsonDate = new Date(parseInt(cTime));
       //alert(jsonDate);
       //为Date对象添加一个新属性，主要是将解析到的时间数据转换为我们熟悉的“yyyy-MM-dd hh:mm:ss”样式
       Date.prototype.format = function(format) {
       var o = {

       //获得解析出来数据的相应信息，可参考js官方文档里面Date对象所具备的方法

       "y+" : this.getFullYear(),//得到对应的年信息
       "M+" : this.getMonth() + 1, //得到对应的月信息，得到的数字范围是0~11，所以要加一
       "d+" : this.getDate(), //得到对应的日信息
       "h+" : this.getHours(), //得到对应的小时信息 
       "m+" : this.getMinutes(), //得到对应的分钟信息
       "s+" : this.getSeconds(), //得到对应的秒信息
 
   }

     //将年转换为完整的年形式
    if (/(y+)/.test(format)) {
   format = format.replace(RegExp.$1,
   (this.getFullYear() + "")
  .substr(4 - RegExp.$1.length));
   }

   //连接得到的年月日 时分秒信息
   for ( var k in o) {
  if (new RegExp("(" + k + ")").test(format)) {
  format = format.replace(RegExp.$1,
  RegExp.$1.length == 1 ? o[k] : ("00" + o[k])
 .substr(("" + o[k]).length));
  }
 }
 return format;
 }
//var newDate = jsonDate.format("yyyy-MM-dd hh:mm:ss");
var newDate = jsonDate.format("yyyy-MM-dd");
return newDate;
}        

</script>
			
			<span id="span">显示信息</span>
			<select id="name">
			  <option value ="iphone6">iphone6</option>
			  <option value ="iphone7">iphone7</option>
			  <option value="iphone8">iphone8</option>
			</select>
			<select id="status">
			  <option value ="1">1</option>
			  <option value ="0">0</option>
			</select>
			<button id="button">AllCategory</button>
</body>
</html>