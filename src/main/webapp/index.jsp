<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <script  src="jquery/jquery-1.10.2.min.js"></script>
</head>
<body>
<h2>Hello World!</h2>
<h3><a href="/con/show">同步展示</a></h3>
<input type="button" value="异步展示" id="yb" >
<div id="student"></div>
</body>
<script>
    $("#yb").click(function () {
        $.ajax({
            type: "post",
            url: "/con/show1",
            dataType: "json",
            success: function (data) {
            var table="<table border='1'cellpadding='10' cellspacing='0'>"
                table=table+"<tr><td>编号</td><td>性别</td><td>年龄</td><td>性别</td><td>电话</td><td>邮箱</td><td>班级</td></tr>"
                for(var i=0;i<data.length;i++){
                    var s=data[i]
                    table=table+"<tr><td>"+s.id+"</td><td>"+s.name+"</td><td>"+s.age+"</td><td>"+s.gender+"</td><td>"+s.telephone+"</td><td>"+s.email+"</td><td>"+s.classid+"</td></tr>"
                }
                table=table+"</table>";
                $("#student").html(table)
            }
        })
    })
</script>
</html>
