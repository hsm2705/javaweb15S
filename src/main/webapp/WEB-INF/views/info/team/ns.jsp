<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Nongshim RedForce</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
<jsp:include page="/WEB-INF/views/include/nav.jsp" />
<jsp:include page="/WEB-INF/views/include/slide2.jsp" />
<p><br/></p>
<div class="container">
  <h1>농심 레드포스</h1>
  <hr/><p>
  2019년 5월 28일, 한국 이스포츠 아카데미의 독립 법인인 주식회사 팀 다이나믹스가 ES 샤크스 팀을 인수하여 공식 창단했다. 팀 약자는 NS.<br/>
  2020 LCK 서머 승강전에서 세번의 도전 끝에 승격에 성공하며 LCK의 18번째 신입생이자 LCK 최후의 승격팀이 되었다.<br/>
  2020년 6월 18일, LCK 프랜차이즈 심사를 통과하기 위해 농심으로부터 지원을 받게 되었고, 이후 LCK 프랜차이즈에 통과함으로써 11월 3일, 농심이 정식으로 팀을 인수하였고, 2020년 12월 17일에 공식 창단식을 가지고 농심 레드포스로 팀명을 변경했다.<br/>
  현재 2023 LoL Champions Korea Summer에 참가 중이며 1라운드에서 1승 8패로 10위를 기록했다. 주장은 Sylvie 이승복 선수다.
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/dndn.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/top.jpg" /></h6>
                                    <h4 class="card-title">DnDn</h4>
                                    <h4 class="card-title">박근우</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">DnDn</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">박근우</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">탑</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">2003년 5월 18일</dd>
                                            <dt class="info-card_key">우승이력</dt>
                                                <dd><img src="${ctp}/images/lckcl.jpg" /> <b>1</b></dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/sylvie.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/jgl.jpg" /></h6>
                                    <h4 class="card-title">Sylvie</h4>
                                    <h4 class="card-title">이승복</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Sylvie</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">이승복</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">정글</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">2002년 12월 4일</dd>
                                            <dt class="info-card_key">우승이력</dt>
                                                <dd><img src="${ctp}/images/lckcl.jpg" /> <b>1</b></dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/fiesta.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/mid.jpg" /></h6>
                                    <h4 class="card-title">FIESTA</h4>
                                    <h4 class="card-title">안현서</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">FIESTA</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">안현서</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">미드</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">2003년 5월 4일</dd>
                                            <dt class="info-card_key">우승이력</dt>
                                                <dd><img src="${ctp}/images/lckcl.jpg" /> <b>1</b></dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/jiwoo.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/bot.jpg" /></h6>
                                    <h4 class="card-title">Jiwoo</h4>
                                    <h4 class="card-title">정지우</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Jiwoo</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">정지우</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">바텀</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">2004년 3월 20일</dd>
                                            <dt class="info-card_key">우승이력</dt>
                                                <dd><img src="${ctp}/images/lckcl.jpg" /> <b>1</b></dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/peter.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/spt.jpg" /></h6>
                                    <h4 class="card-title">Peter</h4>
                                    <h4 class="card-title">정윤수</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Peter</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">정윤수</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">서포터</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">2003년 4월 28일</dd>
                                            <dt class="info-card_key">우승이력</dt>
                                                <dd><img src="${ctp}/images/lckcl.jpg" /> <b>1</b></dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/quad.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/mid.jpg" /></h6>
                                    <h4 class="card-title">Quad</h4>
                                    <h4 class="card-title">송수혁</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Quad</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">송수혁</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">미드</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">2002년 8월 25일</dd>
                                            <dt class="info-card__key">Most 3</dt>
                                                <dd class="info-card__value"><img src="${ctp}/images/champ/orianna.jpg" />/<img src="${ctp}/images/champ/syndra.jpg" />/<img src="${ctp}/images/champ/cassiopeia.jpg" /></dd>
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
  2016 NGTV ClubSeries Spring 2위<br/>
  2016 LoL Challengers Korea Summer 6위<br/>
  2017 LoL Challengers Korea Spring 6위<br/>
  2017 LoL Challengers Korea Summer 8위<br/>
  2017 LoL KeSPA Cup 19강<br/>
  2018 LoL Challengers Korea Spring 6위<br/>
  2018 LoL Challengers Korea Summer 5위<br/>
  2018 LoL KeSPA Cup 19강<br/>
  2019 제닉스 LoL Challengers Korea Spring 우승<br/>
  2019 스무살우리 LoL Champions Korea Summer/승강전 잔류<br/>
  2019 제닉스 LoL Challengers Korea Summer 우승<br/>
  2020 우리은행 LoL Champions Korea Spring/승강전 잔류<br/>
  2019 LoL KeSPA Cup ULSAN 12강<br/>
  2020 LoL Challengers Korea Spring 2위<br/>
  2020 LoL Challengers Korea Spring/포스트시즌 1위<br/>
  2020 우리은행 LoL Champions Korea Summer/승강전 승격<br/>
  2020 우리은행 LoL Champions Korea Summer 8위<br/>
  2020 LoL KeSPA Cup ULSAN 2위<br/>
  2021 LoL Champions Korea Spring 6위<br/>
  2021 LoL Champions Korea Summer 4위<br/>
  리그 오브 레전드 2021 월드 챔피언십/선발전 3위<br/>
  2022 LoL Champions Korea Spring 8위<br/>
  2022 LoL Champions Korea Summer 8위<br/>
  2023 LoL Champions Korea Spring 10위
  </p><hr/><br/>
  <button type="button" class="btn btn-info" onclick="location.href='${ctp}/info/teamInfo';">팀 소개</button>
  <button type="button" class="btn btn-danger" onclick="location.href='${ctp}/';">홈으로</button>
</div>
<p><br/></p>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>