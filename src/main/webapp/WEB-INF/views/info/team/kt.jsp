<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>kt Rolster</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
<jsp:include page="/WEB-INF/views/include/nav.jsp" />
<jsp:include page="/WEB-INF/views/include/slide2.jsp" />
<p><br/></p>
<div class="container">
  <h1>kt 롤스터</h1>
  <hr/><p>
  kt 롤스터 소속 리그 오브 레전드 프로게임단. 팀 약자는 KT.<br/>
  2012~2013 윈터부터 LCK의 역사에서 자웅을 가리던 전통의 명문 팀이었으나, 2020 서머부터 2022 스프링까지 플레이오프 진출에 실패하면서 옛 말이 되버렸다. 그리고 한국 롤판이 급격하게 성장하게 된 시기부터 지금까지 대기업을 중심으로 한 한국 롤팀의 대표 사례로써 남아있다.<br/>
  현재 2023 LoL Champions Korea Summer에 참가 중이며 1라운드에서 8승 1패로 2위를 기록했다. 주장은 Lehends 손시우 선수다.
  </p><hr/>
  <h2>소속 선수</h2><hr/>
  <div class="row">
            <!-- Team member -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <p><img class=" img-fluid" src="${ctp}/images/player/kiin.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/top.jpg" /></h6>
                                    <h4 class="card-title">Kiin</h4>
                                    <h4 class="card-title">김기인</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Kiin</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">김기인</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">탑</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">1999년 5월 28일</dd>
                                            <dt class="info-card__key">Most 3</dt>
                                                <dd class="info-card__value"><img src="${ctp}/images/champ/gnar.jpg" />/<img src="${ctp}/images/champ/renekton.jpg" />/<img src="${ctp}/images/champ/aatrox.jpg" /></dd>
                                          </dl>
                                    </div>
                                    <ul class="list-inline">
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank">
                                                <i class="fab fa-instagram"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Team member -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <p><img class=" img-fluid" src="${ctp}/images/player/cuzz.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/jgl.jpg" /></h6>
                                    <h4 class="card-title">Cuzz</h4>
                                    <h4 class="card-title">문우찬</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Cuzz</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">문우찬</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">정글</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">1998년 2월 3일</dd>
                                            <dt class="info-card_key">우승이력</dt>
                                                <dd><img src="${ctp}/images/lck.jpg" /><b>3</b></dd>
                                          </dl>
                                     </div>
                                    <ul class="list-inline">
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank">
                                                <i class="fab fa-instagram"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Team member -->
                 <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <p><img class=" img-fluid" src="${ctp}/images/player/bdd.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/mid.jpg" /></h6>
                                    <h4 class="card-title">Bdd</h4>
                                    <h4 class="card-title">곽보성</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Bdd</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">곽보성</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">미드</dd>
                                            <dt class="info-card__key">출생</dt>
                                            	<dd class="info-card__value">1999년 3월 1일</dd>
                                            <dt class="info-card_key">우승이력</dt>
                                                <dd><img src="${ctp}/images/lck.jpg" /> <b>2</b> </dd>
                                          </dl>
                                    </div>
                                    <ul class="list-inline">
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank">
                                                <i class="fab fa-instagram"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
           	<!-- Team member -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <p><img class=" img-fluid" src="${ctp}/images/player/aiming.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/bot.jpg" /></h6>
                                    <h4 class="card-title">Aiming</h4>
                                    <h4 class="card-title">김하람</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Aiming</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">김하람</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">원거리 딜러</dd>
                                            <dt class="info-card__key">출생</dt>
                                            	<dd class="info-card__value">2000년 7월 20일</dd>
                                            <dt class="info-card__key">Most 3</dt>
                                                <dd class="info-card__value"><img src="${ctp}/images/champ/ezreal.jpg" />/<img src="${ctp}/images/champ/aphelios.jpg" />/<img src="${ctp}/images/champ/kaisa.jpg" /></dd>
                                          </dl>
                                    </div>
                                    <ul class="list-inline">
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank">
                                                <i class="fab fa-instagram"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
              <!-- Team member -->
              <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <p><img class=" img-fluid" src="${ctp}/images/player/lehends.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/spt.jpg" /></h6>
                                    <h4 class="card-title">Lehends</h4>
                                    <h4 class="card-title">손시우</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Lehends</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">손시우</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">서포터</dd>
                                            <dt class="info-card__key">출생</dt>
                                            	<dd class="info-card__value">1998년 12월 24일</dd>
                                            <dt class="info-card_key">우승이력</dt>
                                                <dd><img src="${ctp}/images/lck.jpg" /> <b>1</b> </dd>
                                          </dl>
                                    </div>
                                    <ul class="list-inline">
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank">
                                                <i class="fab fa-instagram"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
  </div>
  <hr/>
  <h2>역대 성적</h2>
  <p>
  제4회 인천 실내&무도 아시아경기대회 국가대표 선발전 1위<br/>
  제4회 인천 실내&무도 아시아경기대회 우승<br/>
  HOT6 Champions Summer 2013 준우승<br/>
  리그 오브 레전드 시즌 3 월드 챔피언십 선발전 2위<br/>
  PANDORA TV Champions Winter 2013-2014 3위<br/>
  IEM 시즌 8 월드 챔피언십 우승<br/>
  HOT6 Champions Summer 2014 우승<br/>
  리그 오브 레전드 2014 월드 챔피언십 선발전 3위<br/>
  2015 SBENU LoL Champions Korea Spring 프리시즌 6위<br/>
  2015 SBENU LoL Champions Korea Spring 5위<br/>
  2015 SBENU LoL Champions Korea Summer 준우승<br/>
  리그 오브 레전드 2015 월드 챔피언십 선발전 1위<br/>
  리그 오브 레전드 2015 월드 챔피언십 8강<br/>
  NAVER 2015 LoL KeSPA Cup 4강<br/>
  2016 꼬깔콘 LoL Champions Korea Spring 3위<br/>
  2016 코카-콜라 제로 LoL Champions Korea Summer 준우승<br/>
  리그 오브 레전드 2016 월드 챔피언십 선발전 2위<br/>
  2016 LoL KeSPA Cup 8강<br/>
  2017 LoL Champions Korea Spring 준우승<br/>
  2017 LoL Champions Korea Summer 3위<br/>
  리그 오브 레전드 2017 월드 챔피언십 선발전 2위<br/>
  2017 LoL KeSPA Cup 우승<br/>
  2018 LoL Champions Korea Spring 3위<br/>
  2018 LoL Champions Korea Summer 우승<br/>
  리그 오브 레전드 2018 월드 챔피언십 8강<br/>
  2018 LoL KeSPA Cup 4강<br/>
  2019 스무살우리 LoL Champions Korea Spring 9위<br/>
  2019 스무살우리 LoL Champions Korea Summer 승강전 잔류<br/>
  2019 우리은행 LoL Champions Korea Summer 8위<br/>
  2019 LoL KeSPA Cup ULSAN 12강<br/>
  2020 우리은행 LoL Champions Korea Spring 5위<br/>
  2020 우리은행 LoL Champions Korea Summer 6위<br/>
  리그 오브 레전드 2020 월드 챔피언십 선발전 4위<br/>
  2020 LoL KeSPA Cup ULSAN 4강<br/>
  2021 LoL Champions Korea Spring 7위<br/>
  2021 LoL Champions Korea Summer 7위<br/>
  2022 LoL Champions Korea Spring 7위<br/>
  2022 LoL Champions Korea Summer 5위<br/>
  리그 오브 레전드 2022 월드 챔피언십 선발전 4위<br/>
  2023 LoL Champions Korea Spring 3위
  </p><hr/><br/>
  <button type="button" class="btn btn-info" onclick="location.href='${ctp}/info/teamInfo';">팀 소개</button>
  <button type="button" class="btn btn-danger" onclick="location.href='${ctp}/';">홈으로</button>
</div>
<p><br/></p>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>