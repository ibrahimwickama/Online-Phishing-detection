<html
        xmlns="http://www.w3.org/TR/REC-html40">
<head>
    <meta http-equiv="Content-Language" content="en-us">
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
    <title>Forget Password</title>
    <script>
        function check() {
            var id = document.forms[0].p1.value;
            var ans = document.forms[0].p3.value;
            if (id == "" || ans == "") {
                alert("Enter the Username or Password");
            }
            else if (id == "Admin" && ans == "Phising") {
                document.forms[0].action = "settings.jsp";
                document.forms[0].submit();
            }
            else {
                alert("Wrong user and password");
            }
        }
        function hom() {
            document.forms[0].action = "home.jsp";
            document.forms[0].submit();
        }
    </script>

</head>
<body background="image/theme1.gif">
<%! String s; %>
<%
    s = (String) request.getAttribute("msg");
%>
<%
    if (s == null || s == "")
        s = "";
%>
<div style="position: absolute; width: 100px; height: 100px; z-index: 4; left: 610px; top: 13px" id="layer7">
    <div style="position: absolute; width: 246px; height: 33px; z-index: 2; left: -286px; top: 124px" id="layer10">
        <div style="position: absolute; width: 100px; height: 27px; z-index: 1; left: -324px; top: -138px" id="layer11">
            <div style="position: absolute; width: 345px; height: 50px; z-index: 1; left: 247px; top: 365px"
                 id="layer12">
                <font face="Book Antiqua" color="#FF0000">
                    <b><%=s%>

                    </b></font></div>
            <input type=image src="image/hom.gif" onclick="hom()"><br>
            &nbsp;<p>&nbsp;</div>
        <u><font face="Book Antiqua" size="4" color="#008000">Login Form</font></u></div>
    <input border="0" src="image/globe1.gif" name="I5" width="86" height="83" type="image">
    <div style="position: absolute; width: 100px; height: 19px; z-index: 1; left: 4px; top: 34px" id="layer8">
        <b><font face="French Script MT" color="#00FFFF" size="5">
            <marquee width="78">Global Mail</marquee>
        </font></b></div>
    <p>&nbsp;</div>

<p>&nbsp;</p>
<p>
</p>
<div style="position: absolute; width: 465px; height: 134px; z-index: 1; left: 165px; top: 15px" id="layer1">
    <div style="position: absolute; width: 195px; height: 21px; z-index: 1; left: 164px; top: 57px" id="layer5">
        <i><b><font color="#800000" face="Bodoni MT" size="2">Connecting People
            Globally !</font></b></i></div>
    <blockquote>
        <h1 align="left"><b>
            &nbsp;<font size="7" face="Century Schoolbook" color="#800080">G</font><font size="7"
                                                                                         face="French Script MT"
                                                                                         color="#800080">lobal
            Mail </font></b></h1>
        <p align="left">&nbsp;</p>
    </blockquote>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<blockquote>
    <p>&nbsp;</p>

    <blockquote>
        <form method=post>
            <blockquote>
                <blockquote>
                    <blockquote>
                        <blockquote>
							<pre><br>
<b><font color="#000080">UserName</font></b>   <input type=text name=p1><br>

<font color="#000080"><b>Password</b></font>   <input type=password name=p3><br>&nbsp;</pre>
                        </blockquote>
                        <pre>	  	     <input type=button onclick="check()"
                                                 style="border:0px solid #FFFFFF; background-image: url('image/login1.gif')"
                                                 value="            "><br>   <br>
  
		     
</pre>
                    </blockquote>
                </blockquote>
            </blockquote>
        </form>
    </blockquote>

</blockquote>
</body>

</html>