<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Dplus KIA</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
<jsp:include page="/WEB-INF/views/include/nav.jsp" />
<jsp:include page="/WEB-INF/views/include/slide2.jsp" />
<p><br/></p>
<div class="container">
  <h1>디플러스 기아</h1>
  <hr/><p>
  Dplus KIA 소속 리그 오브 레전드 프로게임단. 팀 약자는 DK.<br/>
  2017년, 김목경이 만든 팀인 MiraGe Gaming은 사실상 PC방에서 연습하는 아마추어 수준이었다. 그러다가 2017년 중반, 팀이 컴퓨터 모니터 회사인 담원에게 정식으로 인수되며 DAMWON Gaming으로 팀명이 바뀌고 여러 차례의 리빌딩을 통해 제대로 된 팀의 기틀을 갖추기 시작했다. 2018 CK 서머에서 우승을 차지한 이후 1부 리그 승격을 이뤄내고 LCK에서 꾸준히 4위 이상의 성적을 거둔 담원은 2019 리프트 라이벌즈, 2019 월즈, 2020 MSC 등 출전 가능한 국제 대회를 하나도 놓치지 않으며 더욱 가파른 성장을 이룰 수 있었다. 또한 승격 1년 반 만에 2020 LCK 서머에서 승격팀 최초의 우승을 이뤄내는 쾌거를 달성했고, 이러한 기세와 더불어 2020 월즈 우승을 달성하며 LCK의 암흑기를 끝내버렸다. 새로운 네이밍 스폰서 기아로 인해 팀명이 DWG KIA로 변경된 2021년에는 LCK 스프링 - MSI - LCK 서머 - 월즈 네 대회 모두에서 결승에 진출하고 그 중 LCK 스프링과 서머 우승을 차지하며 LCK 유일의 3연속 통합 우승을 달성한 팀이 되었다.
  현재 2023 LoL Champions Korea Summer에 참가 중이며 1라운드에서 5승 4패로 공동 4위를 기록했다. 주장은 ShowMaker 허수 선수다.
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/canna.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/top.jpg" /></h6>
                                    <h4 class="card-title">Canna</h4>
                                    <h4 class="card-title">김창동</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Canna</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">김창동</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">탑</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">2000년 2월 11일</dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/canyon.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/jgl.jpg" /></h6>
                                    <h4 class="card-title">Canyon</h4>
                                    <h4 class="card-title">김건부</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Canyon</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">김건부</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">정글</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">2001년 6월 18일</dd>
                                            <dt class="info-card_key">우승이력</dt>
                                                <dd><img src="${ctp}/images/lck.jpg" /> <b>3</b>/<img src="${ctp}/images/worlds.jpg" /> <b>1</b> </dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/showmaker.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/mid.jpg" /></h6>
                                    <h4 class="card-title">ShowMaker</h4>
                                    <h4 class="card-title">허수</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">ShowMaker</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">허수</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">미드</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">2000년 7월 22일</dd>
                                            <dt class="info-card_key">우승이력</dt>
                                                <dd><img src="${ctp}/images/lck.jpg" /> <b>3</b>/<img src="${ctp}/images/worlds.jpg" /> <b>1</b> </dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/deft.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/bot.jpg" /></h6>
                                    <h4 class="card-title">Deft</h4>
                                    <h4 class="card-title">김혁규</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Deft</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">김혁규</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">바텀</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">1996년 10월 23일</dd>
                                            <dt class="info-card_key">우승이력</dt>
                                                <dd><img src="${ctp}/images/lck.jpg" /> <b>2</b>/<img src="${ctp}/images/lpl.jpg" /> <b>2</b> /<img src="${ctp}/images/msi.jpg" /> <b>1</b> /<img src="${ctp}/images/worlds.jpg" /> <b>1</b>  </dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/bible.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/spt.jpg" /></h6>
                                    <h4 class="card-title">Bible</h4>
                                    <h4 class="card-title">윤설</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Bible</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">윤설</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">서포터</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">1999년 11월 24일</dd>
                                            <dt class="info-card_key">우승이력</dt>
                                                <dd><img src="${ctp}/images/lckcl.jpg" /> <b>2</b> </dd>
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
                                    <p><img class=" img-fluid" src="${ctp}/images/player/kellin.jpg" alt="card image"></p>
                                    <h6 class="card-title"><img src="${ctp}/images/player/spt.jpg" /></h6>
                                    <h4 class="card-title">Kellin</h4>
                                    <h4 class="card-title">김형규</h4>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Kellin</h4><hr/>
                                    <div class="card-text">
                                        <dl class="info-card__list">
                                            <dt class="info-card__key">이름</dt>
                                                <dd class="info-card__value">김형규</dd>
                                            <dt class="info-card__key">포지션</dt>
                                                <dd class="info-card__value">서포터</dd>
                                            <dt class="info-card__key">출생</dt>
                                                <dd class="info-card__value">2001년 2월 1일</dd>
                                            <dt class="info-card__key">Most 3</dt>
                                                <dd class="info-card__value"><img src="${ctp}/images/champ/leona.jpg" />/<img src="${ctp}/images/champ/tahmkench.jpg" />/<img src="${ctp}/images/champ/yuumi.jpg" /></dd>
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
  2017 LoL Challengers Korea Summer/승강전 승격<br/>
  2017 LoL Challengers Korea Summer 5위<br/>
  2017 LoL KeSPA Cup 12강<br/>
  2018 LoL Challengers Korea Spring 4강<br/>
  2018 LoL Challengers Korea Summer 우승<br/>
  2019 스무살우리 LoL Champions Korea Spring/승강전 승격<br/>
  2018 LoL KeSPA Cup 4강<br/>
  2019 스무살우리 LoL Champions Korea Spring 4위<br/>
  2019 우리은행 LoL Champions Korea Summer 3위<br/>
  리그 오브 레전드 2019 월드 챔피언십/선발전 1위<br/>
  리그 오브 레전드 2019 월드 챔피언십 8강<br/>
  2019 LoL KeSPA Cup ULSAN 8위<br/>
  2020 우리은행 LoL Champions Korea Spring 4위<br/>
  2020 Mid-Season Cup 6강<br/>
  2020 우리은행 LoL Champions Korea Summer 6위<br/>
  리그 오브 레전드 2020 월드 챔피언십 우승<br/>
  2020 LoL KeSPA Cup ULSAN 우승<br/>
  2021 LoL Champions Korea Spring 우승<br/>
  2021 Mid-Season Invitational 준우승<br/>
  2021 LoL Champions Korea Summer 우승<br/>
  리그 오브 레전드 2021 월드 챔피언십 준우승<br/>
  2022 LoL Champions Korea Spring 3위<br/>
  2022 LoL Champions Korea Summer 4위<br/>
  리그 오브 레전드 2022 월드 챔피언십/선발전 1위<br/>
  리그 오브 레전드 2022 월드 챔피언십 8강<br/>
  2023 LoL Champions Korea Spring 5위
  </p><hr/><br/>
  <button type="button" class="btn btn-info" onclick="location.href='${ctp}/info/teamInfo';">팀 소개</button>
  <button type="button" class="btn btn-danger" onclick="location.href='${ctp}/';">홈으로</button>
</div>
<p><br/></p>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>