<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="${sessionScope.lang}" />
<fmt:setBundle basename="messages" />
<!-- |_|> -->
<!doctype html>
<html lang="${cookie['lang'].value}">
<head>
<!-- Header  -->
<%@ include file="includes/header.jsp"%>
<!-- /Header  -->
</head>
<body>
<c:set var = "layout" value = "${sessionScope.layout}"/>
<!-- Menu -->
<%@ include file="includes/menu.jsp"%>
<!-- /Menu  -->
<!-- Content -->
  <main role="main" id="content" class="${layout} pt-5">  
<%@ include file="includes/content/home.jsp"%>
  </main>  
<!-- /Content  -->
<!-- Footer -->
<%@ include file="includes/footer.jsp"%>
<!-- /Footer  -->
</body>
</html>