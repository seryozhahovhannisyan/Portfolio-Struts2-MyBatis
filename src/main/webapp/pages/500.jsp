<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>::Error Page::</title>
</head>
<body>
<s:if test="#session.message != null">
    <div class="msg">
        <s:property value="#session.message"/>
        <s:set name="message" value="null" scope="session"/>
    </div>
    <div>
        <a href="<%=request.getContextPath()%>">Go to main page</a>
    </div>
</s:if>
<s:else>
    <%-- redirects to the main page, as there is no message --%>
    <% response.sendRedirect(request.getContextPath()); %>
</s:else>
</body>
</html>