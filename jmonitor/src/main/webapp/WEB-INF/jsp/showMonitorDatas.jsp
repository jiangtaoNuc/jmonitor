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
            <li class="active" style="width: 100px"><a href="/jmonitor/monitorData/getAllRecentData.do">总览</a></li>
            <li ><a href="/jmonitor/monitorMachine/getAllRecentData.do">主机信息</a></li>
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
        <th colspan="3" style="text-align: center">CPU/%</th>
        <th colspan="4" style="text-align: center">内存/M</th>
        <th colspan="4" style="text-align: center">交换区/M</th>
        <th colspan="2" style="text-align: center">磁盘IO</th>
        <th colspan="3" style="text-align: center">负载</th>
    </tr>
    <tr>
        <th></th>
        <th>用户占比</th><th>系统占比</th><th>空闲占比</th>
        <th>总量</th><th>已使用</th><th>空闲内存</th><th>缓存</th>
        <th>总量</th><th>已使用</th><th>空闲内存</th><th>缓存</th>
        <th>WRITE</th><th>READ</th>
        <th>负载/分</th><th>负载/5分</th><th>负载/15分</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${monitorDatas}" var="monitorData">
        <tr>
            <td><c:out value="${monitorData.ip}"/></td>

            <c:if test="${monitorData.cpu_user >= 70}">
                <td style="text-align:center;background-color: #ff5e48">
                    <c:out value="${monitorData.cpu_user}"/>
                </td>
            </c:if>
            <c:if test="${monitorData.cpu_user < 70}">
                <td><c:out value="${monitorData.cpu_user}"/></td>
            </c:if>

            <c:if test="${monitorData.cpu_sys >= 70}">
                <td style="text-align:center;background-color: #ff5e48">
                    <c:out value="${monitorData.cpu_sys}"/>
                </td>
            </c:if>
            <c:if test="${monitorData.cpu_sys < 70}">
                <td><c:out value="${monitorData.cpu_sys}"/></td>
            </c:if>
            <td><c:out value="${monitorData.cpu_free}"/></td>

            <td><c:out value="${monitorData.memory_total}"/></td>
            <c:if test="${monitorData.memory_total * 0.6 <= monitorData.memory_use}">
                <td style="text-align:center;background-color: #ff5e48">
                    <c:out value="${monitorData.memory_use}"/>
                </td>
            </c:if>
            <c:if test="${monitorData.memory_total * 0.6 > monitorData.memory_use}">
                <td><c:out value="${monitorData.memory_use}"/></td>
            </c:if>
            <td><c:out value="${monitorData.memory_free}"/></td>
            <td><c:out value="${monitorData.memory_buffer}"/></td>

            <td><c:out value="${monitorData.swap_total}"/></td>
            <td><c:out value="${monitorData.swap_use}"/></td>
            <td><c:out value="${monitorData.swap_free}"/></td>
            <td><c:out value="${monitorData.swap_cache}"/></td>

            <td><c:out value="${monitorData.io_write}"/></td>
            <td><c:out value="${monitorData.io_read}"/></td>

            <c:if test="${monitorData.load_01 >=25}">
                <td style="text-align:center;background-color: #ff5e48">
                    <c:out value="${monitorData.load_01}"/>
                </td>
            </c:if>
            <c:if test="${monitorData.load_01 <25}">
                <td><c:out value="${monitorData.load_01}"/></td>
            </c:if>

            <c:if test="${monitorData.load_05 >=25}">
                <td style="text-align:center;background-color: #ff5e48">
                    <c:out value="${monitorData.load_05}"/>
                </td>
            </c:if>
            <c:if test="${monitorData.load_05 <25}">
                <td><c:out value="${monitorData.load_05}"/></td>
            </c:if>

            <c:if test="${monitorData.load_05 >=25}">
                <td style="text-align:center;background-color: #ff5e48">
                    <c:out value="${monitorData.load_15}"/>
                </td>
            </c:if>
            <c:if test="${monitorData.load_05 <25}">
                <td><c:out value="${monitorData.load_15}"/></td>
            </c:if>

        </tr>
    </c:forEach>
    </tbody>
</table>


</body>
</html>