<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="selectedLocale" value="${param.lang}" />

<fmt:setLocale value="${selectedLocale}" />
<fmt:setBundle basename="com.resource.message" />

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>JSTL Internationalization (i18n)</title>
</head>
<body>
<br><br>	
	<fmt:message key="label.firstname" />, ${param.firstname} 
	<br><br>

	<fmt:message key="label.lastname" />,${param.lastname}
	<br><br>

	<fmt:message key="label.gender" />, ${param.gender}
	<br><br>

	${param.lang}
</body>
</html>