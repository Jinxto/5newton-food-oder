    <%@page import="javaWebApplication.utility.ServletUtility"%>
    <body>
    
      <%@ include file="header.jsp"%>
      <body oncontextmenu="return false;">
<script>
document.onkeydown = function(e) {
  if(event.keyCode == 123) {
     return false;
  }
  if(e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0)) {
     return false;
  }
  if(e.ctrlKey && e.shiftKey && e.keyCode == 'C'.charCodeAt(0)) {
     return false;
  }
  if(e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0)) {
     return false;
  }
  if(e.ctrlKey && e.keyCode == 'U'.charCodeAt(0)) {
     return false;
  }
  if(e.ctrlKey && e.shiftKey && e.keyCode == 'e'.charCodeAt(0)) {
	     return false;
	  }
}
</script>
      
      <main class="login-form">
      <div class="cotainer">
        <div class="row justify-content-center">
          <div class="col-md-8">
            <div class="card">
              <div class="card-header">
                Login 
                <h6 style="color: red;"><%= ServletUtility.getErrorMessage(request) %></h6>
                <h6 style="color: green;"></h6>
              </div>
              <div class="card-body">
                <form action="" method="post">
                  <div class="form-group row">
                    <label for="email_address" 
                      class="col-md-4 col-form-label text-md-right">Login Id<font color="red">*</font></label>
                    <div class="col-md-6">
                      <input type="text" id="login"  class="form-control" placeholder="Enter Login Id"
                        name="login" value="" >
                        <font  color="red"></font>
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="password"
                      class="col-md-4 col-form-label text-md-right">Password<font color="red">*</font></label>
                    <div class="col-md-6">
                      <input type="password" id="password" class="form-control" placeholder="Enter Password"
                        name="password" value="" >
                        <font color="red"> </font>
                    </div>
                  </div>
                  <div class="col-md-6 offset-md-4">
                    <input type="submit" class="btn btn-primary" name="operation" value="Login">
                    <a href="" class="btn btn-link"> Forgot Your Password? </a>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
      </main>
      <div style="margin-top: 170px">
        <%@ include file="footer.jsp"%>
      </div>