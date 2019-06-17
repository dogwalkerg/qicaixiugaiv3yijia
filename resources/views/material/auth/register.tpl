{include file='auth/header.tpl'}  
<div class="wrapper wrapper-full-page">
        <div class="full-page register-page" filter-color="black" data-image="/img/register.jpeg">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1">
                        <div class="card card-signup  animated slideInRight">
                            <h2 class="card-title text-center">Register</h2>
                            <div class="row">
                                <div class="col-md-5 col-md-offset-1">
                                    <div class="card-content">
                                        <div class="info info-horizontal">
                                            <div class="icon icon-rose">
                                                <i class="material-icons">timeline</i>
                                            </div>
                                            <div class="description">
                                                <h4 class="info-title">游戏</h4>
                                                <p class="description">
                                                    提供绝地求生，战地，彩虹六号，黑沙等热门游戏加速服务，无论是PC还是PS4, XBox平台均可使用
                                                </p>
                                            </div>
                                        </div>
                                        <div class="info info-horizontal">
                                            <div class="icon icon-primary">
                                                <i class="material-icons">code</i>
                                            </div>
                                            <div class="description">
                                                <h4 class="info-title">娱乐</h4>
                                                <p class="description">
                                                    多条高速线路，可观看油管4k视频，速度快，无缓冲
                                                </p>
                                            </div>
                                        </div>
                                        <div class="info info-horizontal">
                                            <div class="icon icon-info">
                                                <i class="material-icons">group</i>
                                            </div>
                                            <div class="description">
                                                <h4 class="info-title">学习</h4>
                                                <p class="description">
                                                    为开发学习助力，可用于python, java, Android, IOS, js, node, php等开发文档的搜索与使用
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-5">
                                    <div class="social text-center">
                                        <button class="btn btn-just-icon btn-round btn-twitter">
                                            <i class="fa fa-twitter"></i>
                                        </button>
                                        <button class="btn btn-just-icon btn-round btn-dribbble">
                                            <i class="fa fa-dribbble"></i>
                                        </button>
                                        <button class="btn btn-just-icon btn-round btn-facebook">
                                            <i class="fa fa-facebook"> </i>
                                        </button>
                                        <button class="btn btn-just-icon btn-round btn-facebook">
                                            <i class="fa fa-google"> </i>
                                        </button>
                                        
                                    </div>
                                    <form class="form" method="" action="">
                                        <div class="card-content">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="material-icons">face</i>
                                                </span>
                                                <div class="form-group is-empty"><input placeholder="昵称"  id="name" class="form-control"　type="text"><span class="material-input"></span></div>
                                            </div>
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="material-icons">email</i>
                                                </span>
                                                <div class="form-group is-empty"><input placeholder="邮箱"  id="email" class="form-control"　type="text"><span class="material-input"></span></div>
                                            </div>
                                          
                                            {if $enable_email_verify == 'true'}  
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="material-icons">visibility</i>
                                                </span>
   
                                                <div class="form-group">
                  
                                                  	<input placeholder="验证码" id="email_code" class="form-control" type="text">

          
                                                    <button id="email_verify" class="btn btn-info" style="margin-top:-40px;width:38%;float:right; margin-bottom:0px; z-index:99; padding: 10px 5px" type="button" >获取验证码</button>


                                                  </div>
 
                                          </div>{/if}
                                                                                    
                                          
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="material-icons">lock_outline</i>
                                                </span>
                                                <div class="form-group is-empty"><input placeholder="密码"  id="passwd" class="form-control" type="password"><span class="material-input"></span></div>
                                            </div>
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="material-icons">lock_outline</i>
                                                </span>
                                                <div class="form-group is-empty"><input placeholder="确认密码" id="repasswd" class="form-control" type="password"><span class="material-input"></span></div>
                                            </div>
											{if $config['register_mode'] == 'invite'}
                                            <div class="input-group"id="divcode">
                                                <span class="input-group-addon">
                                                    <i class="material-icons">label_outline</i>
                                                </span>
                                                <div class="form-group is-empty"><input placeholder="邀请码(必填)" id="code" class="form-control" type="text" value=""><span class="material-input"></span></div>
                                            </div>
											{/if}
											{if $geetest_html != null}
                                            <div class="input-group">
											  <div class="form-group form-group-label">
												<div class="row">
													<div class="col-md-10 col-md-push-1">
														<div id="embed-captcha"></div>
													</div>
												</div>
											  </div>
                                            </div>
											{/if}

                                            <!-- If you want to add a checkbox to this form, uncomment this code -->
                                          
                                           
                                        </div>
                                        <div class="footer text-center">
                                          <button class="btn btn-primary btn-round" id="reg" type="button">
                                        <i class="material-icons">favorite</i> 注册
                                        <div class="ripple-container"></div></button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        <div class="full-page-background" style="background-image: url(/img/register.jpeg) "></div></div>
  


    </div>


	<!-- js -->
    <script type="text/javascript" src="/assets/js/jquery-2.2.1.min.js"></script>
    <script src="//cdn.staticfile.org/jquery/2.2.1/jquery.min.js"></script>
	<script src="/theme/material/js/jquery.min.js"></script>
  <script src="/theme/material/js_new/gt.js"></script>
{if $geetest_html != null}
    <script>
        var handlerEmbed = function (captchaObj) {
            // 将验证码加到id为captcha的元素里

            captchaObj.onSuccess(function () {
                validate = captchaObj.getValidate();
            });

            captchaObj.appendTo("#embed-captcha");

            captcha = captchaObj;
            // 更多接口参考：http://www.geetest.com/install/sections/idx-client-sdk.html
        };

        initGeetest({
            gt: "{$geetest_html->gt}",
		    challenge: "{$geetest_html->challenge}",
            product: "embed", // 产品形式，包括：float，embed，popup。注意只对PC版验证码有效
            offline: {if $geetest_html->success}0{else}1{/if} // 表示用户后台检测极验服务器是否宕机，与SDK配合，用户一般不需要关注
        }, handlerEmbed);
    </script>
  {/if}
</body>
</html>

<script>
    $(document).ready(function(){
      //合作代理
      <!-- var domain = document.domain; -->
      <!-- if(domain=="sex.buding.info") -->
      <!-- { -->
      <!-- $("#code").val("hP7G7TULfm29NGAkIQZq13d5YzuxYggI"); -->
      <!-- $("#divcode").css("display","none"); -->
      <!-- }else if(domain=="kaka.buding.info") -->
      <!-- { -->
      <!-- $("#code").val("CxPgwGMe8aeok7vWFnhHffjLhpTmYpKN"); -->
      <!-- $("#divcode").css("display","none"); -->
      <!-- } -->
      $("#register_carte").addClass("active");
        function register(){
          code = $("#code").val();
    	{if $config['register_mode'] != 'invite'}
           code = 0;
           if ((getCookie('code'))!=''){
           code = getCookie('code');
          }
	    {/if}
            $.ajax({
                type:"POST",
                url:"/auth/register",
                dataType:"json",
               data:{
                    email: $("#email").val(),
                    name: $("#name").val(),
                    passwd: $("#passwd").val(),
                    repasswd: $("#repasswd").val(),
					wechat: '',//$("#wechat").val(),
					imtype: '0',//$("#imtype").val(),
					code:code{if $enable_email_verify == 'true'},
					emailcode: $("#email_code").val(){/if}{if $geetest_html != null},
					geetest_challenge: validate.geetest_challenge,
                    geetest_validate: validate.geetest_validate,
                    geetest_seccode: validate.geetest_seccode
					{/if}
                },
                success:function(data){
                    if(data.ret == 1){
                      swal({
                          title: "<span style='color: #9954bb; font-size:2rem; font-weight: 500'>"+data.msg+"</span>",
                          text: "<img src='/assets/images/icon6.jpg' height='40' width='40'>",
                          imageUrl: "/assets/images/dotdot.jpg",
                          animation: "slide-from-top",
                          html: true,
                        },
                        function(){
   						  window.setTimeout("location.href='/auth/login'", {$config['jump_delay']});
                        });
                    }else{
                      swal({
                          title: "<span style='color: #9954bb; font-size:2rem; font-weight: 500'>"+data.msg+"</span>",
                          text: "<img src='/assets/images/icon6.jpg' height='40' width='40'>",
                          imageUrl: "/assets/images/dotdot.jpg",
                          animation: "slide-from-top",
                          html: true,
                        },
                        function(){
                        setCookie('code','',0);
                        $("#code").val(getCookie('code'));
                        });
                    }
                },
                error:function(jqXHR){
			$("#msg-error").hide(10);
			$("#msg-error").show(100);
			$("#msg-error-p").html("发生错误："+jqXHR.status);
			document.getElementById("tos").disabled = false;
                  {if $geetest_html != null}
						captcha.refresh();
                  {/if}
			                }
            });
        }
        $("html").keydown(function(event){
            if(event.keyCode==13){
                $("#tos_modal").modal();
            }
        });
        {if $geetest_html != null}
				$('div.modal').on('shown.bs.modal', function() {
			$("div.gt_slider_knob").hide();
		});


		$('div.modal').on('hidden.bs.modal', function() {
			$("div.gt_slider_knob").show();
		});
        {/if}

		
		$("#reg").click(function(){
          {if $geetest_html != null}
                                  if (typeof validate == 'undefined') {
              swal({
                 title: "<span style='color: #9954bb; font-size:2rem; font-weight: 500'></span>",
                 text: "<img src='/assets/images/icon6.jpg' height='40' width='40'> 请滑动验证码来完成验证~!",
                 imageUrl: "/assets/images/dotdot.jpg",
                 animation: "slide-from-top",
                 html: true,
               })
                return;
            }

            if (!validate) {
                swal({
                 title: "<span style='color: #9954bb; font-size:2rem; font-weight: 500'></span>",
                 text: "<img src='/assets/images/icon6.jpg' height='40' width='40'> 请滑动验证码来完成验证~!",
                 imageUrl: "/assets/images/dotdot.jpg",
                 animation: "slide-from-top",
                 html: true,
               })
                return;
            }
          {/if}

                         
            register();
        });
    })
</script>


{if $enable_email_verify == 'true'}
<script>
var wait=60;
function time(o) {
		if (wait == 0) {
			o.removeAttr("disabled");
			o.text("获取验证码");
			wait = 60;
		} else {
			o.attr("disabled","disabled");
			o.text("重新发送(" + wait + ")");
			wait--;
			setTimeout(function() {
				time(o)
			},
			1000)
		}
	}



    $(document).ready(function () {      
        $("#email_verify").click(function () {
          if($("#email").val() =="")
          {
            swal({
                     title: "<span style='color: #9954bb; font-size:2rem; font-weight: 500'>请填写电子邮箱！！！</span>",
                     imageUrl: "/assets/images/dotdot.jpg",
                     animation: "slide-from-top",
                     html: true,
                   })
            return
          }
          time($("#email_verify"));
            $.ajax({
                type: "POST",
                url: "send",
                dataType: "json",
                data: {
                    email: $("#email").val()
                },
                success: function (data) {
                    if (data.ret) {
                    } else {
                        swal({
                         title: "<span style='color: #9954bb; font-size:2rem; font-weight: 500'>"+data.msg+"</span>",
                         text: "<img src='/assets/images/icon6.jpg' height='40' width='40'>",
                         imageUrl: "/assets/images/dotdot.jpg",
                         animation: "slide-from-top",
                         html: true,
                       })
                    }
                },
                error: function (jqXHR) {
                    swal({
                 title: "<span style='color: #9954bb; font-size:2rem; font-weight: 500'>遇到未知错误！！！</span>",
                 imageUrl: "/assets/images/dotdot.jpg",
                 animation: "slide-from-top",
                 html: true,
               })
                }
            })
        })
    })
</script>
{/if}
<!-- 不知道什么JS -->

<script>
	
	function getQueryVariable(variable)
	{
	       var query = window.location.search.substring(1);
	       var vars = query.split("&");
	       for (var i=0;i<vars.length;i++) {
	            	var pair = vars[i].split("=");
	            	if(pair[0] == variable){
	            		return pair[1];
	            	}
	       }
	       return "";
	}

	
	function setCookie(cname,cvalue,exdays)
	{
	  var d = new Date();
	  d.setTime(d.getTime()+(exdays*24*60*60*1000));
	  var expires = "expires="+d.toGMTString();
	  document.cookie = cname + "=" + cvalue + "; " + expires;
	}

	
	function getCookie(cname)
	{
	  var name = cname + "=";
	  var ca = document.cookie.split(';');
	  for(var i=0; i<ca.length; i++) 
	  {
	    var c = ca[i].trim();
	    if (c.indexOf(name)==0) return c.substring(name.length,c.length);
	  }
	  return "";
	}

	
	if (getQueryVariable('code')!=''){
		setCookie('code',getQueryVariable('code'),30);
		window.location.href='/auth/register'; 
	}

	
	if ((getCookie('code'))!=''){
		$("#code").val(getCookie('code'));
	}

</script>