<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title>HBLY : 마이블리</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
</head>

<body>
  <div class="py-5 text-white h-25" style="background-image: linear-gradient(rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0.75)), url(&quot;https://static.pingendo.com/cover-bubble-dark.svg&quot;); background-position: center center, center center; background-size: cover, cover; background-repeat: repeat, repeat;">
    <div class="text-center">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h2><b>마이블리</b></h2>
            <h5>내 활동의 모든것을 한눈에 확인하는 마이블리 </h5>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
          
            <div class="card-header text-center">
              <div class="container my-2">
                <div class="row text-right">
                  <div class="col-md-3 border-right border-left">
                    <dl><dt>게시글 수</dt>
                      <dd>0</dd>
                    </dl>
                  </div>
                  <div class="col-md-3 border-right">
                    <dl><dt class="">댓글 수</dt>
                      <dd>0</dd>
                    </dl>
                  </div>
                  <div class="col-md-3 border-right">
                    <dl><dt>최근 방문일</dt>
                      <dd>0</dd>
                    </dl>
                  </div>
                  <div class="col-md-3 border-right">
                    <dl><dt>포인트</dt>
                      <dd>0</dd>
                    </dl>
                  </div>
                </div>
              </div>
            </div>
            
            <div class="card-body">
              <div class="py-5">
                <div class="container">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="card">
                        <div class="card-header">
                          <ul class="nav nav-tabs card-header-tabs" style="">
                            <li class="nav-item">
                              <a class="nav-link active" data-toggle="tab" data-target="#tabone">개인정보1</a>
                            </li>
                            <li class="nav-item" style="">
                              <a class="nav-link" data-toggle="tab" data-target="#tabtwo" >개인정보2</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" data-toggle="tab" data-target="#tabthree">회원탈퇴3</a>
                            </li>
                          </ul>
                        </div>
                        <div class="card-body">
                          <div class="tab-content mt-2">
                          
                            <div class="tab-pane fade active show" id="tabone" role="tabpanel" style="">
                              <!--1-->
                              <div class="container text-center">
                                <div class="row">
                                  <div class="mx-auto p-2 col-6">
                                    <p> 개인정보를 안전하게 보호하기 위하여 <br> HBLY 아이디 비밀번호를 한번 더 입력해주세요. </p>
                                    <form>
                                      <div class="form-group"> <input type="password" class="form-control" id="form29" placeholder="비밀번호 입력" required="required"> </div>
                                      <button type="submit" class="btn btn-primary w-100">확인</button>
                                    </form>
                                  </div>
                                </div>
                              </div>
                            </div>
                            
                            <div class="tab-pane fade" id="tabtwo" role="tabpanel">
                              <!--2 개인정보 변경/회원탈퇴-->
                              <div class="container">
                                <div class="row">
                                  <div class="col-md-12 my-3 text-left">
                                    <h2 class="" contenteditable="true"><b>개인 정보</b></h2>
                                    <p> 정보를 수정할 경우에는 비밀번호를 꼭 다시 한번 확인해 주세요. </p>
                                  </div>
                                  <div class="col-md-12">
                                    <h3 contenteditable="true" class="text-left"><b>기본 정보</b></h3>
                                  </div>
                                  <div class="col-md-12">
                                    <div>
                                      <table class="table table-bordered ">
                                        <tbody class="my-0">
                                          <tr>
                                            <td class="table-info">아이디</td>
                                            <td>
                                              <div class="col-md-6 px-0">
                                                <input type="text" class="form-control mb-2" disabled="" readonly="" value="hbly@hbly.com">
                                              </div>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td class="table-info">신규 비밀번호</td>
                                            <td>
                                              <ul class="list-inline">
                                                <li class="list-inline-item"><input type="password" class="form-control"></li>
                                                <li class="list-inline-item">숫자 or 문자로만 4~12자리 입력해주세요.</li>
                                              </ul>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td class="table-info">신규 비밀번호 확인</td>
                                            <td>
                                              <ul class="list-inline">
                                                <li class="list-inline-item"><input type="password" class="form-control"></li>
                                                <li class="list-inline-item">신규 비밀번호를 한번더 입력해주세요.</li>
                                              </ul>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td class="table-info">이름</td>
                                            <td>
                                              <ul class="list-inline">
                                                <li class="list-inline-item"><input type="text" class="form-control" disabled="" readonly="" value="김재욱"></li>
                                              </ul>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td class="table-info">생년월일</td>
                                            <td>
                                              <ul class="list-inline">
                                                <li class="list-inline-item"><input type="text" class="form-control" disabled="" readonly="" value="19991212"></li>
                                              </ul>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td class="table-info">닉네임</td>
                                            <td>
                                              <ul class="list-inline">
                                                <li class="list-inline-item"><input type="text" class="form-control"></li>
                                                <li class="list-inline-item"> <input type="button" class="btn btn-primary" value="중복확인"></li>
                                              </ul>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td class="table-info" rowspan="2">주소</td>
                                            <td>
                                              <ul class="list-inline pb-0">
                                                <li class="list-inline-item"><input type="text" class="form-control" readonly="" value="12345"></li>
                                                <li class="list-inline-item"> <input type="button" class="btn btn-primary" value="우편번호 찾기"></li>
                                              </ul>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td>
                                              <div class="row mb-2">
                                                <div class="col-md-6"><input type="text" class="form-control" readonly="" value="주소"></div>
                                                <div class="col-md-6"><input type="text" class="form-control" readonly="" value="상세주소"></div>
                                              </div>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td class="table-info">휴대폰 번호</td>
                                            <td>
                                              <div class="col-md-6 px-0">
                                                <input type="text" class="form-control mb-2" disabled="" readonly="" value="01012345678">
                                              </div>
                                            </td>
                                          </tr>
                                          <tr>
                                            <td class="table-info">성별</td>
                                            <td>
                                              <ul class="list-inline">
                                                <li class="list-inline-item">
                                                  <div class="custom-control custom-radio">
                                                    <input id="man" name="userGender" type="radio" class="custom-control-input" checked="" disabled="disabled" value="M"> <label class="custom-control-label" for="man" readonly="">남자</label> </div>
                                                </li>
                                                <li class="list-inline-item">
                                                  <div class="custom-control custom-radio">
                                                    <input id="woman" name="userGender" type="radio" class="custom-control-input" disabled="disabled" value="F"> <label class="custom-control-label" for="woman" readonly="">여자</label> </div>
                                                </li>
                                              </ul>
                                            </td>
                                          </tr>
                                        </tbody>
                                      </table>
                                      <div class="container py-5 text-center">
                                        <div class="row">
                                          <div class="mx-auto col-lg-8 col-md-10">
                                            <a href="#" class="btn btn-lg btn-primary mx-1">개인정보 수정</a> <a class="btn btn-lg mx-1 btn-outline-primary" href="#">회원탈퇴</a>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                            
                            <div class="tab-pane fade" id="tabthree" role="tabpanel">
                            <!--3 회원탈퇴-->
                            <div class="container">
                              <div class="row">
                                <div class="col-md-12 my-3 text-left">
                                  <h2 class=""><b>회원탈퇴 신청</b></h2>
                                  <div class="policy border p-3">
                                    <p><strong>회원 탈퇴 신청에 앞서&nbsp;아래의 사항을 반드시 확인하여 주시기 바랍니다. </strong></p><b>
                                      <p>
                                        <strong>1. 회원탈퇴 시 처리 내용</strong><br> (1) 헬블리 캐시·적립금: 잔여 금액은 소멸되며 환불되지 않습니다.<br> (2) 보유 정보: 헬블리 구매 정보가 삭제됩니다.<br>
                                        <span>단, 티켓 구매 특성상 유효기간이 남은 미사용 티켓 관련 정보는 삭제되지 아니하고 유효기간 만료일까지 보관됩니다.</span><br> (3) 소비자보호에 관한 법률 제6조(거래 기록의 보전 등) 및 동법 시행령 제6조에 의거,<br>
                                        <span>* 계약 또는 청약철회 등에 관한 기록은5년,</span><br>
                                        <span>대금결제 및 재화 등의 공급에 관한 기록은5년,</span><br>
                                        <span>* 소비자의 불만 또는 분쟁 처리에 관한 기록은 3년 동안 보관됩니다.</span><br>
                                        <span>동 개인정보는 법률에 의한 경우가 아니고서는 보유 되어지는 이외의 다른 목적으로는 이용되지 않습니다.</span><br> (4) 회원정보 : 회원탈퇴 완료 시 당사 사이트 이용 권한이 삭제되며, 기존 구매 티켓에 대한 본인인증 확인, 부정이용 방지 및 재가입 검증 등의 사유로 이용자 정보*는 6개월 동안 보관되며, 부정이용 방지 사유의 이용자 정보*는 1년간 보관 됩니다.<br>
                                        <span>*이용자 정보 : 회원 중 구매, 상담 등의 활동 이력이 있는 이용자의 정보</span><br>
                                      </p>
                                      <p>
                                        <strong>2. 회원탈퇴 시 게시물 관리</strong><br> 회원탈퇴 후 당사 사이트에 입력하신 게시물 및 댓글은 삭제되지 않으며, 회원정보 삭제로 인해 작성자 본인을 확인할 수 없으므로 게시물 편집 및 삭제 처리가 원천적으로 불가능 합니다. 게시물 삭제를 원하시는 경우에는 먼저 해당 게시물을 삭제 하신 후, 탈퇴를 신청하시기 바랍니다. </p>
                                      <p>
                                        <strong>3. 회원탈퇴 후 재가입 규정</strong><br> 탈퇴 회원이 재가입하더라도 기존의 헬블리 적립금은 이미 소멸되었음으로 현재의 헬블리 적립금에 양도되지 않습니다. </p>
                                    </b>
                                  </div><b>
                                  </b>
                                  <div class="form-check"> <input class="form-check-input" type="checkbox" id="form21" value="on"> <label class="form-check-label" for="form21">위 내용을 모두 확인하였습니다.</label> </div>
                                  <hr>
                                  <div class="container text-center">
                                    <div class="row">
                                      <div class="mx-auto col-md-10">
                                        <h4 style="" contenteditable="true">회원탈퇴를 위한 회원정보 인증 절차</h4>
                                        <p class="mb-3 text-muted">회원가입 시 등록한 정보를 입력해주세요.</p>
                                        <form class="text-left border p-4 bg-light">
                                          <div class="form-group"> <label for="form16">아이디</label> <input type="text" class="form-control" id="form16" placeholder="hbly@hbly.com" readonly=""> </div>
                                          <div class="form-row">
                                            <div class="form-group col-md-12"> <label for="form19">비밀번호</label> <input type="password" class="form-control" id="form19" placeholder="••••"> </div>
                                          </div>
                                          <div class="form-group"> <label for="form17">이름</label> <input type="text" class="form-control" id="form17"> </div>
                                          <div class="text-center">
                                            <button type="submit" class="btn btn-primary">확인 </button>
                                          </div>
                                        </form>
                                        <div>
                                          <div class="container py-3">
                                            <div class="row text-center">
                                              <div class="col-md-6"><a class="btn btn-lg btn-outline-primary btn-block" href="#">취소하기</a></div>
                                              <div class="col-md-6"><a class="btn btn-lg btn-outline-primary btn-block" href="#">회원탈퇴</a></div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                          
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  
</html>