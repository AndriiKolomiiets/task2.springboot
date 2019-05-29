<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
<h1 align="center" style="color:#0000cb"><fmt:message key="admin.header"/></h1>
<br>
<br>
<div align="center">
    <fieldset class="flex-container" style="width: 600px; height: 100px;">

        <form id="all_payers_stat" class="admin_form" action="http://localhost:8080/all_payers_servlet/">
            <div align="center">
                <h3><fmt:message key="admin.getallpayers"/></h3>
                <input type="submit" class="sub_button" value=<fmt:message key="admin.button.getallpayers"/>>

            </div>
        </form>
    </fieldset>
</div>

<br>
<div align="center">
    <fieldset class="flex-container" style="width: 600px; height: 100px;">
        <div align="center">
            <form class="admin_form" action="http://localhost:8080/biggest_income_servlet/">
                <div align="center">
                    <h3><fmt:message key="admin.getbiggestincome"/></h3>
                    <input type="submit" class="sub_button" value=<fmt:message key="admin.button.getallpayers"/>>

                </div>
            </form>
        </div>
    </fieldset>
</div>
<br>
<div align="center">
    <fieldset class="flex-container" style="width: 600px; height: 180px;">

        <form name="conditionForm" class="admin_form" action="http://localhost:8080/salary_condition_servlet/"
              onsubmit=" return validateForm()">
            <h3><fmt:message key="admin.payersbycondition"/></h3>
            <br>
            <fmt:message key="admin.conditions.min"/>
            <input type="number" name="min" pattern="[0-9]{1,8}"/><br>
            <fmt:message key="admin.conditions.max"/>
            <input type="number" name="max" pattern="[0-9]{1,8}"/><br>
            <br>
            <div align="center">
                <input type="submit" onclick="return validateForm()" class="sub_button" value=<fmt:message
                        key="check.submitButton"/>>
                <input type="reset" class="sub_button" value=<fmt:message key="check.refreshButton"/>>
            </div>
        </form>
        <script> function validateForm() {
            var min = document.forms["conditionForm"]["min"].value;
            var max = document.forms["conditionForm"]["max"].value;
            if (min === "") {
                window.alert("<fmt:message key="admin.min.validation.message"/>");
                // min.focus();
                return false;
            }
            if (max === "") {
                window.alert("<fmt:message key="admin.max.validation.message"/>");
                // max.focus();
                return false;
            }
            if (min > max) {
                alert("<fmt:message key="admin.validation.message"/>");
                return false;
            }
            return true;
        }  </script>

    </fieldset>
</div>
</body>
</html>