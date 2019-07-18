<%-- 
    Document   : index
    Created on : Jul 15, 2019, 5:48:38 PM
    Author     : MikyalN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Hope</title>
	  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500|Gaegu:700" rel="stylesheet">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">

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

    <link rel="stylesheet" href="css/custom-style.css">
</head>
<body>
    
    <%@page import="Controller.DonationDAO,Model.Donation,Controller.EventsDAO,Model.Events,java.util.*"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- main banner -->
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
						<li class="nav-item active"><a href="index.jsp" class="nav-link">Home</a></li>
          	<li class="nav-item"><a href="addDonationForm.jsp" class="nav-link">Donate</a></li>
          	<li class="nav-item"><a href="events.jsp" class="nav-link">Events</a></li>
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

<!-- main banner -->

<!-- campaign jmlh donasi -->
<div class="container" style="background-color: #DAF7A6;margin-left: 0px;margin-right: 0px;max-width: none;margin-top: 50px;">
  <div class="row" style="padding-top: 60px;padding-bottom: 60px;">
    <div class="col">
        <%!
            int totalEvents = EventsDAO.getTotalEvents();
        %>
      <div class="card-body">
        <h1 style="text-align: center;">Total Events</h1>
        <h2 style="text-align: center;">        
            <% out.println(totalEvents); %>
        </h2>
      </div>
    </div>
    <div class="col">
        <%!
            int totalDonations = DonationDAO.getTotalDonations();
        %>
      <div class="card-body">
        <h1 style="text-align: center;">Total Donasi</h1>
        <h2 style="text-align: center;">
            Rp <% out.println(totalDonations); %>
        </h2>
      </div>
    </div>
  </div>
</div>
<!-- //campaign jmlh donasi -->

<!-- site-section -->
<div class="site-section">
    <div class="container">
      <div class="row">

        <div class="col-md-4">
          <div class="media block-6">
            <div class="icon"><span class="flaticon-heart-box"></span></div>
            <div class="media-body">
              <h3 class="heading">Help Us Build Schools</h3>
              <p>Donate now to help build schools</p>
            </div>
          </div>     
        </div>

        <div class="col-md-4">
          <div class="media block-6">
            <div class="icon"><span class="flaticon-donate"></span></div>
            <div class="media-body">
              <h3 class="heading">Make Donation Now</h3>
              <p>The more you donate the better</p>
            </div>
          </div>  
        </div>

        <div class="col-md-4">
          <div class="media block-6">
            <div class="icon"><span class="flaticon-people"></span></div>
            <div class="media-body">
              <h3 class="heading">We Need Volunteers</h3>
              <p>Join our events and be a volunteer</p>
            </div>
          </div> 
        </div>

      </div>
    </div>
  </div>
<!-- //site-section -->

<!-- featured donate -->
 <div class="site-section fund-raisers">
     
    <%
        List<Donation> list = DonationDAO.getReversedAllRecords();
        request.setAttribute("list", list);
    %>
    
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-12 text-center">
          <h2>Latest Donations</h2>
        </div>
      </div>

      <div class="row">
          <c:forEach begin ="0" end="3" items="${list}" var="u">
              <div class="col-md-6 col-lg-3 mb-5">
                <div class="person-donate text-center bg-light pt-4">
                    <img src="images/boy.png" alt="Image placeholder" class="img-fluid">
                    <div class="donate-info">
                        <h2 style="height: 60px;">${u.getNamaD()}</h2>
                        <span class="time d-block mb-3" style="height: 40px; max-height: 40px;">${u.getPesanD()}</span>

                        <div class="donate-amount d-flex">
                            <div class="label">Donated</div>
                            <div class="amount">Rp ${u.getJumlahD()}</div>
                        </div>
                    </div>
                </div>    
               </div>
          </c:forEach>
      </div>
    </div>
 </div>

<!-- //featured donate -->

<!-- events -->
    
    <%
        List<Events> listEvents = EventsDAO.getReversedAllRecordsE();
        request.setAttribute("listEvents", listEvents);
    %>
    
  <c:forEach begin ="0" end="2" items="${listEvents}" var="x">  
  <div class="featured-section overlay-color-2 custom-overlay-color-${(x.getIdE()%3)+1}" style="background-image: url('${x.getImageE()}');">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <img src="${x.getImageE()}" alt="${x.getAltE()}" class="img-fluid" style="width: 535px;height: 315px;">
        </div>
        <div class="col-md-6" style="text-align: center;padding-left: 120px;">
          <span class="featured-text d-block mb-3">Events Terkini</span>
              <h2">${x.getNamaE()}</h2>
              <p class="mb-3">${x.getCaptE()}</p>
              <p><a href="addDonationForm.jsp" class="btn btn-success btn-hover-white py-3 px-5">Donasi Sekarang</a></p>
        </div>
      </div>
    </div>
 </div>
 </c:forEach>

<!-- //events -->
</body>
</html>