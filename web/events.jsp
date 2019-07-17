<%-- 
    Document   : events
    Created on : 16-Jul-2019, 02:32:01
    Author     : ezraalamsyah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>HOPE | Events</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>

	<!--web-fonts-->
	<link href="//fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500|Gaegu:700" rel="stylesheet">
	<!--//web-fonts-->

	<!-- Style-sheets -->
	<!-- Bootstrap Css -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<!-- Bootstrap Css -->
	<!-- Common Css -->
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!--// Common Css -->
	<!-- Nav Css -->
	<link rel="stylesheet" href="css/style4.css">
	<!--// Nav Css -->
	<!-- Fontawesome Css -->
	<link href="css/fontawesome-all.css" rel="stylesheet">
        <link rel="stylesheet" href="css/custom-style.css">
	<!--// Fontawesome Css -->
	<!--// Style-sheets -->

	<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/aos.css">
    <link rel="stylesheet" href="css/ionicons.min.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">


</head>

<body>

    <%@page import="Controller.EventsDAO,Model.Events,java.util.*"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<!-- header -->
	<header>
		<!-- nav -->
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
		<div class="container">

			<!-- logo -->
			<div id="logo">
				<a class="navbar-brand" href="index.jsp">HOPE</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        		<span class="oi oi-menu"></span>Menu
          </button>
			</div>	
			<!-- //logo -->

			<!-- list -->
			<div class="collapse navbar-collapse" id="ftco-nav">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a href="index.jsp" class="nav-link">Home</a></li>
          	<li class="nav-item"><a href="addDonationForm.jsp" class="nav-link">Donate</a></li>
          	<li class="nav-item active"><a href="events.jsp" class="nav-link">Events</a></li>
         		<li class="nav-item"><a href="contactForm.jsp" class="nav-link">Contact Us</a></li>
					</ul>
			</div>
			<!-- list -->

		</div>	
	</nav>
	<!-- nav -->
</header>
<!-- header -->

<!-- img banner -->
<div class="block-31 slider-item overlay" data-stellar-background-ratio="0.5"
    style="background-image: url('images/bg06.jpg');">
    <div class="container">
      <div class="row slider-text align-items-center justify-content-center">
        <div class="col-lg-9 text-center col-sm-12 element-animate">
          <h2 class="please">Help Children Give Them a Better Life</h2>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- //img banner -->

	<!-- isi card -->
    <%
        List<Events> listEvents = EventsDAO.getAllRecordsE();
        request.setAttribute("listEvents", listEvents);
    %>
    
  <c:forEach begin ="0" end="2" items="${listEvents}" var="x">  
  <div class="featured-section overlay-color-2 custom-overlay-color-${x.getIdE()}" style="background-image: url('${x.getImageE()}');">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <img src="${x.getImageE()}" alt="${x.getAltE()}" class="img-fluid" style="width: 535px;height: 315px;">
        </div>
        <div class="col-md-6" style="text-align: center;padding-left: 120px;">
          <span class="featured-text d-block mb-3">Events Terkini</span>
              <h2>${x.getNamaE()}</h2>
              <p class="mb-3">${x.getCaptE()}</p>
              <p><a href="addDonationForm.jsp" class="btn btn-success btn-hover-white py-3 px-5">Donasi Sekarang</a></p>
        </div>
      </div>
    </div>
 </div>
 </c:forEach>

<!-- //events -->

	<!-- Required common Js -->
	<script src='js/jquery-2.2.3.min.js'></script>
	<!-- //Required common Js -->

	<!-- Js for bootstrap working-->
	<script src="js/bootstrap.min.js"></script>
	<!-- //Js for bootstrap working -->

</body>
</html>