<%@ page contentType="text/html; charset=UTF-8" %>
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
<form>
    <label for="language"></label>
    <h3 align="right" style="color:#FF4500">
        <fmt:message key="language"/><select id="language" name="language"
                                             onchange="submit()">
        <option value="en" ${language == 'en' ? 'selected' : ''}>English</option>
        <option value="uk_UA" ${language == 'uk_UA' ? 'selected' : ''}>Ukrainian</option>
    </select></h3>
</form>
<h1 align="center" style="color:#0000cb"><fmt:message key="index.header"/></h1>

    <div align="center">
        <fieldset class="flex-container" style="width: 600px; height: 620px;">
            <form id="declaration_fill" action="/TaxDeclaration/" onsubmit="return validateForm()">
                <br>
                <fmt:message key="declaration.firstName"/>
                <input type="text" name="fn" pattern="([A-Z]{1})([a-z ]{1,14})"><br>
                <br>
                <fmt:message key="declaration.lastName"/>
                <input type="text" name="ln" pattern="([A-Z]{1})([a-z ]{1,14})"/><br>
                <br>
                <fmt:message key="declaration.taxId"/>
                <input type="text" name="ti" pattern="[0-9]{8}"/><br>
                <br>
                <fmt:message key="declaration.taxCategory"/>
                <input type="checkbox" name="tc" value="1 category">1 category
                <input type="checkbox" name="tc" value="2 category">2 category
                <input type="checkbox" name="tc" value="3 category">3 category <br>
                <br>
                <fmt:message key="declaration.regJobIncome"/>
                <input type="text" name="rJob" pattern="[0-9]{1,10}"/><br>
                <br>
                <fmt:message key="declaration.extraJobIncome"/>
                <input type="text" name="eJob" pattern="[0-9]{1,10}"/><br>
                <br>
                <fmt:message key="declaration.annualBonus"/>
                <input type="text" name="aBonus" pattern="[0-9]{1,10}"/><br>
                <br>
                <fmt:message key="declaration.benefits"/>
                <input type="text" name="benefits" pattern="[0-9]{1,10}"/><br>
                <br>
                <fmt:message key="declaration.financialAssistance"/>
                <input type="text" name="finAssist" pattern="[0-9]{1,10}"/><br>
                <br>
                <fmt:message key="declaration.foreignTransactions"/>
                <input type="text" name="transactions" pattern="[0-9]{1,10}"/><br>
                <br>
                <fmt:message key="declaration.propertySales"/>
                <input type="text" name="propSale" pattern="[0-9]{1,10}"/><br>
                <br>
                <fmt:message key="declaration.giftedMoney"/>
                <input type="text" name="giftMoney" pattern="[0-9]{1,10}"/><br>
                <br>
                <fmt:message key="declaration.giftedProperty"/>
                <input type="text" name="giftProp" pattern="[0-9]{1,10}"/><br>
                <br>
                <fmt:message key="declaration.declarationYear"/>
                <input type="text" name="decDate" pattern="[0-9]{1,10}"/><br>
                <br>
                <input type="submit" class="sub_button" value=<fmt:message key="declaration.submitButton"/>>
                <input type="reset" class="sub_button" value=<fmt:message key="declaration.refreshButton"/>>

            </form>
        </fieldset>
    </div>

<script> function validateForm() {
    var fname = document.forms["declaration_fill"]["fn"].value;
    var lname = document.forms["declaration_fill"]["ln"].value;
    var taxId = document.forms["declaration_fill"]["ti"].value;
    var taxCat = document.forms["declaration_fill"]["tc"].value;
    var rJob = document.forms["declaration_fill"]["rJob"].value;
    var eJob = document.forms["declaration_fill"]["eJob"].value;
    var annBonus = document.forms["declaration_fill"]["aBonus"].value;
    var benefits = document.forms["declaration_fill"]["benefits"].value;
    var finAssist = document.forms["declaration_fill"]["finAssist"].value;
    var transactions = document.forms["declaration_fill"]["transactions"].value;
    var propSale = document.forms["declaration_fill"]["propSale"].value;
    var giftMoney = document.forms["declaration_fill"]["giftMoney"].value;
    var giftProp = document.forms["declaration_fill"]["giftProp"].value;
    var decDate = document.forms["declaration_fill"]["decDate"].value;
    if (fname === "") {
        window.alert("<fmt:message key="admin.general.validation.message"/>");
        return false;
    }
    if (lname === "") {
        window.alert("<fmt:message key="admin.general.validation.message"/>");
        return false;
    }
    if (taxId === "") {
        window.alert("<fmt:message key="admin.general.validation.message"/>");
        return false;
    }

    if (taxCat === "") {
        window.alert("<fmt:message key="admin.general.validation.message"/>");
        return false;
    }
    if (rJob === "") {
        window.alert("<fmt:message key="admin.general.validation.message"/>");
        return false;
    }
    if (eJob === "") {
        window.alert("<fmt:message key="admin.general.validation.message"/>");
        return false;
    }
    if (annBonus === "") {
        window.alert("<fmt:message key="admin.general.validation.message"/>");
        return false;
    }
    if (benefits === "") {
        window.alert("<fmt:message key="admin.general.validation.message"/>");
        return false;
    }
    if (finAssist === "") {
        window.alert("<fmt:message key="admin.general.validation.message"/>");
        return false;
    }
    if (transactions === "") {
        window.alert("<fmt:message key="admin.general.validation.message"/>");
        return false;
    }
    if (propSale === "") {
        window.alert("<fmt:message key="admin.general.validation.message"/>");
        return false;
    }
    if (giftMoney === "") {
        window.alert("<fmt:message key="admin.general.validation.message"/>");
        return false;
    }
    if (giftProp === "") {
        window.alert("<fmt:message key="admin.general.validation.message"/>");
        return false;
    }
    if (decDate === "") {
        window.alert("<fmt:message key="admin.general.validation.message"/>");
        return false;
    }

    return true;
}  </script>
</body>
</html>
