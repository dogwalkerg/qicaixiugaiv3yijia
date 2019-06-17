<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta content="IE=edge" http-equiv="X-UA-Compatible">
	<meta content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width" name="viewport">
	<meta name="theme-color" content="#3f51b5">
	<title>{$config["appName"]}</title>
    <meta name="keywords" content="一家饭馆"> 
	<meta name="description" content="一家饭馆，我只在这家饭馆吃饭 - {$config["appName"]}">
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
                <a class="navbar-brand animated swing" href="/">{$config["appName"]}</a>
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
                    <li>
                        <a href="/password/reset">
                           <i class="material-icons">import_export</i> 找回密码
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