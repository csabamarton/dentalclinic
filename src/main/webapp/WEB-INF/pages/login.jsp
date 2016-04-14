<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page session="true"%>
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
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.15);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.15);
                box-shadow: 0 1px 2px rgba(0,0,0,.15);
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



<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />



</head>
<body onload='document.loginForm.username.focus();'>
<!--
	<h1>Spring Security Custom Login Form (XML)</h1>



		<h3>Login with Username and Password</h3>
-->

<!--  
		<form name='loginForm' action="<c:url value='/j_spring_security_check' />" method='POST'>

			<table>
				<tr>
					<td>User:</td>
					<td><input type='text' name='username'></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type='password' name='password' /></td>
				</tr>
				<tr>
					<td colspan='2'><input name="submit" type="submit" value="submit" /></td>
				</tr>
			</table>

			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			

		</form>
-->		
	</div>


 <div class="container">
 
 
 		<c:if test="${not empty error}">

			<div class="alert alert-danger">
  				<strong>ERROR</strong> ${error}
  			</div>

		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
			
						<div class="alert alert-danger">
  				<strong>ERROR</strong> ${error}
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
            
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
          </form>
        </div>
      </div>
    </div>
  </div> <!-- /container -->



<spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJs" />
<script src="${bootstrapJs}"></script>

<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> -->

	<spring:url value="/resources/js/jquery-1.10.2.min.js" var="jqueryJS" />
    <script type="text/javascript" src="${jqueryJS}"></script>

</body>
</html>