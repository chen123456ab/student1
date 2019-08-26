<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="easyUI/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="easyUI/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="easyUI/css/demo.css">
    <script src="jquery/jquery-1.8.3.js"></script>
    <script src="jquery/jquery.easyui.min.js"></script>
    <script language="JavaScript">
        $(function () {
            $("#but1").click(function () {
                $('#win').window({
                    width:300,
                    height:100,
                    modal:true
                });
            });
            $("#but2").click(function () {
                $('#dg').datagrid({
                    url:'/con/show1',
                    columns:[[
                        {field:'id',title:'编号',width:100},
                        {field:'name',title:'姓名',width:100},
                        {field:'age',title:'年龄',width:100},
                        {field:'gender',title:'性别',width:100},
                        {field:'telephone',title:'电话',width:100},
                        {field:'email',title:'邮箱',width:100},
                        {field:'classid',title:'班级',width:100}
                    ]]
                });
            })
        })
    </script>
</head>
<body>
<input type="button" value="添加学生" id="but1">
<div id="win"></div><br>
<input type="button" value="查询学生" id="but2">
<table id="dg"></table>
<%--<table class="easyui-datagrid" style="width:700px;height:250px"
       data-options="url:'/con/show1',fitColumns:true,singleSelect:true">
    <thead>
    <tr>
        <th data-options="field:'id',width:100">编号</th>
        <th data-options="field:'name',width:100">姓名</th>
        <th data-options="field:'age',width:100">年龄</th>
        <th data-options="field:'gender',width:100">性别</th>
        <th data-options="field:'telephone',width:200">电话</th>
        <th data-options="field:'email',width:100">邮箱</th>
        <th data-options="field:'classid',width:100">班级</th>
    </tr>
    </thead>
</table>--%>
</body>
</html>
