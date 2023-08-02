<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Gen.G</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
<jsp:include page="/WEB-INF/views/include/nav.jsp" />
<jsp:include page="/WEB-INF/views/include/slide2.jsp" />
<p><br/></p>
<div class="container">
  <h1>젠지</h1>
  <hr/><p>
  Gen.G Esports 소속의 리그 오브 레전드 프로게임단이다. 팀 약자는 GEN.<br/>
  2013년 9월 7일 월드 챔피언십 직전 MVP의 매각을 통해 MVP의 선수단을 이어 받아 삼성 갤럭시 소속으로 활동하였고, 2015년부터 삼성 갤럭시 통합팀으로 출범했으며 2017년 월드 챔피언십이 끝난 이후에 대만계 미국인 사업가 케빈 추가 프로게임단을 인수하면서 팀명이 바뀌게 되었다.<br/>
  최근에 입상했던 여러 기록들을 제외하면 우승 기록들의 대부분을 삼성 시절에 달성하였고, Gen.G로 팀명이 바뀌기 직전에 KSV가 삼성 갤럭시 프로 게임단을 인수하면서 2013년 9월 7일부터 삼성 갤럭시 명의로 기록한 모든 기록들을 공백없이 이어받게 되었다.<br/>
  참가했던 모든 선발전에서 월즈 진출에 성공해 2013년부터 2022년까지 8회의 월즈 진출을 기록하며 역대 LCK 팀 중 월즈에 가장 많이 진출한 팀이다. 월드 챔피언십 2회 우승을 달성했으며 LCK 총 3회 우승, 5회 준우승을 달성해 최다 준우승 기록과 T1에 이어 최다 결승 진출 기록 2위, LCK 정규시즌 역대 최고 득실 기록을 보유한 LCK 전통의 명문 강호이다.<br/>
  현재 2023 LoL Champions Korea Summer에 참가 중이며 1라운드에서 9승 0패로 1위를 기록했다. 주장은 Peanut 한왕호 선수다. 
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/doran.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/top.jpg" /></h6>
                                    <h4 class="card-title">Doran</h4>
                                    <h4 class="card-title">최현준</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Doran</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">최현준</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">탑</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">2000년 7월 22일</dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/peanut.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/jgl.jpg" /></h6>
                                    <h4 class="card-title">Peanut</h4>
                                    <h4 class="card-title">한왕호</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Peanut</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">한왕호</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">정글</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">1998년 2월 3일</dd>
                                            <dt class="info-card_key">우승이력</dt>
                                                <dd><img src="${ctp}/images/lck.jpg" /><b>5</b>&nbsp;&nbsp;<img src="${ctp}/images/msi.jpg" /> <b>1</b></dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/chovy.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/mid.jpg" /></h6>
                                    <h4 class="card-title">Chovy</h4>
                                    <h4 class="card-title">정지훈</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Chovy</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">정지훈</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">미드</dd>
                                            <dt class="info-card__key">출생</dt>
                                            	<dd class="info-card__value">2001년 3월 3일</dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/peyz.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/bot.jpg" /></h6>
                                    <h4 class="card-title">Peyz</h4>
                                    <h4 class="card-title">김수환</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Peyz</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">김수환</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">원거리 딜러</dd>
                                            <dt class="info-card__key">출생</dt>
                                            	<dd class="info-card__value">2005년 12월 5일</dd>
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
              <!-- Team member -->
              <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <p><img class=" img-fluid" src="${ctp}/images/player/delight.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/spt.jpg" /></h6>
                                    <h4 class="card-title">Delight</h4>
                                    <h4 class="card-title">유환중</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Delight</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">유환중</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">서포터</dd>
                                            <dt class="info-card__key">출생</dt>
                                            	<dd class="info-card__value">2002년 9월 12일</dd>
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
  PANDORA TV Champions Winter 2013-2014 준우승
  SKT LTE-A LoL 마스터즈 2014 우승
  HOT6 Champions Spring 2014 우승
  리그 오브 레전드 2014 월드 챔피언십 우승
  2015 SBENU LoL Champions Korea Spring 프리시즌 6위<br/>
  2015 SBENU LoL Champions Korea Spring 8위<br/>
  2015 SBENU LoL Champions Korea Summer 7위<br/>
  NAVER 2015 LoL KeSPA Cup 12강<br/>
  2016 꼬깔콘 LoL Champions Korea Spring 6위<br/>
  2016 코카-콜라 제로 LoL Champions Korea Summer 4위<br/>
  리그 오브 레전드 2016 월드 챔피언십 선발전 1위<br/>
  리그 오브 레전드 2016 월드 챔피언십 준우승<br/>
  2016 LoL KeSPA Cup 8강<br/>
  IEM Season XI - Gyeonggi 우승<br/>
  2017 LoL Champions Korea Spring 3위<br/>
  2017 LoL Champions Korea Summer 4위<br/>
  리그 오브 레전드 2017 월드 챔피언십 선발전 1위<br/>
  리그 오브 레전드 2017 월드 챔피언십 우승<br/>
  2017 LoL KeSPA Cup 4강<br/>
  2018 LoL Champions Korea Spring 5위<br/>
  2018 LoL Champions Korea Summer 5위<br/>
  리그 오브 레전드 2018 월드 챔피언십/선발전 1위<br/>
  리그 오브 레전드 2018 월드 챔피언십 조별 리그<br/>
  2018 LoL KeSPA Cup 준우승<br/>
  2019 스무살우리 LoL Champions Korea Spring 7위<br/>
  2019 우리은행 LoL Champions Korea Summer 6위<br/>
  2019 LoL KeSPA Cup ULSAN 8강<br/>
  2020 우리은행 LoL Champions Korea Spring 준우승<br/>
  2020 Mid-Season Cup 4강<br/>
  2020 우리은행 LoL Champions Korea Summer 3위<br/>
  리그 오브 레전드 2020 월드 챔피언십/선발전 1위<br/>
  리그 오브 레전드 2020 월드 챔피언십 8강<br/>
  2021 LoL Champions Korea Spring 준우승<br/>
  2021 LoL Champions Korea Summer 3위<br/>
  리그 오브 레전드 2021 월드 챔피언십 4강<br/>
  2022 LoL Champions Korea Spring 준우승<br/>
  2022 LoL Champions Korea Summer 우승<br/>
  리그 오브 레전드 2022 월드 챔피언십 4강<br/>
  2023 LoL Champions Korea Spring 우승<br/>
  2023 Mid-Season Invitational 4위
  </p><hr/><br/>
  <button type="button" class="btn btn-info" onclick="location.href='${ctp}/info/teamInfo';">팀 소개</button>
  <button type="button" class="btn btn-danger" onclick="location.href='${ctp}/';">홈으로</button>
</div>
<p><br/></p>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>