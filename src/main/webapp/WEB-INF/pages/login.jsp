<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page session="true" %>
<html>
<head>
    <title>Login Page</title>


    <style type="text/css">
        /* Override some defaults */
        html, body {
            background-color: #eee;
        }

        body {
            padding-top: 40px;
        }

        .container {
            width: 300px;
        }

        /* The white background content wrapper */
        .container > .content {
            background-color: #fff;
            padding: 20px;
            margin: 0 -20px;
            -webkit-border-radius: 10px 10px 10px 10px;
            -moz-border-radius: 10px 10px 10px 10px;
            border-radius: 10px 10px 10px 10px;
            -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .15);
            -moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .15);
            box-shadow: 0 1px 2px rgba(0, 0, 0, .15);
        }

        .login-form {
            margin-left: 65px;
        }

        legend {
            margin-right: -50px;
            font-weight: bold;
            color: #404040;
        }

    </style>


    <spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCss"/>
    <link href="${bootstrapCss}" rel="stylesheet"/>


</head>
<body onload='document.loginForm.username.focus();'>


<div class="container">


    <c:if test="${not empty error}">
        <div class="alert alert-danger">
            <strong>ERROR</strong> ${error}
        </div>
    </c:if>

    <c:if test="${param.logout != null}">
        <div class="alert alert-success">
            <p>You have been logged out successfully.</p>
        </div>
    </c:if>

    <div class="content">
        <div class="row">
            <div class="login-form">
                <h2>Login</h2>
                <form name='loginForm' action="<c:url value='/j_spring_security_check' />" method='POST'>
                    <fieldset>
                        <div class="clearfix">
                            <input type="text" placeholder="Username" name='username'>
                        </div>
                        <div class="clearfix">
                            <input type="password" placeholder="Password" name='password'>
                        </div>
                        <button class="btn primary" type="submit">Sign in</button>
                    </fieldset>

                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
            </div>
        </div>
    </div>
</div> <!-- /container -->


<spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJs"/>
<script src="${bootstrapJs}"></script>

<spring:url value="/resources/js/jquery-1.12.3.min.js" var="jqueryJS"/>
<script type="text/javascript" src="${jqueryJS}"></script>

</body>
</html>