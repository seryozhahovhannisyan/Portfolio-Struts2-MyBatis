<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, maximum-scale=1">
  <title>Freelance Template</title>
  <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet" type="text/css">
  <link href="<%=request.getContextPath()%>/css/font-awesome.css" rel="stylesheet" type="text/css">
  <link href="<%=request.getContextPath()%>/css/animate.css" rel="stylesheet" type="text/css">
</head>
<body>

<tiles:insertAttribute name="header"/>

<tiles:insertAttribute name="body"/>
<!--/Team-->
<tiles:insertAttribute name="footer"/>

<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-scrolltofixed.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.nav.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.isotope.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/wow.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/custom.js"></script>

</body>
</html>