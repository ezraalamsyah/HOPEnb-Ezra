<%-- 
    Document   : contact
    Created on : 16-Jul-2019, 01:30:25
    Author     : ezraalamsyah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>HOPE | contact us</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500|Gaegu:700" rel="stylesheet">
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

	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="index.html">HOPE</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
					<li class="nav-item"><a href="donate.html" class="nav-link">Donate</a></li>
					<li class="nav-item"><a href="gallery.html" class="nav-link">Gallery</a></li>
					<li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
					<li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
					<li class="nav-item active"><a href="contact.html" class="nav-link">Contact</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->

	<div class="block-31" style="position: relative;">
		<div class="owl-carousel loop-block-31 ">
			<div class="block-30 block-30-sm item" style="background-image: url('images/bg06.jpg');" data-stellar-background-ratio="0.5">
				<div class="container">
					<div class="row align-items-center justify-content-center">
						<div class="col-md-7 text-center">
							<h2 class="heading"></h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<h7>KONTAK KAMI</h7>
	<div class="site-section">
		<div class="container">
			<div class="row block-9">
				<div class="col-md-6 pr-md-5">
					<form name="form-contact">
						<div class="form-group">
							<i class="icon-user"></i>
							<input type="text" name="usernama" class="form-control px-3 py-3" placeholder="Your Name" required>
						</div>
					</form>
					<form class="form-contact">
						<div class="form-group">
							<span class="icon-envelope-open"></span>
							<input type="text" name="useremail" class="form-control px-3 py-3" placeholder="Your Email" required>
						</div>
					</form>

					<div class="form-group">
						<span class="icon-comments"></span>
						<input type="text" class="form-control px-3 py-3" placeholder="Subject">
					</div>
					<div class="form-group">
						<span class="icon-comment"></span>
						<textarea cols="30" rows="7" class="form-control px-3 py-3" placeholder="Message" required></textarea>
					</div>
					<div class="form-group">
						<button id="button-form" type="submit" class="btn btn-primary-form py-2 px-4" onclick="submit()">
							<p>SUBMIT</p>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script>
		function submit()
		{
			if((document.form-contact.usernama.value!='')&&(document.form-contact.useremail.value!=''))
			{
				alert("Pertanyaan Anda sudah terkirim, silahkan tunggu balasan yang akan kami kirim ke email Anda. ");
			}else
			{
				alert("Mohon isi formulir pertanyaan dengan lengkap.");
			}
		}
	</script>


	<button class="open-button" onclick="openForm()">Chatting</button>
	<div class="chat-popup" id="Formulir1">
		<form action="#contact" class="form01">
			<h1>Let's Chat!</h1>

			<label for="msg"><b>Silahkan chat kami jika ada pertanyaan ataupun masukan.</b></label>
			<textarea placeholder="Type message.." name="msg" required></textarea>
			<button type="submit" class="btn" onclick="submit()">Send</button>
			<button type="button" class="btn cancel" onclick="closeForm()">Close</button>
		</form>
	</div>

	<script>
		function openForm() {
			document.getElementById("Formulir1").style.display = "block";
		}

		function sub() {
			if((document.Formulir1.msg.value!=''))
			{
				alert("Terkirim! Mohon tunggu balasan chat dari kami.");
			}
		}

		function closeForm() {
			document.getElementById("Formulir1").style.display = "none";
		}
	</script>


	<!-- loader -->

	<script src="js/bootstrap.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>

</body>
</html>
