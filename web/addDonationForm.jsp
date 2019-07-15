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

						<button class="mt-2 btn btn-primary" type="submit">Sign in</button>
					</form>
				</div>
			</div>
		</div>
	</body>
    </form>
	<script type="text/javascript" src="assets/scripts/main.js"></script></body>
	</html>