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
					<a class="navbar-brand" href="index.html">HOPE</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
						<span class="oi oi-menu"></span>Menu
					</button>
				</div>	
				<!-- //logo -->

				<!-- list -->
				<div class="collapse navbar-collapse" id="ftco-nav">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
						<li class="nav-item"><a href="donate.html" class="nav-link">Donate</a></li>
						<li class="nav-item active"><a href="events.html" class="nav-link">Events</a></li>
						<li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
						<li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
					</ul>
				</div>
				<!-- list -->

			</div>	
		</nav>
		<!-- nav -->
	</header>
	<!-- header -->

	<!-- img banner -->
	<div class="block-31 slider-item overlay" data-stellar-background-ratio="0.5" style="background-image: url('images/bg01.jpg');">
		<div class="container">
			<div class="row slider-text align-items-center justify-content-center">
				<div class="col-lg-9 text-center col-sm-12 element-animate">
					<h2 class="please">OUR EVENTS</h2>
				</div>
			</div>
		</div>
	</div>
	<!-- img banner -->

	<!-- isi card -->
	<div class="container">
            <%
                List<Events> list = EventsDAO.getAllRecordsE();
                request.setAttribute("list", list);
            %>
		<div class="card-columns">

			<!-- card -->
                        <c:forEach items="${list}" var="v">
                            <div class="card">
				<img class="card-img-top" src="${v.getImageE()}">
				<div class="card-body">
					<h5 class="card-title">${v.getNamaE()}</h5>
					<p>${v.getLokasiE()}</p>
				</div>
				<a href="#" class="btn more mt-3" data-toggle="modal" data-target="#exampleModal">Read More</a>
				<!-- modal -->
				<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1" aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel1">${v.getNamaE()}</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<img class="card-img-top" src="${v.getImageE()}" alt="<!-- database -->">
								<p>${v.getCaptE()}</p>
							</div>
						</div>
					</div>
				</div>
				<!-- //modal -->
			</div>
                        </c:forEach>
			<!-- //card -->			
		</div>
	</div>

	<!-- Required common Js -->
	<script src='js/jquery-2.2.3.min.js'></script>
	<!-- //Required common Js -->

	<!-- Js for bootstrap working-->
	<script src="js/bootstrap.min.js"></script>
	<!-- //Js for bootstrap working -->

</body>
</html>