<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Sign-Up/Login Form</title>
 
  
      <link rel="stylesheet" href="css/stylelogin.css">
	 
	  
 <script language=javascript>
        function signup() {
            document.forms[0].action = "signup.jsp";
            document.forms[0].submit();
        }
        function forget() {
            document.forms[0].action = "forget.jsp";
            document.forms[0].submit();
        }
        function setting() {
            document.forms[0].action = "settings.jsp";
            document.forms[0].submit();
        }
        function home() {
            document.forms[0].action = "home.jsp";
            document.forms[0].submit();
        }
        function login() {

            var uname = "" + document.forms[0].p1.value;
            var pwd = "" + document.forms[0].p2.value;
//uname=uname.trim();
//pwd=pwd.trim();
            if (uname == "" || pwd == "")
                alert("Please Enter All Fields");
            else if (pwd.length < 8)
                alert("Password must greater than 7 Letter");
            else {
                document.forms[0].action = "/Phising/Signin";
                document.forms[0].submit();
            }
        }

    </script>
  
</head>

<body background="images/blur.jpg">
<form method=post>
  <div class="form">
      <h1><b>Global</B>Mail</h1>
      <ul class="tab-group">
        <li class="tab "><a href="signup.jsp">Sign Up</a></li>
        <li class="tab active"><a href="home.jsp">Log In</a></li>
      </ul>
      
      <div class="tab-content">
       
        <div id="login">   
         
          <form action="/" method="post">
          
            <div class="field-wrap">
            
            <input type="text" name=p1 placeholder="User Name" required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            
            <input type="password" name=p2 placeholder="Password" required autocomplete="off"/>
          </div>
          
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          
          <button onclick="login()" class="button button-block"/>Log In</button>
          
          </form>

        
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>

	</form>
</body>
</html>
