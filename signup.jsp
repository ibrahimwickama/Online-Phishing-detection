<!DOCTYPE html>
<%@ page import="java.util.Random" %>
<html >
<head>
  <meta charset="UTF-8">
  <title>Sign-Up/Login Form</title>
 
  
      <link rel="stylesheet" href="css/stylelogin.css">

 <script>
        function che() {
            var code = document.forms[0].t1.value;
            alert("Secret code : " + code)
        }
        function si() {
            alert("Processing...");
            var name = document.forms[0].p1.value;
            var id = document.forms[0].p2.value;
            var pass = document.forms[0].p31.value;
            var pass1 = document.forms[0].p32.value;
            var myindex = document.forms[0].p4.selectedIndex;
            var quest = document.forms[0].p4.options[myindex].text;
            var ans = document.forms[0].p5.value;
            var scode = document.forms[0].sec.value;
            var code = document.forms[0].t1.value;

            if (name == "" || id == "" || pass == "" || pass1 == "" || quest == "" || ans == "" || scode == "")
                alert("Please Enter all fields");
            else if (pass != pass1)
                alert("Password Mismatch");
            else if (pass.length < 8)
                alert("Password must greater than 7 Letter");
            else if (scode != code)
                alert("Please Enter correct security code");
            else {
                alert("correct");
                document.forms[0].action = "/Phising/Signup";
                document.forms[0].submit();
            }

        }
        function hom() {
            document.forms[0].action = "home.jsp";
            document.forms[0].submit();
        }
    </script>
  
</head>

<body background="images/blur.jpg">

<p>
    <%! String co; %>
    <%
        Random r = new Random();
        String s = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz123456789";
        char c = s.charAt(r.nextInt(60));
        char c1 = s.charAt(r.nextInt(60));
        char c2 = s.charAt(r.nextInt(60));
        char c3 = s.charAt(r.nextInt(60));
        char c4 = s.charAt(r.nextInt(60));
        co = "" + c + c1 + c2 + c3 + c4;
    %>
    <!--<marquee behavior=slide bgcolor=#FFFFCC><font size=7 color=red face="Arial"><%=co%></font></marquee>
-->
</p>
 
  <div class="form">
	
	<h1><b>Global</B>Mail</h1>
      
      <ul class="tab-group">
        <li class="tab active"><a href="signup.jsp">Sign Up</a></li>
        <li class="tab"><a href="home.jsp">Log In</a></li>
      </ul>
      
      <div class="tab-content">
        <div id="signup">   
          
          <form action="/" method="post">
          
          <div class="field-wrap">
			<input type="text" name="p1" placeholder="Full Name" required autocomplete="off"/>
          </div>

          <div class="field-wrap">
			<input type="email" name="p2" placeholder="UserName" required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
			<input type="password" name="p31" placeholder="Password" required autocomplete="off"/>
          </div>
          
           <div class="field-wrap">
			<input type="password" name="p32" placeholder="Re-Enter Password" required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
          <label>Security Question</label>
			<select size="1" border-width="1px" name="p4" class="secquestions" >
						<option selected>Who is your favourite player?</option>
						<option>What is your first phone no?</option>
						<option>What is your favourite color?</option>
						<option>What is your favourite food?</option>
						<option>What is your favourite color</option></select>
          </div>
          
           <div class="field-wrap">
			<input type="text" name="p5" placeholder="Secret Answer" required autocomplete="off"/>
          </div>
          
          <input value="<%=co%>" class="field-wrap"
                  style="border:1px solid #FFFFFF; border: 1px solid #FFFFFF; width:145px; height: 40px; font-family:Pristina; font-size:20pt; font-weight:bold; color:black; letter-spacing:inherit; text-align:center; background-image:url('image/v.jpg')"
                  tabindex="80" name="t1" size="12" readonly>
                  
          <div class="field-wrap">
			<input type="text" name="sec" placeholder="Write the Captcha Here" required autocomplete="off"/>
          </div>
          
          <button onclick="si()" type="submit" class="button button-block"/>Get Started</button>
          
          </form>

	  </div>
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>

</body>
</html>
