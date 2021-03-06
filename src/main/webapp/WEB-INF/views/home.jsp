<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<html>
<html>
<head>
<title>HBLY</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous" style=""></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
	integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
	crossorigin="anonymous" style=""></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous" style=""></script>
	
</head>
<body>

	<!-- nav & header -->
	<div>
		<!-- nav -->
		<nav class="navbar navbar-expand-md navbar-light">
			<div class="container">
				<div class="collapse navbar-collapse" id="navbar4">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link" href="/join">회원가입</a></li>
						<li class="nav-item"><a class="nav-link" href="#">고객센터</a></li>
						<li class="nav-item"><a class="nav-link" href="#">공지사항</a></li>
					</ul>
					<a class="btn navbar-btn ml-md-2 btn-light" href="/login">로그인</a>
				</div>
			</div>
		</nav>
		
		<!-- header -->
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container">
				<div class="collapse navbar-collapse" id="navbar8">
					<a class="navbar-brand text-primary" href="#"> <b class="">HBLY</b>
					</a>
					<div class="collapse navbar-collapse px-5" id="navbar5" style="">
						<div class="input-group">
							<input type="text" class="form-control" id="inlineFormInputGroup"
								placeholder="Search">
							<div class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</div>
					</div>
					<ul class="navbar-nav mr-3">
						<li class="nav-item ml-2"><a class="nav-link" href="/blyInfo"> <i
								class="fa fa-user-circle fa-3x" aria-hidden="true"></i>
						</a></li>
						<li class="nav-item ml-2"><a class="nav-link" href="#"> <i
								class="fa fa-shopping-cart fa-3x"></i>
						</a></li>
						<li class="nav-item ml-2"><a class="nav-link" href="#"> <i
								class="fa fa-bell fa-3x"></i>
						</a></li>
					</ul>
				</div>
			</div>
		</nav>
		
		<!-- menu -->
		<nav class="navbar navbar-expand-md navbar-dark bg-primary">
			<div class="container justify-content-center">
				<button class="navbar-toggler navbar-toggler-right border-0"
					type="button" data-toggle="collapse" data-target="#navbar15"
					aria-expanded="true">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div
					class="navbar-collapse collapse show"
					id="navbar15" style="">
					<ul class="navbar-nav">
						<li class="nav-item mx-2"><a
							class="nav-link navbar-brand mr-0 text-white" href="/"><i
								class="fa fa-comments-o" aria-hidden="true"></i> <b>커뮤니티</b></a></li>
						<li class="nav-item mx-2"><a
							class="nav-link navbar-brand mr-0 text-white" href="/market"><i
								class="fa fa-shopping-basket" aria-hidden="true"></i> <b>마켓</b></a>
						</li>
						<li class="nav-item mx-2"><a
							class="nav-link navbar-brand mr-0 text-white" href="#"><i
								class="fa fa-handshake-o" aria-hidden="true"></i> <b>중고거래</b></a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>

	<!-- img -->
	<div class="container my-3">
		<div class="row">
			<div class="col-md-12">
				<div class="card text-center">
					<div class="card-header">
						<ul class="nav nav-tabs card-header-tabs">
							<li class="nav-item"><a class="nav-link active" data-toggle="tab"
								data-target="#tabone">NEW Tab 1</a></li>
							<li class="nav-item" style=""><a class="nav-link" href=""
								data-toggle="tab" data-target="#tabtwo">BEST Tab 2</a></li>
						</ul>
					</div>
					<div class="card-body">
						<div class="tab-content mt-2">
							<div class="tab-pane fade active show" id="tabone" role="tabpanel">
								<p class="">When I hear the buzz of the little world among
									the stalks, and grow familiar with the countless indescribable
									forms.</p>
								<div class="row">
									<div class="col-6 col-md-3 p-0">
										<img class="img-fluid d-block"
											src="https://static.pingendo.com/cover-moon.svg" style=""
											draggable="true">
									</div>
									<div class="col-6 col-md-3 p-0">
										<img class="img-fluid d-block"
											src="https://static.pingendo.com/cover-bubble-dark.svg">
									</div>
									<div class="col-6 col-md-3 p-0">
										<img class="img-fluid d-block"
											src="https://static.pingendo.com/cover-moon.svg">
									</div>
									<div class="col-6 col-md-3 p-0">
										<img class="img-fluid d-block"
											src="https://static.pingendo.com/cover-bubble-light.svg">
									</div>
									<div class="col-6 col-md-3 p-0">
										<img class="img-fluid d-block"
											src="https://static.pingendo.com/cover-bubble-dark.svg">
									</div>
									<div class="col-6 col-md-3 p-0">
										<img class="img-fluid d-block"
											src="https://static.pingendo.com/cover-moon.svg">
									</div>
									<div class="col-6 col-md-3 p-0">
										<img class="img-fluid d-block"
											src="https://static.pingendo.com/cover-bubble-light.svg">
									</div>
									<div class="col-6 col-md-3 p-0">
										<img class="img-fluid d-block"
											src="https://static.pingendo.com/cover-moon.svg">
									</div>
								</div>
								<div style="float: right" class="mt-3">
									<ul class="pagination">
										<li class="page-item"><a class="page-link" href="#">
												<span class="">14/30</span>
										</a></li>
										<li class="page-item"><a class="page-link" href="#">
												<span>&lt;</span>
										</a></li>
										<li class="page-item"><a class="page-link" href="#">
												<span>&gt;</span>
										</a></li>
									</ul>
								</div>
							</div>
							<div class="tab-pane fade" id="tabtwo" role="tabpanel">
								<p class="">Who formed us in his own image, and the breath
									of that universal love which bears and sustains us. And then,
									my friend.</p>
								<div class="row">
									<div class="col-6 col-md-3 p-0">
										<img class="img-fluid d-block"
											src="https://static.pingendo.com/cover-moon.svg" style=""
											draggable="true">
									</div>
									<div class="col-6 col-md-3 p-0">
										<img class="img-fluid d-block"
											src="https://static.pingendo.com/cover-bubble-dark.svg">
									</div>
									<div class="col-6 col-md-3 p-0">
										<img class="img-fluid d-block"
											src="https://static.pingendo.com/cover-moon.svg">
									</div>
									<div class="col-6 col-md-3 p-0">
										<img class="img-fluid d-block"
											src="https://static.pingendo.com/cover-bubble-light.svg">
									</div>
									<div class="col-6 col-md-3 p-0">
										<img class="img-fluid d-block"
											src="https://static.pingendo.com/cover-bubble-dark.svg">
									</div>
									<div class="col-6 col-md-3 p-0">
										<img class="img-fluid d-block"
											src="https://static.pingendo.com/cover-moon.svg">
									</div>
									<div class="col-6 col-md-3 p-0">
										<img class="img-fluid d-block"
											src="https://static.pingendo.com/cover-bubble-light.svg">
									</div>
									<div class="col-6 col-md-3 p-0">
										<img class="img-fluid d-block"
											src="https://static.pingendo.com/cover-moon.svg">
									</div>
								</div>
								<div style="float: right" class="mt-3">
									<ul class="pagination">
										<li class="page-item"><a class="page-link" href="#">
												<span class="">14/30</span>
										</a></li>
										<li class="page-item"><a class="page-link" href="#">
												<span>&lt;</span>
										</a></li>
										<li class="page-item"><a class="page-link" href="#">
												<span>&gt;</span>
										</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- board -->
	<div class="py-5">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="card text-center">
						<div class="card-header">
							<ul class="nav nav-tabs card-header-tabs">
								<li class="nav-item"><a class="nav-link active"
									data-toggle="tab" data-target="#boardone">최신글</a></li>
								<li class="nav-item"><a class="nav-link" href=""
									data-toggle="tab" data-target="#boardtwo">인기글</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									data-target="#boardthree">공지글</a></li>
							</ul>
						</div>
						<div class="card-body">
							<div class="tab-content mt-2">
								<div class="tab-pane fade show active" id="boardone"
									role="tabpanel">
									<div class="row">
										<div class="col-md-12">
											<div class="table-responsive">
												<table class="table">
													<thead>
														<tr>
															<th>번호</th>
															<th class="w-50">제목</th>
															<th>글쓴이</th>
															<th>작성일</th>
															<th>조회</th>
															<th>추천</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>1</td>
															<td>Mark</td>
															<td>Otto</td>
															<td>Otto</td>
															<td>Otto</td>
															<td>Otto</td>
														</tr>
														<tr>
															<td>2</td>
															<td>Jacob</td>
															<td>Thornton</td>
															<td>Thornton</td>
															<td>Thornton</td>
															<td>Thornton</td>
														</tr>
														<tr>
															<td>3</td>
															<td>Larry</td>
															<td>the Bird</td>
															<td>the Bird</td>
															<td>the Bird</td>
															<td>the Bird</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="boardtwo" role="tabpanel">
									<p class="">Who formed us in his own image, and the breath
										of that universal love which bears and sustains us. And then,
										my friend.</p>
								</div>
								<div class="tab-pane fade" id="boardthree" role="tabpanel">
									<p class="">In my soul and absorb its power, like the form
										of a beloved mistress, then I often think with longing.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- footer -->
	<div class="py-3">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-6 p-3">
					<h5>
						<b>Main</b>
					</h5>
					<ul class="list-unstyled">
						<li><a href="#">Home</a></li>
						<li><a href="#">Features</a></li>
						<li><a href="#">Pricing</a></li>
					</ul>
				</div>
				<div class="col-lg-3 col-6 p-3">
					<h5>
						<b>Others</b>
					</h5>
					<ul class="list-unstyled">
						<li><a href="#">FAQ</a></li>
						<li><a href="#">Resources</a></li>
						<li><a href="#">Career</a></li>
					</ul>
				</div>
				<div class="col-lg-3 col-md-6 p-3">
					<h5>
						<b>About</b>
					</h5>
					<p class="mb-0">I am alone, and feel the charm of existence in
						this spot, which was created for the bliss of souls.</p>
				</div>
				<div class="col-lg-3 col-md-6 p-3">
					<h5>
						<b>Follow us</b>
					</h5>
					<div class="row">
						<div
							class="col-md-12 d-flex align-items-center justify-content-between my-2">
							<a href="#"> <i
								class="d-block fa fa-facebook-official text-muted fa-lg mr-2"></i>
							</a> <a href="#"> <i
								class="d-block fa fa-instagram text-muted fa-lg mx-2"></i>
							</a> <a href="#"> <i
								class="d-block fa fa-google-plus-official text-muted fa-lg mx-2"></i>
							</a> <a href="#"> <i
								class="d-block fa fa-pinterest-p text-muted fa-lg mx-2"></i>
							</a> <a href="#"> <i
								class="d-block fa fa-reddit text-muted fa-lg mx-2"></i>
							</a> <a href="#"> <i
								class="d-block fa fa-twitter text-muted fa-lg ml-2"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center">
					<p class="mb-0 mt-2">© 2014-2018 Pingendo. All rights reserved</p>
				</div>
			</div>
		</div>
	</div>





</body>
</html>

