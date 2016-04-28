<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/Static/CSS/Login.css" rel="stylesheet">
<title>Login</title>
</head>
<body>
	<div class="box">
		<div class="login-box">
			<div class="login-title text-center">
				<h1>
					<strong>登录</strong>
				</h1>
			</div>
			<div class="login-content ">
				<div class="form">
					<form action="/user/login" method="post">
						<div class="form-group">
							<div class="col-xs-12  ">
								<div class="input-group">
									<span class="input-group-addon"><span
										class="glyphicon glyphicon-user"></span></span> <input type="text"
										id="username" name="username" class="form-control"
										placeholder="用户名">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-xs-12  ">
								<div class="input-group">
									<span class="input-group-addon"><span
										class="glyphicon glyphicon-lock"></span></span> <input type="password" 
										id="password" name="password" class="form-control"
										placeholder="密码">
								</div>
							</div>
						</div>
						<div class="form-group form-actions">
							<div class="col-xs-4 col-xs-offset-4 ">
								<button type="submit" class="btn btn-sm btn-info">
									<span class="glyphicon glyphicon-off"></span> 登录
								</button>
							</div>
						</div>
						<div class="form-group">
							<div class="col-xs-6 link">
								<p class="text-center remove-margin">
									<small>忘记密码？</small> <a href="javascript:void(0)"><small>找回</small></a>
								</p>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
	<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
	<script src="/Static/JS/jquery.js"></script>
	<script src="/Static/JS/bootstrap/bootstrap.js"></script>
	<script src="/Static/JS/bootstrap/bootstrap.min.js"></script>
	<script>
		function btnLogin() {
			if (checkForm().form()) {
				$.post('@Url.Action("Login")', $("form").serialize(), function(
						data) {
					if (data.status) {
						window.location = "/Index/Home";
					} else {
						alert(data.result);
					}
				})
			}
		}
	</script>
</body>
</html>
