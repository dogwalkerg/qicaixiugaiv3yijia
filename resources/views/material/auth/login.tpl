{include file='auth/header.tpl'}  
 <div class="wrapper wrapper-full-page">
  
  <div class="full-page login-page" data-image="/img/random.jpeg" filter-color="black">
    <!--   you can change the color of the filter page using: data-color="blue | purple | green | orange | red | rose " -->
    <div class="content">
      <div class="container">
        <div class="row">
          <div class="col-md-4 col-sm-6 col-md-offset-4 col-sm-offset-3">
            <form method="#" action="#" _lpchecked="1">
              <div class="card card-login animated flipInX">
                <div class="card-header text-center" data-background-color="rose">
                  <h4 class="card-title">Login</h4>
                  <div class="social-line">
                    <a href="#tg" class="btn btn-just-icon btn-simple">
                      <i class="fa fa-telegram" aria-hidden="true"></i>
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
                 {$config["appName"]}
                </p>
                <div class="card-content">
                  <div class="input-group">
                    <span class="input-group-addon">
                      <i class="material-icons">email</i>
                    </span>
                    <div class="form-group label-floating is-empty">
                      <label class="control-label">Email address</label>
                      <input class="form-control" style="cursor: auto;" type="email" id="email">
                      <span class="material-input"></span></div>
                  </div>
                  
                  <div class="input-group">
                    <span class="input-group-addon">
                      <i class="material-icons">lock_outline</i>
                    </span>
                    <div class="form-group label-floating is-empty">
                      <label class="control-label">Password</label>
                      <input class="form-control" style="cursor: auto;" type="password" id="passwd">
                      <span class="material-input"></span>
                    </div>
                  </div>
                  
                   <div class="input-group" >
                                           	 <span class="input-group-addon">
                      		
                   		 </span>
                          <div class="form-group label-floating is-empty">
                              <div id="embed-captcha"></div>
                          </div>
                                           </div>
                </div>
                <div class="footer text-center">
                  <button type="submit" id="login" class="btn btn-rose btn-simple btn-wd btn-lg">登  陆</button>
                </div>
              </div>
            </form>
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
    $(document).ready(function () {
      $("#login_carte").addClass("active");
        function login() {
           {if $geetest_html != null}
                        if (typeof validate == 'undefined') {
              sweetAlert("系统提示", "请滑动验证码来完成验证。", "error");
                return;
            }

            if (!validate) {
                sweetAlert("系统提示", "请刷新游览器,然后滑动验证码。", "error");
                return;
            }
          {/if}
            
            document.getElementById("login").disabled = true;

				$.ajax({
                type:"POST",
                url:"/auth/login",
                dataType:"json",
                data:{
                 	email: $("#email").val(),
                    passwd: $("#passwd").val(),
                    code: $("#code").val(),
                    remember_me: $("#remember_me:checked").val(){if $geetest_html != null},
                    geetest_challenge: validate.geetest_challenge,
                    geetest_validate: validate.geetest_validate,
                    geetest_seccode: validate.geetest_seccode	{/if}
                },
                success:function(data){
              		if(data.ret == 1){
                        swal({
                          title: "<span style='color: #9954bb; font-size:2rem; font-weight: 500'>欢迎回来~!</span>",
                          animation: "slide-from-top",
                          html: true,
                        });
                      window.setTimeout("location.href=/user/", {$config['jump_delay']});
              		  }else
                      {
                        swal({
                          title: "<span style='color: #9954bb; font-size:2rem; font-weight: 500'>"+data.msg+"</span>",
                          animation: "slide-from-top",
                          html: true,
                        },
                        function(){
   						 document.getElementById("login").disabled = false;
                        });
                      }
					},
                      //<!-- 开始 -->
                error: function (jqXHR) {
                    document.getElementById("login").disabled = false;
                  {if $geetest_html != null}
                    captcha.refresh(); 
                   {/if}
                }
                  // <!-- 结束 -->
                  
            });
        }

        $("html").keydown(function (event) {
            if (event.keyCode == 13) {
                login();
            }
        });
        $("#login").click(function () {
            login();
        });

        $('div.modal').on('shown.bs.modal', function () {
            $("div.gt_slider_knob").hide();
        });

        $('div.modal').on('hidden.bs.modal', function () {
            $("div.gt_slider_knob").show();
        });
    })
    
    
    
    
</script>
    <script src="/assets/js/perfect-scrollbar.jquery.min.js"></script>
    <script src="/assets/js/material-dashboard.js"></script>
    <script src="/assets/js/material.min.js"></script>
    <script type="text/javascript" src="/assets/js/love.js"></script>
    <script text="text/javascript" src="/assets/js/particle.js"></script>