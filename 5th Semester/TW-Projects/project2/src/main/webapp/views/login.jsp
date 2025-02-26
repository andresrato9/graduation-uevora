<%@ page language="java" session="true"
         contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Login - Galaxy Runners</title>
    <link rel="stylesheet" href="../static/css/reseter.css">
    <link rel="stylesheet" href="../static/css/index.css">
    <link rel="icon" href="../static/img/galaxy.png">
    <link href="https://fonts.googleapis.com/css2?family=Lobster&family=Rowdies&display=swap" rel="stylesheet">
</head>
<body>
    <div id="wrapper">
        <div id="content">
            <a class="back-button" href="/">< Back to menu</a>
            <br>
            <div class="page-content">
                <div class="form-container">
                    <h2>Sign in</h2>
                    <div class="info"><c:if test="${not empty error}">
                        <div class="error-info">${error}</div>
                    </c:if></div>
                    <form class="form" name='loginForm'
                          action="<c:url value='j_spring_security_check' />" method='POST'>
                        <p class="input-label">User</p>
                        <input type='text' name='username' value=''>
                        <p class="input-label">Password</p>
                        <input type='password' name='password'/>
                        <button name="submit" type="submit">Sign in</button>
                        <input type="hidden" name="${_csrf.parameterName}"
                               value="${_csrf.token}"/>
                    </form>
                </div>
            </div>
        </div>
        <div id="cover"></div>
    </div>
</div>
    <div id="footer">
        <div id="footer-content">
            <div id="footer-left">
                <div class="footer-subtext">
                    <p>Official</p>
                    <p>Sponsors</p>
                </div>
                <div class="horizontal-divider"></div>
                <div class="footer-image">
                    <img src="../static/img/uevora.png" alt="uévora" height="100%">
                </div>
                <div class="footer-image">
                    <img src="../static/img/nasa.png" alt="nasa" height="100%">
                </div>
                <div class="footer-image">
                    <img src="../static/img/prozis.png" alt="prozis" height="100%">
                </div>
                <div class="footer-image">
                    <img src="../static/img/spacex.png" alt="spacex" height="80%">
                </div>
            </div>
            <div id="footer-center">
                <a href="/about_us">
                    <button>ABOUT US</button>
                </a>
            </div>
            <div id="footer-right">
                <div class="foot">
                    <p class="footer-rights">João Rouxinol #44451</p>
                    <p class="footer-rights">André Rato #45517</p>
                </div>
                <img class="logo-mnlda" src="../static/img/mnlda-logo.png" alt="mnlda logo" height="40px">
                <div class="horizontal-divider"></div>
                <div class="footer-subtext">
                    <p>All rights</p>
                    <p>Reserverd</p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>