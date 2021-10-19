<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="selectedLocale" value="${not empty param.newLocale ? param.newLocale : pageContext.request.locale}" />

<fmt:setLocale value="${selectedLocale}" />
<fmt:setBundle basename="com.resource.message" />

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>JSTL Internationalization (i18n)</title>
</head>
<body>

	<h1>JSTL i18n</h1>

	<a href="jstl-i18n.jsp?newLocale=en_US">English (US)</a>
	|
	<a href="jstl-i18n.jsp?newLocale=de_DE">Germany (DE)</a>


	<form action= "Output.jsp" method="post">
	<fmt:message key="label.firstname" />, :<input type = "text" name="firstname"><br><br>
	<fmt:message key="label.lastname" />, :<input type = "text" name="lastname"><br><br>
	<fmt:message key="label.gender" />, :<input type="radio" name="gender" value="male"><fmt:message key="label.male" /> <input type="radio" name="gender" value="female"><fmt:message key="label.female" /><br><br>
	<fmt:message key="label.dob" />, :<input type="date" name="dob"><br><br>
	<fmt:message key="label.language" />, :
	<select name="lang">
	<option value="en_US"><fmt:message key="label.english" /> </option>
	<option value="de_DE"><fmt:message key="label.german" /> </option>
	</select>
	<br><br>
	<input type="submit">
	</form>
	
	<br><br>	
	<fmt:message key="label.firstname" />, ${param.firstname} 
	<br><br>

	<fmt:message key="label.lastname" />,${param.lastname}
	<br><br>

	<fmt:message key="label.greeting" />, ${param.firstname} ${param.lastname}
	<br><br>

	Selected Language: ${selectedLocale}

	<br><hr><br>

	<c:set var="amount" value="5702312312.123" />

	Currency: <fmt:formatNumber value="${amount}" type="currency" />

	<br><br>

	Grouping Separators: <fmt:formatNumber value="${amount}" groupingUsed="true" />

	<br><hr>

	<c:set var = "now" value = "<%=new java.util.Date()%>" />
      <p>Date in Current Zone: <fmt:formatDate value = "${now}" 
         type = "both" timeStyle = "long" dateStyle = "long" /></p>
      <p>Change Time Zone to GMT-8</p>
      <fmt:setTimeZone value = "GMT+8" />
      <p>Date in Changed Zone: <fmt:formatDate value = "${now}" 
         type = "both" timeStyle = "long" dateStyle = "long" /></p>

</body>
</html>