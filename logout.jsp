<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
    <title>New Page 1</title>
    <script language=javascript>
        function log() {
            document.location.href = "home.jsp";
        }
    </script>
</head>
<body onload="log()">
<%session.setMaxInactiveInterval(0);%>
</body>
</html>
