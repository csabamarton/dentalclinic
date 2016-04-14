<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<%@include file="/WEB-INF/pages/template/headerscripts.jsp" %>

<body id="home">

<%@include file="/WEB-INF/pages/template/header.jsp" %>

<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide" src="<c:url value="/resources/images/dental-care.jpg" />"
                 alt="First slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Sedlmayer Dental</h1>
                    <p><spring:message code="landing.slider.text.1"/></p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Book up today</a>
                    </p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide" src="<c:url value="/resources/images/Dental-Health.jpg" />"
                 alt="Second slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Another example headline.</h1>
                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit
                        non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies
                        vehicula ut id elit.</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide" src="<c:url value="/resources/images/happy-paci.jpg" />"
                 alt="Third slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>One more for good measure.</h1>
                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit
                        non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies
                        vehicula ut id elit.</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <c:forEach var="treatment" items="${headTreatments}">
            <div class="col-lg-4">
                <img class="img-circle"
                     src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw=="
                     alt="Generic placeholder image" width="140" height="140">
                <h2>${treatment.treatmentName}</h2>
                <p>${treatment.description}</p>
                <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
            </div>
            <!-- /.col-lg-4 -->
        </c:forEach>

        <%@include file="/WEB-INF/pages/template/footer.jsp" %>

    </div><!-- /.container -->
</div>
<%@include file="/WEB-INF/pages/template/footerscripts.jsp" %>

</body>
</html>


