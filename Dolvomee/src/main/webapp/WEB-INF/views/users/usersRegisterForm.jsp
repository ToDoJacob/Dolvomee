<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>Register</title>

  <!-- General CSS Files -->
  <link rel="stylesheet" href="assets/modules/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/modules/fontawesome/css/all.min.css">

  <!-- CSS Libraries -->
  <link rel="stylesheet" href="assets/modules/jquery-selectric/selectric.css">

  <!-- Template CSS -->
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="assets/css/components.css">
<!-- Start GA -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-94034622-3"></script>
<script>
  function CheckPassword() {
		var password = frm.usersPwd.value;
		var repeatPassword = frm.password.value;
		
		if(password != "" && password == repeatPassword) {
			frm.submit();
		} else {
			alert("패스워드가 일치하지 않습니다.");
			frm.password.value = "";
			frm.repeatPassword.value ="";
			frm.password.fource();
			return false;
		}
	}
</script>
<!-- /END GA -->
</head>
<body>
<div id="app">
    <section class="section">
      <div class="container mt-5">
        <div class="row">
          <div class="col-12 col-sm-10 offset-sm-1 col-md-8 offset-md-2 col-lg-8 offset-lg-2 col-xl-8 offset-xl-2">
            <div class="login-brand">
				<a href="home.do">
              		<img src="assets/img/stisla-fill.svg" alt="logo" width="100" class="shadow-light rounded-circle">
            	</a>            
            </div>

            <div class="card card-primary">
              <div class="card-header"><h4>Register</h4></div>

              <div class="card-body">
                <form method="POST" action="usersRegister.do">
                
                  <div class="row">
	                  <div class="form-group col-6">
	                    <label for="email">Email</label>
	                    <input id="email" type="email" class="form-control" name="usersEmail" autofocus>
	                    <div class="invalid-feedback">
	                    </div>
	                  </div>  
	                  
	                  <div class="form-group col-6">
	                    <label for="frist_name">이름</label>
	                    <input id="frist_name" type="text" class="form-control" name="usersName">
	                  </div>
	                  
                  </div>


                  <div class="row">
                    <div class="form-group col-6">
                      <label for="password" class="d-block">Password</label>
                      <input id="usersPwd" type="password" class="form-control pwstrength" data-indicator="pwindicator" name="usersPwd">
                      <div id="pwindicator" class="pwindicator">
                        <div class="bar"></div>
                        <div class="label"></div>
                      </div>
                    </div>
                    <div class="form-group col-6">
                      <label for="password2" class="d-block">Password 확인</label>
                      <input id="password" type="password" class="form-control" name="password">
                    </div>
                  </div>
                  
                  <div class="row">
	                  <div class="form-group col-6">
	                    <label for="phone">전화번호</label>
	                    <input id="phone" type="text" class="form-control" name="usersPhone">
	                  </div>
		                  
	                  <div class="form-group col-6">
	                    <label for="address">주소</label>
	                    <input id="address" type="text" class="form-control" name="usersAddr">
	                  </div>
                  </div>
                  
                  <div class="form-group">
                  	<input type="hidden" class="form-control form-control-user" id="author" name="usersAuthor" value="users">
                  </div>

                  <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-lg btn-block" onclick="CheckPassword()">
                      회원가입
                    </button>
                  </div>
                </form>
              </div>
            </div>
            <div class="simple-footer">
              Copyright &copy; Yedam
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>

  <!-- General JS Scripts -->
  <script src="assets/modules/jquery.min.js"></script>
  <script src="assets/modules/popper.js"></script>
  <script src="assets/modules/tooltip.js"></script>
  <script src="assets/modules/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/modules/nicescroll/jquery.nicescroll.min.js"></script>
  <script src="assets/modules/moment.min.js"></script>
  <script src="assets/js/stisla.js"></script>

  <!-- JS Libraies -->
  <script src="assets/modules/jquery-pwstrength/jquery.pwstrength.min.js"></script>
  <script src="assets/modules/jquery-selectric/jquery.selectric.min.js"></script>

  <!-- Page Specific JS File -->
  <script src="assets/js/page/auth-register.js"></script>

  <!-- Template JS File -->
  <script src="assets/js/scripts.js"></script>
  <script src="assets/js/custom.js"></script>
</body>
</html> 