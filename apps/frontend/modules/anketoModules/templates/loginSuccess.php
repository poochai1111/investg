<?php use_stylesheet('anketo.css');
//      use_javascript('login.js');
?>
<script type="text/javascript" src="../../../../js/login.js"></script>
<span style="height:80%">
<form>
<div align="center" style="margin-top:150px; font-family: monospace;font-size: medium"> <label>用户登录</label></div>
<div align="center"  >用户：<input id="usertxt" type="text" value=""></div><br>
<div align="center">密码：<input id="pwdtxt" type="password" value=""></div><br>
<div align="center">
<button id ="submit" >登录</button>
<button type="reset">取消</button>
</div>
</form>
</span>
<script type="text/javascript">
$(document).ready(function(){
$("#submit").click(function(){
	var a = $("#usertxt").val();
	var b = $("#pwdtxt").val();	
    if(a!="" && b!=""){
        login(a,b);               
        }
    else{
        if(a==""){
            alert("用户名不能为空！");
            }
        else{
            alert("密码不能为空！"); 
            }
        }

function login(user,pwd){
//	alert(user);
//	alert(pwd);
	$.ajax({
       url:  "/anketoModules/confirm",
       data : "user=" + user + "&pwd=" + pwd,
       method: "post",
       success: function(data){
           alert(data);
           if(data){
        	   window.open('index');
               }
           else{
              alert("24小时内只允许提交一次！");
               }	
           }
		});
};
});
});
</script>
