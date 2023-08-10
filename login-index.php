<?php session_start(); ?>
<?php include "login-header.php"; ?>
<style>
	.wwa-box {
    background-color: green;
    padding: 30px;
    margin-left: 10px;
    text-align: center;
    color: white;

}

.wwa-box:first-child {
    margin-left: 0px;
}

.wwa-box h3 {
    margin-bottom: 5px;

}

.wwa-box:hover {
    box-shadow: 3px 5px 12px 0px maroon;
}


.flex-design {
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.mb {
    margin-bottom: 3rem;
}


.mt {
    margin-top: 5rem;
}
.wwa-content {
    max-width: 1020px;
    margin-left: auto;
    margin-right: auto;
}

.button {
    display: inline-block;
    color:white;
    background-color: maroon;
    border-radius: 20px;
    padding: 10px 18px;
    transition: 300ms;
}

.button:hover {
    transform: translateY(5px);
	color: maroon;
	background-color: white;
}
</style>
	<br>
	<div id="slides" class="cover-slides">
		<ul class="slides-container">
			<li class="text-left">
				<img src="images/03.webp" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20">				<div>
					<?php
					if(isset($_SESSION['uid']))
					{
					?>
					Hi <?php echo $_SESSION['uid']; ?> &nbsp;&nbsp;<br>
					Are you looking for Great Products?
					<?php	
					}
					else
					{	
					?>
					<a href="registration.php">NEW USER</a>&nbsp;&nbsp;&nbsp;<a href="login.php">LOGIN</a>
					<?php
					}
					?>	

					  </div>
							<p><a class="button" href="login-menu.php">Products</a></p>
						</div>
					</div>
				</div>
			</li>
			<li class="text-left">
				<img src="images/02.webp" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
						<h1 class="m-b-20"><strong>We like  <br> to produce organic products well.</strong></h1>
							<p class="m-b-40">Agro Agency the future of Farming 
<br>...</p>
							<p><a class="button" href="contact.php">Contact Us</a></p>
						</div>
					</div>
				</div>
			</li>
			<li class="text-left">
				<img src="images/01.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
						<h1 class="m-b-20"><strong>Welcome To <br>Agro Agency</strong></h1>
							<p class="m-b-40">we are the leading agro products supplying company in erode district<br> 
							We know our Products..</p>
							<p><a class="button" href="review.php">Review</a></p>
						</div>
					</div>
				</div>
			</li>
		</ul>
		<div class="slides-navigation">
			<a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
			<a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
		</div>
	</div>

			
	
<?php include "login-footer.php"; ?>