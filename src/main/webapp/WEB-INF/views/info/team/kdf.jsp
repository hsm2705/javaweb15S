<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>KWANGDONG FREECS</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
<jsp:include page="/WEB-INF/views/include/nav.jsp" />
<jsp:include page="/WEB-INF/views/include/slide2.jsp" />
<p><br/></p>
<div class="container">
  <h1>광동 프릭스</h1>
  <hr/><p>
  광동 프릭스 소속 리그 오브 레전드 프로게임단. 팀 약자는 KDF.<br/>
  2016년 Rebels Anarchy를 인수하면서 창단되었으며, 2022년부터 2024년까지 광동제약의 네이밍 스폰서십을 체결해 '광동 프릭스'라는 이름으로 활동하게 되었다.<br/>
  현재 2023 LoL Champions Korea Summer에 참가 중이며 1라운드에서 4승 5패로 6위를 기록했다. 주장은 Jun 윤세준 선수다.
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/dudu.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/top.jpg" /></h6>
                                    <h4 class="card-title">DuDu</h4>
                                    <h4 class="card-title">이동주</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">DuDu</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">이동주</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">탑</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">2001년 3월 8일</dd>
                                            <dt class="info-card__key">Most 3</dt>
                                                <dd class="info-card__value"><img src="${ctp}/images/champ/renekton.jpg" />/<img src="${ctp}/images/champ/gnar.jpg" />/<img src="${ctp}/images/champ/gwen.jpg" /></dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/youngjae.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/jgl.jpg" /></h6>
                                    <h4 class="card-title">YoungJae</h4>
                                    <h4 class="card-title">고영재</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">YoungJae</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">고영재</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">정글</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">2002년 11월 16일</dd>
                                            <dt class="info-card_key">우승이력</dt>
                                                <dd><img src="${ctp}/images/lck.jpg" /> <b>1</b></dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/bulldog.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/mid.jpg" /></h6>
                                    <h4 class="card-title">BuLLDoG</h4>
                                    <h4 class="card-title">이태영</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">BuLLDoG</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">이태영</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">미드</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">2005년 4월 15일</dd>
                                            <dt class="info-card__key">Most 3</dt>
                                                <dd class="info-card__value"><img src="${ctp}/images/champ/taliyah.jpg" />/<img src="${ctp}/images/champ/azir.jpg" />/<img src="${ctp}/images/champ/viktor.jpg" /></dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/taeyoon.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/bot.jpg" /></h6>
                                    <h4 class="card-title">Taeyoon</h4>
                                    <h4 class="card-title">김태윤</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Taeyoon</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">김태윤</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">바텀</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">2002년 6월 2일</dd>
                                            <dt class="info-card__key">Most 3</dt>
                                                <dd class="info-card__value"><img src="${ctp}/images/champ/zeri.jpg" />/<img src="${ctp}/images/champ/aphelios.jpg" />/<img src="${ctp}/images/champ/varus.jpg" /></dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/jun.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/spt.jpg" /></h6>
                                    <h4 class="card-title">Jun</h4>
                                    <h4 class="card-title">윤세준</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Jun</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">윤세준</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">서포터</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">2000년 8월 2일</dd>
                                            <dt class="info-card__key">Most 3</dt>
                                                <dd class="info-card__value"><img src="${ctp}/images/champ/karma.jpg" />/<img src="${ctp}/images/champ/thresh.jpg" />/<img src="${ctp}/images/champ/lulu.jpg" /></dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/andil.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/spt.jpg" /></h6>
                                    <h4 class="card-title">Andil</h4>
                                    <h4 class="card-title">문관빈</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Andil</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">문관빈</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">서포터</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">2002년 10월 5일</dd>
                                            <dt class="info-card__key">Most 3</dt>
                                                <dd class="info-card__value"><img src="${ctp}/images/champ/rakan.jpg" />/<img src="${ctp}/images/champ/nautilus.jpg" />/<img src="${ctp}/images/champ/braum.jpg" /></dd>
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
  HOT6 Champions Summer 2014 2차 예선<br/>
  IT ENJOY NLB Summer 2014 12강<br/>
  2015 League of Legends Challengers Korea Spring 1차 토너먼트 우승<br/>
  2015 League of Legends Challengers Korea Spring 2차 토너먼트 16강<br/>
  2015 SBENU LoL Champions Korea Summer/승강전 A조 2위<br/>
  2015 SBENU LoL Champions Korea Summer 6위<br/>
  NAVER 2015 LoL KeSPA Cup 8강<br/>
  2016 꼬깔콘 LoL Champions Korea Spring 5위<br/>
  2016 코카-콜라 제로 LoL Champions Korea Summer 5위<br/>
  리그 오브 레전드 2016 월드 챔피언십/선발전 3위<br/>
  2016 LoL KeSPA Cup 14강<br/>
  2017 LoL Champions Korea Spring 5위<br/>
  2017 LoL Champions Korea Summer 5위<br/>
  리그 오브 레전드 2017 월드 챔피언십/선발전 3위<br/>
  2017 LoL KeSPA Cup 12강<br/>
  2018 LoL Champions Korea Spring 준우승<br/>
  2018 LoL Champions Korea Summer 3위<br/>
  리그 오브 레전드 2018 월드 챔피언십 8강<br/>
  2018 LoL KeSPA Cup 8강<br/>
  2019 스무살우리 LoL Champions Korea Spring 8위<br/>
  2019 우리은행 LoL Champions Korea Summer 5위<br/>
  리그 오브 레전드 2019 월드 챔피언십/선발전 4위<br/>
  2019 LoL KeSPA Cup ULSAN 우승<br/>
  2020 우리은행 LoL Champions Korea Spring 6위<br/>
  2020 우리은행 LoL Champions Korea Summer 4위<br/>
  리그 오브 레전드 2020 월드 챔피언십/선발전 3위<br/>
  2020 LoL KeSPA Cup ULSAN 10강<br/>
  2021 LoL Champions Korea Spring 9위<br/>
  2021 LoL Champions Korea Summer 6위<br/>
  2022 LoL Champions Korea Spring 4위<br/>
  2022 LoL Champions Korea Summer 7위<br/>
  2023 LoL Champions Korea Spring 7위
  </p><hr/><br/>
  <button type="button" class="btn btn-info" onclick="location.href='${ctp}/info/teamInfo';">팀 소개</button>
  <button type="button" class="btn btn-danger" onclick="location.href='${ctp}/';">홈으로</button>
</div>
<p><br/></p>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>