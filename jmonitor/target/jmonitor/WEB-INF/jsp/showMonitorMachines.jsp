<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <%@ include file="common.jsp" %>
    <title>系统总览</title>
<script type="application/javascript">

</script>
</head>

<body>
<!-- 导航栏 -->
<nav class="navbar navbar-inverse" role="navigation">
    <div class="container-fluid">
        <ul class="nav navbar-nav">
            <li style="width: 100px"><a href="/jmonitor/monitorData/getAllRecentData.do">总览</a></li>
            <li class="active"><a href="/jmonitor/monitorMachine/getAllRecentData.do">主机信息</a></li>
            <li><a href="/jmonitor/monitorData/getCpu.do">CPU</a></li>
            <li><a href="#">交换区</a></li>
            <li><a href="#">IO</a></li>
            <li><a href="/jmonitor/monitorDisk/getRecent3HDiskInfo.do">磁盘</a></li>
            <li><a href="#">进程</a></li>
            <li><a href="#">kafka集群</a></li>
            <li><a href="#">木兰调度</a></li>
            <li><a href="#">日志监控</a></li>
            <li style="float: right" class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    管理 <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="/jmonitor/monitorHost/getAll.do">主机管理</a></li>
                </ul>
            </li>
        </ul>
    </div>
</nav>

<table class="table table-bordered table-hover">
    <caption>时间</caption>
    <thead>
    <tr>
        <th  style="text-align: center">主机IP</th>
        <th style="text-align: center">MAC地址</th>
        <th style="text-align: center">CPU</th>
        <th style="text-align: center">内存/G</th>
        <th style="text-align: center">交换区/G</th>
        <th style="text-align: center">磁盘空间/T</th>
        <th style="text-align: center">更新时间</th>

    </tr>
    </thead>
    <tbody>
    <c:forEach items="${monitorMachines}" var="monitorMachine">
        <tr>
            <td><c:out value="${monitorMachine.ip}"/></td>
            <td><c:out value="${monitorMachine.mac}"/></td>
            <td><c:out value="${monitorMachine.cpu}"/></td>
            <td><c:out value="${monitorMachine.memory}"/></td>
            <td><c:out value="${monitorMachine.swap}"/></td>
            <td><c:out value="${monitorMachine.storage}"/></td>
            <td><c:out value="${monitorMachine.add_time}"/></td>

        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>