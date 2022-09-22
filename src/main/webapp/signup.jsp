<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>RegisterationForm</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style type="text/css">
.gradient-custom {
	background: #f093fb;
	background: -webkit-linear-gradient(to bottom right, rgba(240, 147, 251, 1),
		rgba(245, 87, 108, 1));
	background: linear-gradient(to bottom right, rgba(240, 147, 251, 1),
		rgba(245, 87, 108, 1))
}

.card-registration .select-input.form-control[readonly]:not([disabled])
	{
	font-size: 1rem;
	line-height: 2.15;
	padding-left: .75em;
	padding-right: .75em;
}

.card-registration .select-arrow {
	top: 13px;
}
</style>
</head>
<body>
	<section class="vh-200 gradient-custom">
		<div class="container py-5 h-100">
			<div class="row justify-content-center align-items-center h-100">
				<div class="col-12 col-lg-9 col-xl-7" style="width: 1500px">
					<div class="card shadow-2-strong card-registration"
						style="border-radius: 15px;">
						<div class="card-body p-4 p-md-5">
							<h3 class="mb-3 pb-2 pb-md-0 mb-md-5">Registration Form</h3>
							<form>

								<div class="row">
									<div class="col-md-6 mb-3">
										<div class="form-outline">
											<input type="text" id="Name"
												class="form-control form-control-lg" /> <label
												class="form-label" for="Name">Name</label>
										</div>

									</div>
									<div class="col-md-6 mb-3">

										<div class="form-outline datepicker w-100">
											<input type="text" class="form-control form-control-lg"
												id="birthdayDate" /> <label for="birthdayDate"
												class="form-label">Date of Birth</label>
										</div>

									</div>
								</div>

								<div class="row">
									<div class="col-md-6 mb-3 pb-2">

										<div class="form-outline">
											<input type="email" id="emailAddress"
												class="form-control form-control-lg" /> <label
												class="form-label" for="emailAddress">Email</label>
										</div>

									</div>
									<div class="col-md-6 mb-3 pb-2">

										<div class="form-outline">
											<input type="text" id="password"
												class="form-control form-control-lg" /> <label
												class="form-label" for="password">password</label>
										</div>

									</div>
								</div>

								<div class="row">
									<div class="col-md-6 mb-3 d-flex align-items-center">

										<div class="form-floating">
											<textarea class="form-control"
												placeholder="Leave a comment here" id="Address"
												style="height: 100px; width: 500px;"></textarea>
											<label for="Address">Address</label>
										</div>

									</div>
									<div class="col-md-6 mb-3 pb-2">

										<div class="form-outline">
											<input type="tel" id="phoneNumber"
												class="form-control form-control-lg" /> <label
												class="form-label" for="phoneNumber">Phone Number</label>
										</div>

									</div>
								</div>


								<div class="row">
									<div class="col-md-3 mb-3">

										<div class="form-outline">
											<input type="text" id="city"
												class="form-control form-control-lg" /> <label
												class="form-label" for="City">City</label>
										</div>

									</div>
									<div class="col-md-3 mb-3">

										<div class="form-outline">
											<input type="text" id="state"
												class="form-control form-control-lg" /> <label
												class="form-label" for="state">State</label>
										</div>

									</div>
									<div class="col-md-3 mb-3">

										<div class="form-outline datepicker w-100">
											<input type="text" class="form-control form-control-lg"
												id="Country" /> <label for="Country" class="form-label">Country</label>
										</div>

									</div>
									<div class="col-md-3 mb-3">

										<div class="form-outline datepicker w-100">
											<input type="number" class="form-control form-control-lg"
												id="pincode" /> <label for="pincode" class="form-label">Pincode</label>
										</div>

									</div>

								</div>
								<div class="row">
									<div class="col-md-4 mb-3">

										<div class="form-outline">
											<input type="text" id="Company"
												class="form-control form-control-lg" /> <label
												class="form-label" for="Company">Company Name</label>
										</div>

									</div>
									<div class="col-md-4 mb-3">

										<div class="form-outline">
											<input type="text" id="Occupation"
												class="form-control form-control-lg" /> <label
												class="form-label" for="Occupation">Occupation</label>
										</div>

									</div>
									<div class="col-md-4 mb-3">

										<div class="form-outline datepicker w-100">
											<input type="number" class="form-control form-control-lg"
												id="Experience" /> <label for="Experience"
												class="form-label">Years of Experience</label>
										</div>

									</div>

								</div>

								<div class="pt-1 mb-4">
									<button class="btn btn-dark btn-lg btn-block" type="button"
										onclick="signup();"><a href="Login.jsp;">Submit</a></button>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script>
		function signup() {
			var person = {
				Name : document.getElementById('Name').value,
				birthdayDate : document.getElementById('birthdayDate').value,
				emailAddress : document.getElementById('emailAddress').value,
				password : document.getElementById('password').value,
				Address : document.getElementById('Address').value,
				city : document.getElementById('city').value,
				state : document.getElementById('state').value,
				Country : document.getElementById('Country').value,
				pincode : document.getElementById('pincode').value,
				Company : document.getElementById('Company').value,
				Occupation : document.getElementById('Occupation').value,
				Experience : document.getElementById('Experience').value
			};
			$.ajax({
				type : "POST",
				url : "/Home/Add",
				dataType : "json",
				success : function(msg) {
					if (msg) {
						alert("Somebody" + name + " was added in list !");
						location.reload(true);
					} else {
						alert("Cannot add to list !");
					}
				},
				data : person
			});
		}
	</script>
</body>
</html>