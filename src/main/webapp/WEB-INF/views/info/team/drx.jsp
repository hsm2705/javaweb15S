<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>DRX</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
<jsp:include page="/WEB-INF/views/include/nav.jsp" />
<jsp:include page="/WEB-INF/views/include/slide2.jsp" />
<p><br/></p>
<div class="container">
  <h1>디알엑스</h1>
  <hr/><p>
  디알엑스가 운영하는 리그 오브 레전드 프로게임단. 2012년 5월 7일에 공식 창단되었다. 팀 약자는 팀명 그대로 DRX.<br/>
  초창기인 LG-IM 시절부터 크나큰 두각을 못 드러낸채 긴 암흑기와 여러 사건들과 사고가 있었으나, 2017년 서머부터 본격적인 두각을 드러내면서 2018년 스프링까지 정규시즌과 포스트시즌-플레이오프에서 모두 1위를 달성하였고, 이에 LCK 팀 최초의 2회 연속 통합 우승을 달성하였다. 또한 역대급 언더독의 반란으로 회자되는 리그 오브 레전드 2022 월드 챔피언십의 우승으로 플레이-인 스테이지에서 시작해 우승까지 이룬 최초이자 유일한 팀으로 등극함으로써 T1-GEN-DK를 잇는 LCK의 네 번째 월드 챔피언십 우승팀이 되었다.<br/>
  현재 2023 LoL Champions Korea Summer에 참가 중이며 1라운드에서 3승 6패로 7위를 기록했다. 주장은 Rascal 김광희 선수다.
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/rascal.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/top.jpg" /></h6>
                                    <h4 class="card-title">Rascal</h4>
                                    <h4 class="card-title">김광희</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Rascal</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">김광희</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">탑</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">1997년 10월 16일</dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/juhan.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/jgl.jpg" /></h6>
                                    <h4 class="card-title">Juhan</h4>
                                    <h4 class="card-title">이주한</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Juhan</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">이주한</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">정글</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">2001년 8월 31일</dd>
                                            <dt class="info-card_key">우승이력</dt>
                                                <dd><img src="${ctp}/images/pcs.jpg" /> <b>1</b>/<img src="${ctp}/images/worlds.jpg" /> <b>1</b> </dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/fate.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/mid.jpg" /></h6>
                                    <h4 class="card-title">FATE</h4>
                                    <h4 class="card-title">유수혁</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">FATE</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">유수혁</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">미드</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">2000년 8월 22일</dd>
                                            <dt class="info-card__key">Most 3</dt>
                                                <dd class="info-card__value"><img src="${ctp}/images/champ/azir.jpg" />/<img src="${ctp}/images/champ/leblanc.jpg" />/<img src="${ctp}/images/champ/ryze.jpg" /></dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/paduck.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/bot.jpg" /></h6>
                                    <h4 class="card-title">Paduck</h4>
                                    <h4 class="card-title">박석현</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Paduck</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">박석현</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">바텀</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">2005년 2월 12일</dd>
                                            <dt class="info-card__key">Most 3</dt>
                                                <dd class="info-card__value"><img src="${ctp}/images/champ/aphelios.jpg" />/<img src="${ctp}/images/champ/xayah.jpg" />/<img src="${ctp}/images/champ/draven.jpg" /></dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/beryl.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/spt.jpg" /></h6>
                                    <h4 class="card-title">BeryL</h4>
                                    <h4 class="card-title">조건희</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">BeryL</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">조건희</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">서포터</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">1997년 4월 1일</dd>
                                            <dt class="info-card_key">우승이력</dt>
                                                <dd><img src="${ctp}/images/lck.jpg" /> <b>3</b>/<img src="${ctp}/images/worlds.jpg" /> <b>2</b>/ </dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/croco.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/jgl.jpg" /></h6>
                                    <h4 class="card-title">Croco</h4>
                                    <h4 class="card-title">김동범</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Croco</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">김동범</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">정글</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">2000년 2월 23일</dd>
                                            <dt class="info-card__key">Most 3</dt>
                                                <dd class="info-card__value"><img src="${ctp}/images/champ/leesin.jpg" />/<img src="${ctp}/images/champ/trundle.jpg" />/<img src="${ctp}/images/champ/vi.jpg" /></dd>
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
  2015 SBENU LoL Champions Korea Spring/프리시즌 8위<br/>
  2015 SBENU LoL Champions Korea Spring 7위<br/>
  2015 SBENU LoL Champions Korea Summer 9위<br/>
  NAVER 2015 LoL KeSPA Cup 14강<br/>
  2016 꼬깔콘 LoL Champions Korea Spring 7위<br/>
  2016 코카-콜라 제로 LoL Champions Korea Summer 8위<br/>
  2016 LoL KeSPA Cup 14강<br/>
  IEM Season XI - Oakland 4위<br/>
  2017 LoL Champions Korea Spring 7위<br/>
  2017 LoL Champions Korea Summer 우승<br/>
  리그 오브 레전드 2017 월드 챔피언십 8강<br/>
  2017 LoL KeSPA Cup 준우승<br/>
  2018 LoL Champions Korea Spring 우승<br/>
  2018 Mid-Season Invitational 준우승<br/>
  2018 LoL Champions Korea Summer 4위<br/>
  리그 오브 레전드 2018 월드 챔피언십/선발전 2위<br/>
  2018 LoL KeSPA Cup 8강<br/>
  2019 스무살우리 LoL Champions Korea Spring 3위<br/>
  2019 우리은행 LoL Champions Korea Summer 7위<br/>
  리그 오브 레전드 2019 월드 챔피언십/선발전 2위<br/>
  2019 LoL KeSPA Cup ULSAN 4강<br/>
  2020 우리은행 LoL Champions Korea Spring 3위<br/>
  2020 Mid-Season Cup 6강<br/>
  2020 우리은행 LoL Champions Korea Summer 2위<br/>
  리그 오브 레전드 2020 월드 챔피언십 8강<br/>
  2020 LoL KeSPA Cup ULSAN 8강<br/>
  2021 LoL Champions Korea Spring 5위<br/>
  2021 LoL Champions Korea Summer 10위<br/>
  2022 LoL Champions Korea Spring 5위<br/>
  2022 LoL Champions Korea Summer 6위<br/>
  리그 오브 레전드 2022 월드 챔피언십/선발전 2위(진출)<br/>
  리그 오브 레전드 2022 월드 챔피언십 우승<br/>
  2023 LoL Champions Korea Spring 9위
  </p><hr/><br/>
  <button type="button" class="btn btn-info" onclick="location.href='${ctp}/info/teamInfo';">팀 소개</button>
  <button type="button" class="btn btn-danger" onclick="location.href='${ctp}/';">홈으로</button>
</div>
<p><br/></p>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>