<html>
<head>
    <meta http-equiv="Content-Language" content="en-us">
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
    <title>Global Mail/compose</title>
		
		
		 <link rel="stylesheet" href="css/compose.css">
		 
				 
    <script language=javascript>
        function composeClick() {
            var to = "" + document.forms[0].t1.value;
            var sub = "" + document.forms[0].t2.value;
            var mes = "" + document.forms[0].t3.value;
            if (to == "" || sub == "" || mes == "")
                alert("Please Enter All Fields");
            else if (to.lastIndexOf("@global.com") == -1)
                alert("Please Enter Valid ID. ex senthil@global.com");
            else {

                document.forms[0].action = "/Phising/Sendmail";
                document.forms[0].submit();
            }

        }
    </script>
</head>

<body background="images/blur.jpg">

<form method="post">

 <aside id="sidebar" class="nano">
  <div class="nano-content">
		Hi.! <%=session.getAttribute("user")%>
    <div class="logo-container"><span class="logo glyphicon glyphicon-envelope"></span><a href="inbox.jsp"><b>Global</B>Mail</a></div><a href="compose.jsp" class="compose-button">Compose</a>
    <menu class="menu-segment">
      <ul>
        <li class="active"><a href="inbox.jsp">Inbox</a></li>
        <li><a href="phisbox.jsp">Phish Box</a></li>
        <li><a href="comingsoon.jsp">Sent</a></li>
        <li><a href="comingsoon.jsp">Drafts</a></li>
        <li><a href="comingsoon.jsp">Trash</a></li>
      </ul>
    </menu>
    <div class="separator"></div>
    <a class="about-button">About</a>
    <a href="logout.jsp" class="logout-button">Log out</a>
   
   
    <div class="bottom-padding"></div>
  </div>
</aside>
   
    <div style="position: absolute; width: 249px; height: 100px; z-index: 3; left: 528px; top: 349px" id="layer11">
       
    </div>
    <p><font color="#970000">
    </font>
        <font color="#970000"></font></p>
    

      
       
        <!--<table  width="663">
        <tr><td>-->
        
			<div id="message">
			  <div class="header">
						
			  
				<h1 class="page-title"> Compose Mail <input type=hidden name="index" size="20"></h1>
								
				<p><input type=text name=t1 size="38" placeholder="To"></p>
			  </div>
				  <div id="message-nano-wrapper" class="nano">
						<div class="nano-content">
							  <ul class="message-container">
									<li class="sent">
									  <div class="detailss">
										<input type=text name=t2 size="58" placeholder="Subject">
									  </div>
									  <div class="messagee">
									  
										<textarea cols="35" rows="10" name="t3" placeholder="Compose Mail" style="margin: 2px; width: 453px; height: 246px;"></textarea>
										
									  </div>
									</li>
										<input type=button name=b
							   style="width: 70px; height: 19px; border-style: solid; border-width: 0; background-image: url('image/sendmail.gif')"
							   onclick="composeClick()">
							  </ul>
						</div>
					</div>
			</div>
            
		
			
    

</form>

</body>

</html>