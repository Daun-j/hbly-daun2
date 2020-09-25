<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html>
<head>
<title>HBLY : Market</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
</head>
<body>

  <!-- header -->
  <div>
    <nav class="navbar navbar-expand-md navbar-light">
      <div class="container">
        <div class="collapse navbar-collapse" id="navbar4">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a class="nav-link" href="/hbly/join">회원가입</a></li>
            <li class="nav-item"><a class="nav-link" href="#">고객센터</a></li>
            <li class="nav-item"><a class="nav-link" href="#">공지사항</a></li>
          </ul>
          <a class="btn navbar-btn ml-md-2 btn-light">로그인</a>
        </div>
      </div>
    </nav>
    <nav class="navbar navbar-expand-lg navbar-light" draggable="true">
      <div class="container">
        <div class="collapse navbar-collapse" id="navbar8">
          <a class="navbar-brand text-primary" href="#"> <b class="">HBLY</b>
          </a>
          <div class="collapse navbar-collapse px-5" id="navbar5" style="">
            <div class="input-group">
              <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="Search">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fa fa-search"></i>
                </button>
              </div>
            </div>
          </div>
          <ul class="navbar-nav mr-3">
            <li class="nav-item ml-2"><a class="nav-link" href="#"> <i class="fa fa-user-circle" aria-hidden="true"></i>
              </a></li>
            <li class="nav-item ml-2"><a class="nav-link" href="#"> <i class="fa fa-gitlab fa-fw fa-lg"></i>
              </a></li>
            <li class="nav-item ml-2"><a class="nav-link" href="#"> <i class="fa fa-bitbucket fa-fw fa-lg"></i>
              </a></li>
          </ul>
        </div>
      </div>
    </nav>
    <nav class="navbar navbar-expand-md navbar-dark bg-primary">
      <div class="container justify-content-center">
        <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar15" aria-expanded="true">
          <span class="navbar-toggler-icon" style=""></span>
        </button>
        <div class="navbar-collapse text-center justify-content-center collapse show" id="navbar15" style="">
          <ul class="navbar-nav">
            <li class="nav-item mx-2"><a class="nav-link navbar-brand mr-0 text-white" href="#"><i class="fa fa-comments-o" aria-hidden="true"></i> <b>커뮤니티</b></a></li>
            <li class="nav-item mx-2"><a class="nav-link navbar-brand mr-0 text-white" href="#"><i class="fa fa-shopping-basket" aria-hidden="true"></i> <b>마켓</b></a>
            </li>
            <li class="nav-item mx-2"><a class="nav-link navbar-brand mr-0 text-white" href="#"><i class="fa fa-handshake-o" aria-hidden="true"></i> <b>중고거래</b></a></li>
          </ul>
        </div>
      </div>
    </nav>
  </div>
  
  <!--banner-->
  <div class="py-5">
    <div class="container">
      <div class="row">
      	<!-- category -->
        <div class="col-md-4"></div>
        <!-- product img ad -->
        <div class="col-md-8">
          <div class="carousel slide" data-ride="carousel" id="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active"> <img class="d-block img-fluid w-100" src="https://static.pingendo.com/cover-bubble-dark.svg">
                <div class="carousel-caption">
                  <h5 class="m-0">Carousel</h5>
                  <p>with controls</p>
                </div>
              </div>
              <div class="carousel-item"> <img class="d-block img-fluid w-100" src="https://static.pingendo.com/cover-bubble-light.svg">
                <div class="carousel-caption">
                  <h5 class="m-0">Carousel</h5>
                  <p>with controls</p>
                </div>
              </div>
              <div class="carousel-item"> <img class="d-block img-fluid w-100" src="https://static.pingendo.com/cover-moon.svg">
                <div class="carousel-caption">
                  <h5 class="m-0">Carousel</h5>
                  <p>with controls</p>
                </div>
              </div>
            </div> <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev"> <span class="carousel-control-prev-icon"></span> <span class="sr-only">Previous</span> </a> <a class="carousel-control-next" href="#carousel" role="button" data-slide="next"> <span class="carousel-control-next-icon"></span> <span class="sr-only">Next</span> </a>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <!--product-->
  <div class="py-4 bg-light" >
    <div class="container">
      <div class="row">
        <div class="col-md-4 p-3">
        <a href="/" style="all:none">
          <div class="card box-shadow">
            <img class="card-img-top" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg">
            <div class="card-body">
              <p class="card-text"><b>상품명</b></p>
              <i class="fa d-inline-block fa-star text-warning"></i>
              <i class="fa d-inline-block fa-star text-warning"></i>
              <i class="fa d-inline-block fa-star text-warning"></i>
              <i class="fa d-inline-block fa-star text-info"></i>
              <i class="fa d-inline-block fa-star text-info"></i>
              <p class="d-inline-block text-info"> | 100개 구매 </p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                </div>
                <h4><b>100,000원</b>
                </h4>
              </div>
            </div>
          </div>
          </a>
        </div>
        <div class="col-md-4 p-3">
          <div class="card box-shadow">
            <img class="card-img-top" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg">
            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                </div> <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4 p-3">
          <div class="card box-shadow">
            <img class="card-img-top" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg">
            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                </div> <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4 p-3">
          <div class="card box-shadow">
            <img class="card-img-top" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg">
            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                </div> <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4 p-3">
          <div class="card box-shadow">
            <img class="card-img-top" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg">
            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                </div> <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4 p-3">
          <div class="card box-shadow">
            <img class="card-img-top" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg">
            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                </div> <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4 p-3">
          <div class="card box-shadow">
            <img class="card-img-top" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg">
            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                </div> <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4 p-3">
          <div class="card box-shadow">
            <img class="card-img-top" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg">
            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                </div> <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4 p-3">
          <div class="card box-shadow">
            <img class="card-img-top" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg">
            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                </div> <small class="text-muted">9 mins</small>
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
          <p class="mb-0">I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls.</p>
        </div>
        <div class="col-lg-3 col-md-6 p-3">
          <h5>
            <b>Follow us</b>
          </h5>
          <div class="row">
            <div class="col-md-12 d-flex align-items-center justify-content-between my-2">
              <a href="#"> <i class="d-block fa fa-facebook-official text-muted fa-lg mr-2"></i>
              </a> <a href="#"> <i class="d-block fa fa-instagram text-muted fa-lg mx-2"></i>
              </a> <a href="#"> <i class="d-block fa fa-google-plus-official text-muted fa-lg mx-2"></i>
              </a> <a href="#"> <i class="d-block fa fa-pinterest-p text-muted fa-lg mx-2"></i>
              </a> <a href="#"> <i class="d-block fa fa-reddit text-muted fa-lg mx-2"></i>
              </a> <a href="#"> <i class="d-block fa fa-twitter text-muted fa-lg ml-2"></i>
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
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous" style=""></script>
  
</html>