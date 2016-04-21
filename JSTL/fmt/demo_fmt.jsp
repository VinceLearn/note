<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html" import="java.util.*"%>  
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
	<div>
		<%  
            pageContext.setAttribute("date" ,new java.util.Date());  
        %>  
		<!--用于确定区域,value表示指定区域  -->
		<fmt:setLocale value="zh_CN" />
		<!--用于设定编码,value用于指定编码  -->
		<fmt:requestEncoding value="UTF-8" />

		<!--注意： 资源文件放在WEB-INF/classes下！-->
		<!--设定资源文件,basename表示资源文件名称，不需要properties后缀，var表示设定资源文件的属性名称 . -->
		<fmt:setBundle basename="demo" var="pro" />
		<!--获得资源文件某个特定键对应的值,key用于指定键,var保存value的值,bundle表示资源文件.  -->
		<fmt:message key="monday" var="lo" bundle="${pro }" />
		<h1>${lo }</h1>

		<!-- 用于格式化数字:
			--value表示需要被格式化的值
			--var保存格式化的值
			--maxIntegerDigits用于指定整数部分的位数
			--maxFractionDigits用于指定小数部分的位数
			--groupingUsed用于指定是否每3位一个"，"分割；true或false 
		-->
		<fmt:formatNumber value="123.2345" var="num" maxIntegerDigits="2"
			maxFractionDigits="3" groupingUsed="false" />
		<span>输入:123.2345,输出:${num }</span>
		<hr>
		<!--解析数字  -->
		<fmt:parseNumber value="123.1" var="pNum" />
		<span>输入：123.1,解析:${pNum }</span>
		
		<hr>
		<!--格式化日期；
			--type表示格式化日期或时间或全部格式化:date、both、time
			--pattern表示格式化的格式
			--var保存结果
		-->
		<fmt:formatDate value="${date }" type="both" pattern="yyyy-MM-dd hh:mm:ss,SSS" var="fDate" />
		<span>${fDate }</span>
		<hr>
		<!--解析日期  -->
		<fmt:parseDate value="2015-01-01" pattern="yyyy-MM-dd" var="pDate" />
		<span>${pDate }</span>
	</div>
</body>
</html>
