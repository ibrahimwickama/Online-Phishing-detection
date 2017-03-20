<html>
<head>
    <meta http-equiv="Content-Language" content="en-us">
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
    <title>username
        signout</title>
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

                document.forms[0].action = "http://localhost:8081/Phising/Sendmail";
                document.forms[0].submit();
            }

        }
    </script>
</head>

<body>

<form method="post">
    <div style="position: absolute; width: 45px; height: 48px; z-index: 2; left:710px; top:181px" id="layer2">
        <div style="position: absolute; width: 834px; height: 100px; z-index: 1; left: -731px; top: -184px" id="layer3">
            <div style="position: absolute; width: 172px; height: 28px; z-index: 1; left: 329px; top: 49px" id="layer7">
                <b><font size="7" color="#FFFFFF" face="Chiller">Global Mail</font></b></div>
            <img src="image/in.jpg"></div>
        &nbsp;</div>
    <div style="position: absolute; width: 249px; height: 100px; z-index: 3; left: 528px; top: 349px" id="layer11">
        <font color=#CC0000>
            <b><%
                if ((request.getAttribute("msg")) == null) {
                    System.out.println("");
                } else {%>

                <br><font color=#009900><p align=left>Show Msg:</p></font>
                <%
                        System.out.println("*" + request.getAttribute("msg"));
                    }
                %></b></font>
    </div>
    <p><font color="#970000">
    </font>
        <font color="#970000"></font></p>
    <div style="position: absolute; width: 669px; height: 119px; z-index: 1; left:2px; top:141px" id="layer1">

        <blockquote>
            <blockquote>
                <h1><b><font size="7" color="#800000" face="Chiller">Compose Mail
                </font></b><font color="#000080" face="French Script MT"><b>
                    <font size="7" face="Chiller" color="#800000">
                        <input type=hidden name="index" size="20"></font></b></font></h1>
                <div style="position: absolute; width: 317px; height: 59px; z-index: 1; left: 459px; top: 0px"
                     id="layer5">
                    <div style="position: absolute; width: 55px; height: 24px; z-index: 1; left: 129px; top: 26px"
                         id="layer6">[<b><font size="2">
                        <a href="logout.jsp">Logout</a> </font></b>]
                    </div>
                    <center>
                        <font size="4" face="Bell MT" color="#000080"><%=session.getAttribute("user")%>
                        </font></center>
                </div>
            </blockquote>
        </blockquote>
        <p>
        </p>
        <!--<table  width="663">
        <tr><td>-->
        <table width="778">
            <tr>
                <td width="772" background="image/b11.jpg" height="50">
                    <blockquote>

                        <center>
                            <blockquote>
                                <blockquote>
                                    <blockquote>
                                        <pre><font face="Baskerville Old Face"><b><a href="inbox.jsp"><font size="4"
                                                                                                            color="#800080">InBox</font></a></b></font><font
                                                size="5"><font color="#800080">       </font></font><b><a
                                                href="phisbox.jsp"><font color="#800080" face="Baskerville Old Face"
                                                                         size="4">PhisBox</font></a></b><font
                                                color="#800080" size="5">      </font><b><a href="compose.jsp"><font
                                                size="4" color="#800080" face="Baskerville Old Face">ComposeMail</font></a><font
                                                size="4" color="#800080" face="Baskerville Old Face">  </font></b></pre>
                                    </blockquote>
                                </blockquote>
                            </blockquote>
                        </center>

                        <!--<td>-->
                    </blockquote>
            </tr>
        </table>

        <div style="position: absolute; width: 417px; height: 100px; z-index: 3; left: 104px; top: 132px" id="layer9">
<pre>
<font color="#000080"><b>To</b></font>	<input type=text name=t1 size="38">


<font color="#000080"><b>Subject</b></font>	<input type=text name=t2 size="38">
</pre>
        </div>
        <div>
            <div style="position: absolute; width: 100px; height: 100px; z-index: 2; left: 103px; top: 240px"
                 id="layer8">
<pre><font color="#000080"><b>Message</b></font>
	<textarea cols=35 rows=10 name="t3"></textarea></pre>
            </div>
        </div>

        <div style="position: absolute; width: 69px; height: 38px; z-index: 4; left: 251px; top: 439px" id="layer10">
            <input type=button name=b
                   style="width: 70px; height: 19px; border-style: solid; border-width: 0; background-image: url('image/sendmail.gif')"
                   onclick="composeClick()">
        </div>

    </div>

</form>

</body>

</html>