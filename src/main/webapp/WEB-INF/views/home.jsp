<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page import="com.zeuqsav.myapp.PruebaFruta" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<c:forEach var="i" begin="1" end="5" step="1" >
<c:out value="${i}" /><br/>

<c:catch var= "errorMsg">
	<c:if test="${i <= 2}">
		<c:out value ="menor igual a 2"/>
	</c:if>
	<c:if test="${i > 2}">
		<c:out value ="mayor igual a 2"/>
	</c:if>
</c:catch>
<p>${errorMsg} </p>

</c:forEach>
<% 
pageContext.setAttribute("frutasBean", new PruebaFruta());
%>
<c:forEach var="MV" items="${frutasBean.frutasVarias}">
<p>
${MV}
</p>
</c:forEach>

</body>
</html>
