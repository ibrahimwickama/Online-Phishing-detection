<%! Appn.MsgForm mf; %>

<html>
<head>
    <meta http-equiv="Content-Language" content="en-us">
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
    <title>username
        signout</title>
		
		     <link rel="stylesheet" href="css/msgdisp.css">

    <script language=javascript>
        function backk() {
            history.back();
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
   
   
    <div style="position: absolute; width: 669px; height: 60px; z-index: 1; left:3px; top:141px" id="layer1">

       
        <% mf = (Appn.MsgForm) session.getAttribute("msg"); %>


        <div style="position: absolute; width: 725px; height: 340px; z-index: 3; left: 0px; top: 95px" id="layer8">
            
			
			<div id="message">
			  <div class="header">
						
			  
									<% String fr = mf.from; %>
									<%boolean ok = true; %>
									<%if (!(mf.sp).equals("")) { %>
									<%fr = mf.sp; %>
									<% ok = false; %>
									<%} %>
									<% if (ok) {%>
									<% fr = fr.replace("@" + application.getInitParameter("server"), "@global.com"); %>
									<%} %>
				<h1 class="page-title"> <%=fr %> </h1>
								<%String status[] = {"Phising Mail", "Possible of Phising", "Not Phising"}; %>
								<%int s = 0; %>
								<% String domain = fr.substring(fr.lastIndexOf("@") + 1, fr.lastIndexOf(".")); %>
								<%Appn.Analyzer ob = new Appn.Analyzer();%>
								<%s = ob.analyze(mf.msg, application.getInitParameter("server"), domain) + 1;%>
								<%mf.msg = ob.changeLink(mf.msg, application.getInitParameter("server"), domain);%>
				<p>Security status: <%=status[s]%></p>
			  </div>
				  <div id="message-nano-wrapper" class="nano">
						<div class="nano-content">
							  <ul class="message-container">
									<li class="sent">
									  <div class="details">
										<div class="left"><%=mf.subject%>
										</div>
										<div class="right"><%=mf.date%></div>
									  </div>
									  <div class="message">
										<%=mf.msg%>
									  </div>
									</li>
										<a onclick="backk()">Back</a>
							  </ul>
						</div>
					</div>
			</div>
            
            
        </div>
    </div>
</form>
</body>

</html>