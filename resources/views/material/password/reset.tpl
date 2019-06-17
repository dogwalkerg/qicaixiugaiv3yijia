
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta content="IE=edge" http-equiv="X-UA-Compatible">
	<meta content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width" name="viewport">
	<meta name="theme-color" content="#3f51b5">
	<title>Shadowrocket官网</title>
    <meta name="keywords" content="Shadowrocket官网"> 
	<meta name="description" content="Shadowrocket官网，我只在这家饭馆吃饭">
	<!-- css -->
	<!--<link href="/theme/material/css/base.css" rel="stylesheet">
	<link href="/theme/material/css/project.css" rel="stylesheet">
	<link href="//fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
     -->
      <link href="/assets/css/bootstrap.min.css" rel="stylesheet">
  	<link href="/assets/css/material-dash.css" rel="stylesheet">
   <link rel="stylesheet" href="/assets/css/animate.min.css">
  
    <link href="/assets/css/sweetalert.css" rel="stylesheet">
    <script type="text/javascript" src="/assets/js/sweetalert.min.js"></script>
  
   <link href="//fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	
	<!-- favicon -->

	<!-- ... -->
  	<link rel="shortcut icon" href="/favicon.ico"/>
    <link rel="bookmark" href="/favicon.ico"/>
</head>

 <style>
  @import url(/assets/css/font-awesome.min.css);
 
.input-group {
     padding-top: 10px;
     padding-bottom: 10px;
}
   
@font-face { 
	font-family: title-speed;
	src: url('/fonts/LobsterTwo-Regular.otf');
} 

.navbar-brand{
  font-family: title-speed;
  font-size: 1.2rem;
  font-weight: 500;
  
 }
 
 </style>
  
<body class="off-canvas-sidebar">
  
    <nav class="navbar navbar-primary navbar-transparent navbar-absolute">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand animated swing" href="/">Shadowrocket官网</a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li id="homt_carte">
                        <a href="/">
                            <i class="material-icons">dashboard</i> 首页
                        </a>
                    </li>
                    <li id="login_carte">
                        <a href="/auth/login">
                            <i class="material-icons">fingerprint</i> 登录
                        </a>
                    </li>
                    <li id="register_carte">
                        <a href="/auth/register">
                            <i class="material-icons">person_add</i> 注册
                        </a>
                    </li>
                    <li id="reset_carte">
                        <a href="/password/reset">
                           <i class="fa fa-grav mr-1"></i> 找回密码
                        </a>
                    </li>
                    <li id="tos_carte">
                        <a href="/tos">
                            <i class="material-icons">turned_in_not</i> 使用与条款
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>





 <div class="wrapper wrapper-full-page">
  
  <div class="full-page login-page" data-image="/img/random.jpeg" filter-color="black">
    <!--   you can change the color of the filter page using: data-color="blue | purple | green | orange | red | rose " -->
    <div class="content">
      <div class="container">
        <div class="row">
          <div class="col-md-4 col-sm-6 col-md-offset-4 col-sm-offset-3">
              <div class="card card-login animated flipInX">
                <div class="card-header text-center" data-background-color="rose">
                  <h5 class="card-title">Reset</h5>
                  <div class="social-line">
                    <a href="#tg" class="btn btn-just-icon btn-simple">
                      <i class="fa fa-telegram"></i>
                    </a>
                    <a href="#pablo" class="btn btn-just-icon btn-simple">
                      <i class="fa fa-twitter"></i>
                    </a>
                    <a href="#eugen" class="btn btn-just-icon btn-simple">
                      <i class="fa fa-facebook-square"></i>
                    </a>
                  </div>
                </div>
                <p class="category text-center" style="font-family:title-speed; font-size:1.1rem; font-weight: 400">
                 Shadowrocket官网
                </p>
                <div class="card-content">
                  <div class="input-group">
                    <span class="input-group-addon">
                      <i class="material-icons">email</i>
                    </span>
                    <div class="form-group label-floating is-empty">
                      <label class="control-label">Email address</label>
                      <input class="form-control" style="cursor: auto;" type="email" id="email">
                      <span class="material-input"></span><span class="material-input"></span></div>
                  </div>
					
					<div class="form-group">
						<div class="row">
							<div class="col-md-10 col-md-push-1">
								<button id="reset" class="btn btn-block btn-brand waves-attach waves-light">重置密码</button>
								<!-- <a href="" onclick="return false;" data-toggle='modal' data-target='#email_nrcy_modal'>收不到验证码？点击这里</a> -->
							</div>
						</div>
					</div>
 
                </div>
              </div>
          </div>
        </div>
      </div>
    </div>

    <div class="full-page-background" style="background-image: url(/img/random.jpeg) "></div>
   </div>
   
  </div>
  


	<!-- js -->
    <script type="text/javascript" src="/assets/js/jquery-2.2.1.min.js"></script>
    <script src="//cdn.staticfile.org/jquery/2.2.1/jquery.min.js"></script>
	<script src="/theme/material/js/jquery.min.js"></script>
  <script src="/theme/material/js_new/gt.js"></script>

</body>
</html>



<script>
    $(document).ready(function(){
      $("#reset_carte").addClass("active");
        function reset(){
          if($("#email").val()=="")
          {
            sweetAlert("系统提示", "请填写合格的邮箱号码", "error");
          return;
          }
          
         swal({
    title: '正在发送,请稍等！请勿刷新当前页面',
    text: '8秒后自动关闭。',
    timer: 8000
    });
            $.ajax({
                type:"POST",
                url:"/password/reset",
                dataType:"json",
                data:{
                    email: $("#email").val(),
                },
                success:function(data){
                    if(data.ret == 1){
                        sweetAlert("系统提示", data.msg, "success");
                    }else{
                        sweetAlert("系统提示", data.msg, "error");
                    }
                },
                error:function(jqXHR){
                    sweetAlert("系统提示","系统错误请联系管理员修复", "error");
                }
            });
        }
        $("html").keydown(function(event){
            if(event.keyCode==13){
                reset();
            }
        });
        $("#reset").click(function(){
            reset();
        });
    })
</script>
<script src="/assets/js/perfect-scrollbar.jquery.min.js"></script>
    <script src="/assets/js/material-dashboard.js"></script>
    <script src="/assets/js/material.min.js"></script>
    <script type="text/javascript" src="/assets/js/love.js"></script>
    <script text="text/javascript" src="/assets/js/particle.js"></script>