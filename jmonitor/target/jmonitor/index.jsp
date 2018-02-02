<html>
<head>
<meta charset="utf-8">
<!-- 引入文件 -->
<link href="css/bootstrap-theme.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/echarts.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/npm.js"></script>
</head>

<body>
<form action="/jmonitor/monitorData/getAllRecentData.do" method="post" id="index"></form>
<s:if test="commodities==null">
    <script>
        window.onload = function () {
            document.getElementById("index").submit();
        }
    </script>
</s:if>

</body>

</html>
