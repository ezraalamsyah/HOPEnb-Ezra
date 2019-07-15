<%-- 
    Document   : addDonationForm
    Created on : 15-Jul-2019, 20:55:23
    Author     : ezraalamsyah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Donation Page</title>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Content-Language" content="en">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
	<meta name="description" content="Build whatever layout you need with our Architect framework.">
	<meta name="msapplication-tap-highlight" content="no">
	<link href="css/main.css" rel="stylesheet">
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
    <!--
    =========================================================
    * ArchitectUI HTML Theme Dashboard - v1.0.0
    =========================================================
    * Product Page: https://dashboardpack.com
    * Copyright 2019 DashboardPack (https://dashboardpack.com)
    * Licensed under MIT (https://github.com/DashboardPack/architectui-html-theme-free/blob/master/LICENSE)
    =========================================================
    * The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-->



</head>

<body>
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
          	<li class="nav-item active"><a href="addDonationForm.jsp" class="nav-link">Donate</a></li>
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
    style="background-image: url('images/sumbangan.jpg');max-height:550px;min-height: 0px;">
    <div class="container">
      <div class="row slider-text align-items-center justify-content-center">
        <div class="col-lg-9 text-center col-sm-12 element-animate">
          <h2 class="please" style="padding-bottom: 170px;">Donasi melalui HOPE</h2>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- //img banner -->

    <form action="addDonation.jsp" method="post">
	<div class="tab-pane tabs-animation fade show active" id="tab-content-0" role="tabpanel" style="padding: 120px;">
		<div class="main-card mb-3 card">
			<div class="card-body"><h5 class="card-title text-center">Donasi</h5>
				<form class="">
					
					<div class="position-relative form-group"><label for="name" class="">Nama</label><input name="namaD" id="name" placeholder="Masukkan nama anda" type="text" class="form-control" required></div>

					<div class="position-relative form-group"><label for="email" class="">Email</label><input name="emailD" id="email" placeholder="donatur@email.cool" type="email" class="form-control" required></div>

					<div class="form-row">
						<div class="col-md-6">
							<div class="position-relative form-group"><label for="jumlah" class="">Jumlah dalam Rupiah (Minimal Rp 10.000)</label><input name="jumlahD" id="jumlah" placeholder="Jumlah donasi anda" type="number" min="10000" class="form-control" required>
							</div>
						</div>
						<div class="col-md-6">
							<div class="position-relative form-group"><label for="select">Metode</label>
								<select name="metodeD" id="exampleSelect" class="form-control" required>
									<option>Cash</option>
									<option>Debit Card</option>
									<option>Credit Card</option>
									<option>Online Banking</option>
								</select></div>
							</div>
						</div>

						<div class="position-relative form-group"><label for="exampleAddress" class="">Pesan</label><input name="pesanD" id="exampleAddress" placeholder="Notes Donasi Anda" type="text" class="form-control" required></div>

						<!-- <div class="position-relative form-check"><input name="check" id="exampleCheck" type="checkbox" class="form-check-input"><label for="exampleCheck" class="form-check-label">Donasi Anonymous</label></div>-->

						<button class="mt-2 btn btn-primary" type="submit">Donasi</button>
					</form>
				</div>
			</div>
		</div>
	</body>
    </form>
	<script type="text/javascript" src="assets/scripts/main.js"></script></body>
	</html>