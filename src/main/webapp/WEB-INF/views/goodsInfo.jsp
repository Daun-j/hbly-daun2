<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html>
<head>
<title>HBLY</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
</head>
<body>

  <!-- header -->
  <div >
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
    <nav class="navbar navbar-expand-lg navbar-light">
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
        <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar15" aria-expanded="true" style="">
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
  
  
  
  
  
  
  <!--product info-->
  <div class="mb-5 mt-3" style="">
    <div class="container">
      <!-- category-->
      <div class="row">
        <div class="col-md-12 mb-1">
          <a class="navbar-brand text-dark" href="#">
            <i class="fa d-inline fa fa-home"></i>
            <b class="ml-1">홈</b>
          </a><i class="fa fa-angle-right mr-2 fa-lg" aria-hidden="true"></i><a class="navbar-brand text-dark" href="#">
            <b>대분류</b>
          </a><i class="fa fa-angle-right mr-2 fa-lg" aria-hidden="true"></i>
          <a class="navbar-brand text-dark" href="#">
            <b>중분류</b>
          </a><i class="fa fa-angle-right mr-2 fa-lg" aria-hidden="true"></i>
          <a class="navbar-brand text-dark" href="#">
            <b>소분류</b>
          </a>
        </div>
      </div>
      
      <!--info-->
      <div class="row">
        <div class="col-lg-6 order-2 order-lg-1 p-0">
          <div class="py-3">
            <img class="img-fluid d-block" src="https://static.pingendo.com/cover-moon.svg">
          </div>
          <div class="container">
            <div class="row text-center border">
              <div class="col-md-4 border-right"><a class="btn pi-draggable" href="#">찜 <i class="fa fa-heart-o fa-fw fa-1x py-1"></i><i class="fa fa-heart fa-fw fa-1x py-1"></i> 40</a></div>
              <div class="col-md-4 border-right"><a class="btn pi-draggable" href="#">공유 <i class="fa fa-share-alt fa-fw fa-1x py-1"></i></a></div>
              <div class="col-md-4"><a class="btn pi-draggable" href="#">신고 <i class="fa fa-meh-o fa-fw fa-1x py-1"></i></a></div>
            </div>
          </div>
        </div>
        <div class="col-lg-6 d-flex flex-column align-items-start justify-content-center order-1 order-lg-2 p-3">
          <!--info 1-->
          <div class="w-100">
            <h2 class="text-body"><b>상품명</b> </h2>
            <div class="d-flex justify-content-between align-items-center">
              <div>
                <i class="fa d-inline-block fa-star text-warning"></i>
                <i class="fa d-inline-block fa-star text-warning"></i>
                <i class="fa d-inline-block fa-star text-warning"></i>
                <i class="fa d-inline-block fa-star text-info"></i>
                <i class="fa d-inline-block fa-star text-info"></i>
                <p class="d-inline-block text-info"> | 100개 구매 </p>
              </div>
              <h4><b>100,000원</b>
              </h4>
            </div>
            <hr>
          </div>
          <!--info 2 option/총 상품금액-->
          <div class="col p-0">
            <div class="w-100">
              <h5><b>옵션선택</b></h5>
              <div class="btn-group w-100 border">
                <button class="btn dropdown-toggle text-left" data-toggle="dropdown" aria-expanded="false">상품명</button>
                <div class="dropdown-menu w-100" x-placement="bottom-start" style="position: absolute; transform: translate3d(0px, 38px, 0px); top: 0px; left: 0px; will-change: transform;"> <a class="dropdown-item" href="#">01.상품명 | 1,000원 | 100개 남음</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="#">02.상품명 | 1,000원 | 100개 남음</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="#">03.상품명 | 1,000원 | 100개 남음</a>
                </div>
              </div>
              <!--옵션 선택됨-->
              <div class="py-2">
                <div class="card bg-light">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-md-8">
                        <h6 class="card-title">01.상품명 | 1,000원 | 100개 남음</h6>
                      </div>
                      <div class="col-md-4 text-right"><a class="btn btn-primary btn-sm" href="#"><i class="fa fa-times fa-fw fa-1x py-1"></i></a></div>
                    </div>
                    <div class="row pi-draggable" draggable="true">
                      <div class="col-md-8">
                        <div class="btn-group"> <a href="#" class="btn btn-primary">-</a> <a class="btn ">2</a><a href="#" class="btn btn-outline-primary">+</a> </div>
                      </div>
                      <div class="col-md-4 text-right">
                        <h4><b>2,000원</b>
                        </h4>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- 총 상품금액 -->
            <div class="row pi-draggable pt-2" draggable="true">
              <div class="col-md-8">
                <h6><b>총 상품금액</b></h6>
              </div>
              <div class="col-md-4 text-right">
                <h3><b>2,000원</b> </h3>
              </div>
            </div>
            <hr>
          </div>
          
          <!-- info 3 button -->
          <div class="container">
            <div class="row text-center">
              <div class="col-md-6"><a class="btn btn-outline-primary btn-block" href="#">장바구니</a></div>
              <div class="col-md-6"><a class="btn btn-primary btn-block" href="#">구매하기</a></div>
            </div>
          </div>
          
        </div>
      </div>
    </div>
  </div>
  <hr>
  
  
  
  
  
  
</body>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous" style=""></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</html>