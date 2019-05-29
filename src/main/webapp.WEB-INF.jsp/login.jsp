<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="language"
       value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}"
       scope="session"/>
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="message"/>

<link rel="stylesheet" type="text/css" href="../resources/static/styles.css">

<!DOCTYPE html>
<html lang="${language}">
<head>
    <title><fmt:message key="index.title"/></title>
</head>

<body>
<br>
<br>
<form>
    <label for="language"></label>
    <h3 align="right" style="color:#FF4500">
        <fmt:message key="language"/><select id="language" name="language"
                                          onchange="submit()">
        <option value="en" ${language == 'en' ? 'selected' : ''}>English</option>
        <option value="uk_UA" ${language == 'uk_UA' ? 'selected' : ''}>Ukrainian</option>
    </select></h3>
</form>
<br>
<br>
<h1 align="center" style="color:#0000cb"><fmt:message key="index.title"/></h1>
<br>
<br>
<div class="menu-container">
    <h2 align="center" style="color:#000000"><fmt:message key="index.body"/></h2>
</div>

<div class="container">
    <div class="buttons" align="center" style="text-align:center;">
        <a href="http://localhost:8080/TaxDeclarationFilling/">
            <button type="button" class="choose_button" id="slide_start_button">
                <fmt:message key="index.button.fillDeclaration"/></button>
        </a>
        <a href="http://localhost:8080/declaration_check/">
            <button type="button" class="choose_button" id="slide_stop_button" >
                <fmt:message key="index.button.getInfoById"/></button>
        </a>
        <a href="http://localhost:8080/admin/">
            <button type="button" class="choose_button" id="admin_page_button" >
                <fmt:message key="index.button.toadminpage"/></button>
        </a>
    </div>
</div>

</body>
</html>