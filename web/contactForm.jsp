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
          	<li class="nav-item"><a href="events.jsp" class="nav-link">Events</a></li>
         		<li class="nav-item active"><a href="contactForm.jsp" class="nav-link">Contact Us</a></li>
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


	<h1 style="text-align: center;padding-top: 150px;">KONTAK KAMI</h1>
        
	<div class="site-section">
		<div class="container">
			<form action="contact.jsp" method="post">
	<div class="tab-pane tabs-animation fade show active" id="tab-content-0" role="tabpanel" style="padding: 120px;">
		<div class="main-card mb-3 card">
			<div class="card-body"><h5 class="card-title text-center">Donasi</h5>
				<form class="">
					
					<div class="position-relative form-group"><label for="name" class="">Nama</label><input name="namaC" id="name" placeholder="Masukkan nama anda" type="text" class="form-control" required></div>

                                        <div class="position-relative form-group"><label for="email" class="">Email</label><input name="emailC" id="email" placeholder="donatur@email.cool" type="email" class="form-control" required></div>

					<div class="position-relative form-group"><label for="subjek" class="">Subjek</label><input name="subjekC" id="subjek" placeholder="Subjek pesan anda" type="text" class="form-control" required></div>
                                        
                                        <div class="position-relative form-group"><label for="exampleAddress" class="">Pesan</label><textarea cols="40" rows="5" name="pesanC" id="exampleAddress" placeholder="Pesan yang anda ingin share" class="form-control" required></textarea></div>
                                        
                                        

						<!-- <div class="position-relative form-check"><input name="check" id="exampleCheck" type="checkbox" class="form-check-input"><label for="exampleCheck" class="form-check-label">Donasi Anonymous</label></div>-->

					<button class="mt-2 btn btn-primary" type="submit">Hubungi Kami!</button>
					</form>
				</div>
			</div>
		</div>
	</body>
    </form>
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


        <!-- Chatting funtion ...
        
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
       
        ... -->
        
	<!-- loader -->

	<script src="js/bootstrap.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>

</body>
</html>
