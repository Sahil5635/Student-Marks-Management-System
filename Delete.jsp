

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Delete Page</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/hbootstrap/hcss/hbootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/hfont-awesome-4.7.0/hcss/hfont-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/hanimate/hanimate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/hcss-hamburgers/hhamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/hselect2/hselect2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/hutil.css">
	<link rel="stylesheet" type="text/css" href="css/hmain.css">
	<link type="text/css" rel="stylesheet" href="errorcss/style.css" />
<!--===============================================================================================-->
</head>

<body>

	<div class="contact1">
		<div class="container-contact1">
			<div class="contact1-pic js-tilt" data-tilt>
				<img src="images/DB.jpg" alt="IMG">
			</div>

			<form class="contact1-form validate-form" method="POST" action="Delete1.jsp">
				<span class="contact1-form-title">
					Delete Student Details
				</span>

				<div class="wrap-input1 validate-input alert-validate" data-validate = "ID is required">
					<input class="input1" type="text" name="sid" placeholder="Enter Student ID that you want to delete">
					<span class="shadow-input1" data-placeholder="&#xf207;"></span>
				</div>

				

				<div class="container-contact1-form-btn">
					<button class="contact1-form-btn">
						<span>
							Delete Entry
							<i class="fa fa-long-arrow-right" aria-hidden="true"></i>
						</span>
					</button>

				</div>
			</form>
			
			<form class="contact1-form validate-form" action="HomePage.html" style="margin-left: 494px;margin-top: 14px;">
			
				
				<div class="container-contact1-form-btn">
					<button class="contact1-form-btn">
						<span>
							Back
							<i class="fa fa-long-arrow-right" aria-hidden="true"></i>
						</span>
					</button>

				</div>
			</form>
			
		</div>
	</div>


	

<!--===============================================================================================-->
	<script src="vendor/hjquery/hjquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/hbootstrap/hjs/hpopper.js"></script>
	<script src="vendor/hbootstrap/hjs/hbootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/hselect2/hselect2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/htilt/htilt.jquery.min.js"></script>
	

<!--===============================================================================================-->
	<script src="js/hmain.js"></script>

</body>
</html>

