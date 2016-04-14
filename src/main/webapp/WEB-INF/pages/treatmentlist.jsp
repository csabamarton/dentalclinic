<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<%@include file="/WEB-INF/pages/template/headerscripts.jsp" %>

<body>

<%@include file="/WEB-INF/pages/template/header.jsp" %>

<div class="container">

    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading">Check our treatment list</div>
        <div class="panel-body">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc et metus quis turpis
                ultrices dignissim a et ipsum. Duis vitae iaculis odio. Nam id libero et sem blandit
                placerat. Quisque leo urna, sagittis non feugiat dictum, ultricies at dolor.
                Maecenas laoreet et sem vitae luctus. Cras efficitur urna sapien, eu luctus nisi
                condimentum eget. </p>
        </div>

        <!-- List group -->
        <ul class="list-group">
            <c:forEach var="treatment" items="${headTreatments}">
                <a class="list-group-item" href="/treatment/${treatment.treatmentId}"
                   role="button">${treatment.treatmentName}<p class="pull-right">$${treatment.price}</p></a>

            </c:forEach>
        </ul>
    </div>

   <%@include file="/WEB-INF/pages/template/footer.jsp"%>

</div><!-- /.container -->


<%@include file="/WEB-INF/pages/template/footerscripts.jsp"%>

</body>
</html>
