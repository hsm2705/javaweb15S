<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Hanwha Life Esports</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
<jsp:include page="/WEB-INF/views/include/nav.jsp" />
<jsp:include page="/WEB-INF/views/include/slide2.jsp" />
<p><br/></p>
<div class="container">
  <h1>한화생명e스포츠</h1>
  <hr/><p>
  한화생명이 운영하는 리그 오브 레전드 프로게임단. 팀 약자는 HLE.<br/>
  2015년 Koo Tigers의 창단 이후부터 역사를 써냈던 것을 시작으로 2016년부터 ROX Tigers라는 팀명으로 쭉 활동했고, 2017년에 멤버가 전원 바뀌었다가, 2018년 4월 16일 한화생명에 팀 인수가 확정되면서 2018 LCK 서머부터 한화생명e스포츠라는 새로운 이름으로 활동하게 되었다.
  현재 2023 LoL Champions Korea Summer에 참가 중이며 1라운드에서 5승 4패로 공동 4위를 기록했다. 주장은 Viper 박도현 선수다.
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/kingen.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/top.jpg" /></h6>
                                    <h4 class="card-title">Kingen</h4>
                                    <h4 class="card-title">황성훈</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Kingen</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">황성훈</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">탑</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">2000년 3월 11일</dd>
                                            <dt class="info-card_key">우승이력</dt>
                                                <dd><img src="${ctp}/images/lck.jpg" /> <b>1</b>/<img src="${ctp}/images/worlds.jpg" /> <b>1</b>  </dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/grizzly.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/jgl.jpg" /></h6>
                                    <h4 class="card-title">Grizzly</h4>
                                    <h4 class="card-title">조승훈</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Grizzly</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">조승훈</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">정글</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">2005년 5월 25일</dd>
                                            <dt class="info-card__key">Most 3</dt>
                                                <dd class="info-card__value"><img src="${ctp}/images/champ/maokai.jpg" />/<img src="${ctp}/images/champ/sejuani.jpg" />/<img src="${ctp}/images/champ/viego.jpg" /></dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/zeka.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/mid.jpg" /></h6>
                                    <h4 class="card-title">Zeka</h4>
                                    <h4 class="card-title">김건우</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Zeka</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">김건우</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">미드</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">2002년 11월 28일</dd>
                                            <dt class="info-card_key">우승이력</dt>
                                                <dd><img src="${ctp}/images/worlds.jpg" /> <b>1</b> </dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/viper.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/bot.jpg" /></h6>
                                    <h4 class="card-title">Viper</h4>
                                    <h4 class="card-title">박도현</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Viper</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">박도현</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">바텀</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">2000년 10월 19일</dd>
                                            <dt class="info-card_key">우승이력</dt>
                                                <dd><img src="${ctp}/images/lpl.jpg" /> <b>1</b>/<img src="${ctp}/images/worlds.jpg" /> <b>1</b>  </dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/life.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/spt.jpg" /></h6>
                                    <h4 class="card-title">Life</h4>
                                    <h4 class="card-title">김정민</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Life</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">김정민</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">서포터</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">2000년 7월 7일</dd>
                                            <dt class="info-card__key">Most 3</dt>
                                                <dd class="info-card__value"><img src="${ctp}/images/champ/tahmkench.jpg" />/<img src="${ctp}/images/champ/rakan.jpg" />/<img src="${ctp}/images/champ/braum.jpg" /></dd>
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
  2015 SBENU LoL Champions Korea Spring 프리시즌 3위<br/>
  IEM Season Ⅸ - World Championship 4강<br/>
  2015 SBENU LoL Champions Korea Spring 준우승<br/>
  2015 SBENU LoL Champions Korea Summer 3위<br/>
  리그 오브 레전드 2015 월드 챔피언십 준우승<br/>
  NAVER 2015 LoL KeSPA Cup 14강<br/>
  2016 꼬깔콘 LoL Champions Korea Spring 준우승<br/>
  2016 코카-콜라 제로 LoL Champions Korea Summer 우승<br/>
  리그 오브 레전드 2016 월드 챔피언십 4강<br/>
  2016 LoL KeSPA Cup 우승<br/>
  IEM Season XI - World Championship 4강<br/>
  2017 LoL Champions Korea Spring 6위<br/>
  2017 LoL Champions Korea Summer 7위<br/>
  2017 LoL KeSPA Cup/1라운드 8강 12강<br/>
  2018 LoL Champions Korea Spring 6위<br/>
  2018 LoL Champions Korea Summer 6위<br/>
  2018 LoL KeSPA Cup 19위<br/>
  2019 스무살우리 LoL Champions Korea Spring 6위<br/>
  2019 우리은행 LoL Champions Korea Summer 9위<br/>
  2020 우리은행 LoL Champions Korea Spring/승강전 잔류<br/>
  2019 LoL KeSPA Cup ULSAN 8위<br/>
  2020 우리은행 LoL Champions Korea Spring 8위<br/>
  2020 우리은행 LoL Champions Korea Summer 9위<br/>
  2020 LoL KeSPA Cup ULSAN 4강<br/>
  2021 LoL Champions Korea Spring 3위<br/>
  2021 LoL Champions Korea Summer 8위<br/>
  리그 오브 레전드 2021 월드 챔피언십/선발전 2위(진출)<br/>
  리그 오브 레전드 2021 월드 챔피언십 8강<br/>
  2022 LoL Champions Korea Spring 10위<br/>
  2022 LoL Champions Korea Summer 10위<br/>
  2023 LoL Champions Korea Spring 4위
  </p><hr/><br/>
  <button type="button" class="btn btn-info" onclick="location.href='${ctp}/info/teamInfo';">팀 소개</button>
  <button type="button" class="btn btn-danger" onclick="location.href='${ctp}/';">홈으로</button>
</div>
<p><br/></p>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>