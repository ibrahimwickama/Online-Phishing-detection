<html>
<head>
    <title>Forget</title>
    <!--mstheme-->
    <link rel="stylesheet" href="Img/error/blan1011.css">
    <meta name="Microsoft Theme" content="blank 1011">
    <script language="JavaScript">
        <!--
        function FP_swapImg() {//v1.0
            var doc = document, args = arguments, elm, n;
            doc.$imgSwaps = [];
            for (n = 2; n < args.length;
                 n += 2) {
                elm = FP_getObjectByID(args[n]);
                if (elm) {
                    doc.$imgSwaps[doc.$imgSwaps.length] = elm;
                    elm.$src = elm.src;
                    elm.src = args[n + 1];
                }
            }
        }

        function FP_preloadImgs() {//v1.0
            var d = document, a = arguments;
            if (!d.FP_imgs) d.FP_imgs = [];
            for (var i = 0; i < a.length; i++) {
                d.FP_imgs[i] = new Image;
                d.FP_imgs[i].src = a[i];
            }
        }

        function FP_getObjectByID(id, o) {//v1.0
            var c, el, els, f, m, n;
            if (!o)o = document;
            if (o.getElementById) el = o.getElementById(id);
            else if (o.layers) c = o.layers; else if (o.all) el = o.all[id];
            if (el) return el;
            if (o.id == id || o.name == id) return o;
            if (o.childNodes) c = o.childNodes;
            if (c)
                for (n = 0; n < c.length; n++) {
                    el = FP_getObjectByID(id, c[n]);
                    if (el) return el;
                }
            f = o.forms;
            if (f) for (n = 0; n < f.length; n++) {
                els = f[n].elements;
                for (m = 0; m < els.length; m++) {
                    el = FP_getObjectByID(id, els[n]);
                    if (el) return el;
                }
            }
            return null;
        }
        // -->
    </script>
</head>
<script>
    function check() {
        document.forms[0].action = "home.html";
        document.forms[0].submit();
    }

</script>

<body onload="FP_preloadImgs(/*url*/'Img/error/button3.jpg',/*url*/'Img/error/button4.jpg')">
<form method="post">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font
        color="#800000">
    <b><%=request.getAttribute("msg")%>
    </b></font></p>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <img border="0" id="img1" onclick="check()" src="Img/error/button2.jpg" height="20" width="100" alt="Back"
             onmouseover="FP_swapImg(1,0,/*id*/'img1',/*url*/'Img/error/button3.jpg')"
             onmouseout="FP_swapImg(0,0,/*id*/'img1',/*url*/'Img/error/button2.jpg')"
             onmousedown="FP_swapImg(1,0,/*id*/'img1',/*url*/'Img/error/button4.jpg')"
             onmouseup="FP_swapImg(0,0,/*id*/'img1',/*url*/'Img/error/button3.jpg')"
             fp-style="fp-btn: Embossed Capsule 1" fp-title="Back">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    </form>
</body>
</html>