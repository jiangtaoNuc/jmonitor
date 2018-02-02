<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <%@ include file="common.jsp" %>
    <title>主机管理</title>
<script type="application/javascript">

</script>
</head>

<body>
<!-- 导航栏 -->
<nav class="navbar navbar-inverse" role="navigation">
    <div class="container-fluid">
        <ul class="nav navbar-nav">
            <li style="width: 100px"><a href="/jmonitor/monitorData/getAllRecentData.do">总览</a></li>
            <li ><a href="/jmonitor/monitorMachine/getAllRecentData.do">主机信息</a></li>
            <li><a href="/jmonitor/monitorData/getCpu.do">CPU</a></li>
            <li><a href="#">交换区</a></li>
            <li><a href="#">IO</a></li>
            <li><a href="#">磁盘</a></li>
            <li><a href="#">进程</a></li>
            <li><a href="#">kafka集群</a></li>
            <li><a href="#">木兰调度</a></li>
            <li><a href="#">日志监控</a></li>
            <li class="active" style="float: right" class="dropdown">
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


<table class="table table-striped">
    <caption></caption>
    <thead>
    <tr>
        <th  style="text-align: center">主机IP</th>
        <th style="text-align: center">添加时间</th>
        <th style="text-align: center">修改时间</th>
        <th style="text-align: center">主机标签</th>
        <th style="text-align: center">监控状态</th>
        <th style="text-align: center">操作</th>
    </tr>

    </thead>
    <tbody>
    <c:forEach items="${monitorHosts}" var="monitorHost">
    <tr>
        <td style="text-align:center;"> <c:out value="${monitorHost.ip}"/></td>
        <td style="text-align:center;"><c:out value="${monitorHost.add_time}"/></td>
        <td style="text-align:center;"> <c:out value="${monitorHost.modify_time}"/></td>
        <c:if test="${monitorHost.tags_id == 1}">
            <td style="text-align:center;"><c:out value="采集平台"/></td>
        </c:if>
        <c:if test="${monitorHost.tags_id == 2}">
            <td style="text-align:center;"><c:out value="接口机"/></td>
        </c:if>
        <c:if test="${monitorHost.tags_id == 3}">
            <td style="text-align:center;"><c:out value="应用服务器"/></td>
        </c:if>
        <c:if test="${monitorHost.status == 1}">
            <td style="text-align:center;color: #2aabd2"><c:out value="监控中"/></td>
        </c:if>
        <c:if test="${monitorHost.status == 0}">
            <td style="text-align:center; color: red"><c:out value="未监控"/></td>
        </c:if>
        <td style="text-align:center;">
            <a href="#" class="btn btn-primary btn-xs" role="button" >修改</a>
            <c:if test="${monitorHost.status == 0}">
                <a href="#" class="btn btn-primary btn-xs" role="button" >部署</a>
            </c:if>
            <c:if test="${monitorHost.status == 1}">
                <a href="#" class="btn btn-primary btn-xs disabled" role="button" >部署</a>
            </c:if>

        </td>
    </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>