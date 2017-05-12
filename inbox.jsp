
<%@ page import="Appn.Mail" %>
<%! Appn.MsgForm[] mf; %>

<html >
<head>
  <meta charset="UTF-8">
  <title>Global Mail/inBox</title>
   <meta name="viewport" content="width=device-width">


  
  <link rel="stylesheet" href="css/main.css">

   
  <script type="text/javascript">
        onload = function () {
            if (!document.getElementsByTagName || !document.createTextNode) return;
            var rows = document.getElementById('table1').getElementsByTagName('tbody')[0].getElementsByTagName('tr');
            for (i = 1; i < rows.length; i++) {
                rows[i].onclick = function () {
                    var v = "" + this.rowIndex;
                    document.forms[0].index.value = v;
                    document.forms[0].action = "/Phising/Msg";
                    document.forms[0].submit();
                }
            }
        }
		
    </script>

</head>

<body>
<form method="get">
  <aside id="sidebar" class="nano">
  <div class="nano-content">
		Hi.! <%=session.getAttribute("user")%>
    <div class="logo-container"><span class="logo glyphicon glyphicon-envelope"></span><b>Global</B>Mail</div><a href="compose.jsp" class="compose-button">Compose</a>
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
    <a href="comingsoon.jsp" class="about-button">About</a>
    <a href="logout.jsp" class="logout-button">Log out</a>
   
   
    <div class="bottom-padding"></div>
  </div>
</aside>
<main id="main">
  <div class="overlay"></div>
  <header class="header">
<div class="search-box">
      <input placeholder="Search..."><span class="icon glyphicon glyphicon-search"></span>
    </div>
     <blockquote>
                    <h1><b><font size="7" color="#800000" face="Chiller">Inbox</font><font size="6" color="#800000"
                                                                                           face="Chiller">
                    </font></b><font color="#000080" face="French Script MT"><b>
                        <font face="Chiller" color="#800000" size="6">
                            <input type=hidden name="index" size="20"></font></b></font>
                    </h1>
                </blockquote>
				</header>
  
      
        <table border="0.5" width="100%" id="table1" cellspacing="1">
							<tr>
                                <th width="27"><font color="#AA6600" size="4">
                                    <input type="checkbox" name="C1" value="ON" style="font-weight: 700"></font></th>
                                <th width="246"><b><font size="4" color="#008000">Sender</font></b></th>
                                <th><b><font size="4" color="#008000">Subject</font></b></th>
                                <th><b><font size="4" color="#008000">Date</font></b></th>
                            </tr>
                           
                            <%Mail m = new Mail();
                            %>
                            <% String server= application.getInitParameter("server"), user = (String) session.getAttribute("user"), password = (String) session.getAttribute("pwd"); %>
                            <% mf = m.receive(server, user, password); %>
                            <% session.setAttribute("allmsg", mf); %>
                            <% for (int i = 0; i < mf.length; i++) { %>
                            <% String fr = mf[i].from; %>
                            <%boolean ok = true; %>
                            <%if (!(mf[i].sp).equals("")) { %>
                            <%fr = mf[i].sp; %>
                            <% ok = false; %>
                            <%} %>
                            <% if (ok) {%>
                            <% fr = fr.replace("@" + application.getInitParameter("server"), "@global.com"); %>
                            <%} %>


                            <%String status[] = {"Phising Mail", "Possible of Phising", "Not Phising"}; %>
                            <%int s = 0; %>
                            <% String domain = fr.substring(fr.lastIndexOf("@") + 1, fr.lastIndexOf(".")); %>
                            <%Appn.Analyzer ob = new Appn.Analyzer();%>
                            <%s = ob.analyze(mf[i].msg, application.getInitParameter("server"), domain) + 1;%>
                            <%
                                mf[i].msg = ob.changeLink(mf[i].msg, application.getInitParameter("server"), domain);%>

                            <tr>
                                <td width="27">
                                    <p align="center"><font color="#D27E00" size="3">
                                        <input type="checkbox" name="C1" value="ON" style="font-weight: 700"></font>
                                </td>
                                <td width="370"><b><font color="#0D0D0D"><%=fr%>
                                </font></b></td>
                                <td><b><font color="#0D0D0D"><%=mf[i].subject %>
                                </font></b></td>
                                <td width="159"><b><font color="#0D0D0D"><%=mf[i].date %>
                                </font></b></td>
                            </tr>
                            <% } %>
                        </table>
      <a href="#" class="load-more-link">Show more messages</a>
 
</main>


    <script src="js/index.js"></script>

	</form>
</body>
</html>
