<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- SEO -->
    <link rel="canonical" href="https://korean.visitkorea.or.kr:443/kfes/list/festivalCalendar.do">
    <meta name="Title" content="월별 축제 달력 | 대한민국 구석구석 축제">
    <meta name="keywords" content="국내축제,국내여행,대한민국축제,대한민국구석구석,대한민국구석구석축제.축제,전국축제,지역축제"> <!-- 변동 -->
    <meta name="description" content="전국 방방곡곡에서 열리는 축제 정보를 소개합니다. 전국의 다채로운 축제와 함께 행복하고 즐거운 여행 되세요!"> <!-- 변동 -->

    <meta property="og:locale" content="ko_KR">
    <meta property="og:type" content="website" />
    <meta property="og:title" content="월별 축제 달력 | 대한민국 구석구석 축제">
    <meta property="og:description" content="전국 방방곡곡에서 열리는 축제 정보를 소개합니다. 전국의 다채로운 축제와 함께 행복하고 즐거운 여행 되세요!"> <!-- 변동 -->
    <meta property="og:url" content="https://korean.visitkorea.or.kr:443/kfes/list/festivalCalendar.do" />
    <meta property="og:site_name" content="축제 달력 – 대한민국 구석구석 축제"> <!-- 변동 -->
    <meta property="og:image" content="/kfes/resources/img/seo_festival.png"> <!-- 변동 -->
    <!-- SEO -->

    <title>월별 축제 달력 | 대한민국 구석구석 축제</title>
    <link rel="shortcut icon" href="https://korean.visitkorea.or.kr:443/kfes/resources/img/og_logo.png"/>
    <link rel="stylesheet" href="./resources/css/reset.css">
    <link rel="stylesheet" href="./resources/css/calendar.css">
    <link rel="stylesheet" href="./resources/css/common.css">
    
    <link rel="stylesheet" href="https://kfescdn.visitkorea.or.kr/kfes/resources/css/swiper-bundle@7.css">
    <link rel="stylesheet" href="./resources/js/slick.min.css"/>
    <link rel="stylesheet" href="./recourses/css/video-js.min.css"/>

    <script src="./resources/js/jquery-3.3.1.min.js"></script>
    <script src="./resources/js/greensock/gsap.min.js"></script>
    <script src="./resources/css/video.min.js"></script>
    <script src="./resources/js/slick.min.js"></script>
    <script src="./resources/js/lottie-player.js"></script>
    <script src="./resources/js/common.js"></script>
    <script src="./resources/js/lib/comm.js"></script>

</head>
<body>

<div id="skipToContent">
    <a href="#mainTab">본문 바로가기</a>
    <!--<a href="#btnMenu">주메뉴 바로가기</a>-->
</div>

<header role="banner" class="header_black">
    <div class="inner">
        <a class="homepage_link" href="./index.jsp">SEOULMATE</a>
        <nav role="navigation" class="sub_nav">
            <ul class="sub_menu">
                <li>
                    <a class="home" href="./index.jsp#portfolio">축제메인</a>
                </li>
                <li>
                    <a href="./mvcboard/list.do">
                        <!-- 노티 -->
                        <!-- <div class="ico_lottie_title2">
                          <lottie-player
                            src="../js/confetti.json"
                            speed="1"
                            autoplay
                            loop
                          ></lottie-player>
                        </div> -->
                        관리자추천축제
                    </a>
                </li>
                <li>
                    <a href="./mvcboard/list.do">유저추천축제 </a>
                </li>
                <li>
                    <a href="./calendar.jsp" class="on">축제달력</a><!--a에 on클래스 추가 시 활성화표시-->
                </li>
            </ul>
            <button class="main_search" aria-label="검색버튼"></button>
            




<!------------------------------------------------------------------------ 검색창 ------------------------------------------------------------------------>




<div class="search_box">
    <form name="totalSearchForm" action="/kfes/list/totalSearchList.do" method="post" >
           <div class="search_detail_area">
               <div class="selectBox2 size2">
                  
                   <button class="label" type="button" tabindex="0">축제</button>
                  <ul class="optionList">
                      <li class="optionItem"><div class="searchType" name="ALL" tabindex="0" >전체</div></li>
                      <li class="optionItem"><div class="searchType" name="A" tabindex="0" >축제</div></li>
                      <li class="optionItem"><div class="searchType" name="B" tabindex="0" >여행정보</div></li>
                      <li class="optionItem"><div class="searchType" name="C" tabindex="0">여행기사</div></li>
                      <li class="optionItem"><div class="searchType" name="D" tabindex="0" >이벤트</div></li>
                  </ul>
               </div>
		         <fieldset>
		             <label class="blind2" for="totalSearchText">검색</label>
		             <input id="totalSearchText" name="totalSearchText" class="search_line" title="검색" value="" placeholder="검색어를 입력해주세요." maxlength="40">
		             <button aria-label="검색 버튼" onclick="fn_totalSearch();"></button>
		         </fieldset>
           </div>

        









<ul>
	
		<li><a href="/kfes/list/wntyFstvlList.do?tagNm=친구와함께">#친구와함께</a></li>
	
		<li><a href="/kfes/list/wntyFstvlList.do?tagNm=여름">#여름</a></li>
	
		<li><a href="/kfes/list/wntyFstvlList.do?tagNm=먹거리">#먹거리</a></li>
	
		<li><a href="/kfes/list/wntyFstvlList.do?tagNm=나들이">#나들이</a></li>
	
		<li><a href="/kfes/list/wntyFstvlList.do?tagNm=공연">#공연</a></li>
	
		<li><a href="/kfes/list/wntyFstvlList.do?tagNm=맥주">#맥주</a></li>
	
</ul>
    </form>
    <button class="search_box_close" aria-label="닫기 버튼"></button>
</div>

<!------------------------------------------------------------------------ 검색창 끝 ------------------------------------------------------------------------>

        </nav>
    </div>

    <!-- 2023. 02. 01 header fixed menu 추가 -->
    <div class="inner header fixed">
        <nav class="scroll_theme" role="navigation">
            <ul class="sub_menu festival scroll">
                <li>
                    <ul class="menu">
                        <li>
                            <a href="/">
                                <div class="home2">home button</div>
                                <!-- 2023. 02. 28 타이틀 추가 -->
                                <span class="main_title">축제 메인</span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>
</header>

<main role="main" id="mainTab">
    <div class="wrap">
        <section class="poster_slide" role="region">
            <div class="inner_full">
                <div class="inner theme_detail">
                    <!-- 좋아요, 공유하기, 조회수  com.ktovisitkorea.kfes.framework.model ResultCamelMap -->
                    <!-- //좋아요, 공유하기, 조회수 -->
                </div>
            </div>

            <!-- ㄱ-->
            <div class="inner_full">
                <div class="editor">
                    <div class="editor_box">
                        <!-- [D] 에디터에 넣을 부분 - (start) -->

                        <!-- start calendar -->
                        <div class="editor_inner">
                            <script src="jquery.rwdImageMaps.min.js"></script><!--img-map 반응형소스-->

                            <div class="festival_calendar">
                                <section class="calendar_wrap">
                                    <div class="inner">
                                        <h3>월별 축제 달력</h3>
                                        <div class="month_btn">
                                            <span id="currentYearMonth">2024.8</span>
                                            <div class="arrowbtn">
                                                <button type="button" class="prev" onclick="fetchPrevMonth();">이전</button>
                                                <button type="button" class="next" onclick="fetchNextMonth();">다음</button>
                                            </div>
                                        </div>
                                        <div class="calendar">
                                            <table>
                                                <caption>
                                                    문화관광축제 - 축제 캘린더
                                                </caption>
                                                <colgroup>
                                                    <col style="width: calc(100% / 7)">
                                                    <col style="width: calc(100% / 7)">
                                                    <col style="width: calc(100% / 7)">
                                                    <col style="width: calc(100% / 7)">
                                                    <col style="width: calc(100% / 7)">
                                                    <col style="width: calc(100% / 7)">
                                                    <col style="width: calc(100% / 7)">
                                                </colgroup>
                                                <thead>
                                                <tr>
                                                    <th scope="col" class="holiday">일<span></span></th>
                                                    <th scope="col">월<span></span></th>
                                                    <th scope="col">화<span></span></th>
                                                    <th scope="col">수<span></span></th>
                                                    <th scope="col">목<span></span></th>
                                                    <th scope="col">금<span></span></th>
                                                    <th scope="col" class="saturday">토<span></span></th>
                                                </tr>
                                                </thead>
													<tbody id="calendar">
														<tr>
															<td>&nbsp;</td>
															<td>&nbsp;</td>
															<td>&nbsp;</td>
															<td>&nbsp;</td>
															<td>&nbsp;</td>
															<td>&nbsp;</td>
															<td class="saturday calendar_day" data-day="1"><a
																href="javascript:;"> <strong>1</strong> <span><em>33개</em></span>
															</a></td>
														</tr>
														<tr>
															<td class="holiday calendar_day" data-day="2"><a
																href="javascript:;"> <strong>2</strong> <span><em>33개</em></span>
															</a></td>
															<td class="calendar_day" data-day="3"><a
																href="javascript:;"> <strong>3</strong> <span><em>33개</em></span>
															</a></td>
															<td class="calendar_day" data-day="4"><a
																href="javascript:;"> <strong>4</strong> <span><em>33개</em></span>
															</a></td>
															<td class="calendar_day" data-day="5"><a
																href="javascript:;"> <strong>5</strong> <span><em>35개</em></span>
															</a></td>
															<td class="calendar_day" data-day="6"><a
																href="javascript:;"> <strong>6</strong> <span><em>35개</em></span>
															</a></td>
															<td class="calendar_day" data-day="7"><a
																href="javascript:;"> <strong>7</strong> <span><em>35개</em></span>
															</a></td>
															<td class="saturday calendar_day" data-day="8"><a
																href="javascript:;"> <strong>8</strong> <span><em>36개</em></span>
															</a></td>
														</tr>
														<tr>
															<td class="holiday calendar_day" data-day="9"><a
																href="javascript:;"> <strong>9</strong> <span><em>36개</em></span>
															</a></td>
															<td class="calendar_day" data-day="10"><a
																href="javascript:;"> <strong>10</strong> <span><em>36개</em></span>
															</a></td>
															<td class="calendar_day" data-day="11"><a
																href="javascript:;"> <strong>11</strong> <span><em>36개</em></span>
															</a></td>
															<td class="calendar_day" data-day="12"><a
																href="javascript:;"> <strong>12</strong> <span><em>36개</em></span>
															</a></td>
															<td class="calendar_day" data-day="13"><a
																href="javascript:;"> <strong>13</strong> <span><em>36개</em></span>
															</a></td>
															<td class="calendar_day" data-day="14"><a
																href="javascript:;"> <strong>14</strong> <span><em>37개</em></span>
															</a></td>
															<td class="saturday calendar_day" data-day="15"><a
																href="javascript:;"> <strong>15</strong> <span><em>40개</em></span>
															</a></td>
														</tr>
														<tr>
															<td class="holiday calendar_day" data-day="16"><a
																href="javascript:;"> <strong>16</strong> <span><em>40개</em></span>
															</a></td>
															<td class="calendar_day on" data-day="17"><a
																href="javascript:;" title="선택됨"> <strong>17</strong>
																	<span><em>41개</em></span>
															</a></td>
															<td class="calendar_day" data-day="18"><a
																href="javascript:;"> <strong>18</strong> <span><em>42개</em></span>
															</a></td>
															<td class="calendar_day" data-day="19"><a
																href="javascript:;"> <strong>19</strong> <span><em>42개</em></span>
															</a></td>
															<td class="calendar_day" data-day="20"><a
																href="javascript:;"> <strong>20</strong> <span><em>43개</em></span>
															</a></td>
															<td class="calendar_day" data-day="21"><a
																href="javascript:;"> <strong>21</strong> <span><em>50개</em></span>
															</a></td>
															<td class="saturday calendar_day" data-day="22"><a
																href="javascript:;"> <strong>22</strong> <span><em>53개</em></span>
															</a></td>
														</tr>
														<tr>
															<td class="holiday calendar_day" data-day="23"><a
																href="javascript:;"> <strong>23</strong> <span><em>50개</em></span>
															</a></td>
															<td class="calendar_day" data-day="24"><a
																href="javascript:;"> <strong>24</strong> <span><em>35개</em></span>
															</a></td>
															<td class="calendar_day" data-day="25"><a
																href="javascript:;"> <strong>25</strong> <span><em>34개</em></span>
															</a></td>
															<td class="calendar_day" data-day="26"><a
																href="javascript:;"> <strong>26</strong> <span><em>36개</em></span>
															</a></td>
															<td class="calendar_day" data-day="27"><a
																href="javascript:;"> <strong>27</strong> <span><em>36개</em></span>
															</a></td>
															<td class="calendar_day" data-day="28"><a
																href="javascript:;"> <strong>28</strong> <span><em>38개</em></span>
															</a></td>
															<td class="saturday calendar_day" data-day="29"><a
																href="javascript:;"> <strong>29</strong> <span><em>39개</em></span>
															</a></td>
														</tr>
														<tr>
															<td class="holiday calendar_day" data-day="30"><a
																href="javascript:;"> <strong>30</strong> <span><em>38개</em></span>
															</a></td>
															<td>&nbsp;</td>
															<td>&nbsp;</td>
															<td>&nbsp;</td>
															<td>&nbsp;</td>
															<td>&nbsp;</td>
															<td>&nbsp;</td>
														</tr>
													</tbody>
												</table>
                                        </div>
                                    </div>
                                </section>
                                <!-- end calendar  -->


                                <!-- start 축제 리스트 -->
                                <section class="other_list type2" role="region">
                                    <div class="inner">
                                        <div class="other_festival" role="application">
                                            <div class="tab_cont_area" style="" id="list_container">
                                                <h4>축제 리스트</h4>
                                                <ul class="other_festival_ul" id="list">    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=5371392a-7201-4a95-bdd3-84487dcf38cd&amp;cntntsNm=화담숲여름수국축제">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_5371392a-7201-4a95-bdd3-84487dcf38cd_1.PNG" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>화담숲 여름 수국 축제</strong>				<div class="date">2024.06.17~2024.08.23</div>				<div class="loc">경기도 광주시</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=e12d7a91-c6ad-45b0-8b9d-e2f7b1b4b598&amp;cntntsNm=이월드트로피컬아쿠아월드">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_e12d7a91-c6ad-45b0-8b9d-e2f7b1b4b598_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>이월드 트로피컬 아쿠아월드</strong>				<div class="date">2024.06.15~2024.08.31</div>				<div class="loc">대구 달서구</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=99c16eae-7521-4a96-b243-1797a2c05139&amp;cntntsNm=아침고요수목원수국전시회">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_99c16eae-7521-4a96-b243-1797a2c05139_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>아침고요수목원 수국전시회</strong>				<div class="date">2024.06.15~2024.07.14</div>				<div class="loc">경기도 가평군</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=e38b4d3b-f98a-49d7-95e7-7f43aba07c40&amp;cntntsNm=원동면여름을담다">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_e38b4d3b-f98a-49d7-95e7-7f43aba07c40_1.png" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>원동면 여름을 담다</strong>				<div class="date">2024.06.15~2024.07.14</div>				<div class="loc">경상남도 양산시</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=1956b24f-8112-46d0-8f1f-af4a62d0f4c1&amp;cntntsNm=인제캠프레이크페스티벌">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_1956b24f-8112-46d0-8f1f-af4a62d0f4c1_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>인제 캠프레이크 페스티벌</strong>				<div class="date">2024.06.14~2024.06.23</div>				<div class="loc">강원도 인제군</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=848e50c9-b824-4683-a028-2809a5ec23bb&amp;cntntsNm=무릉별유천지라벤더축제">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_848e50c9-b824-4683-a028-2809a5ec23bb_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>무릉별유천지 라벤더축제</strong>				<div class="date">2024.06.08~2024.06.23</div>				<div class="loc">강원도 동해시</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=3f07c164-f919-4287-949a-34f65981eb2b&amp;cntntsNm=휴애리여름수국축제">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_3f07c164-f919-4287-949a-34f65981eb2b_1.png" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>휴애리 여름 수국축제</strong>				<div class="date">2024.06.05~2024.07.21</div>				<div class="loc">제주도 서귀포시</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=e594b30e-c58e-48a7-854e-1ff7eb9185b4&amp;cntntsNm=하늬팜라벤더축제">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_e594b30e-c58e-48a7-854e-1ff7eb9185b4_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>하늬팜 라벤더축제		</strong>				<div class="date">2024.06.05~2024.06.23</div>				<div class="loc">강원도 고성군</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=fb936bb1-1b77-40ed-9bb5-995f5c5abdae&amp;cntntsNm=율봄식물원토마토시즌">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_fb936bb1-1b77-40ed-9bb5-995f5c5abdae_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>율봄식물원 토마토 시즌</strong>				<div class="date">2024.06.01~2024.07.21</div>				<div class="loc">경기도 광주시</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=87e9ae08-36f2-4f02-bdc7-37510d3bfa82&amp;cntntsNm=무로이수국축제">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_87e9ae08-36f2-4f02-bdc7-37510d3bfa82_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>무로이 수국 축제</strong>				<div class="date">2024.06.01~2024.06.30</div>				<div class="loc">제주도 서귀포시</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=b73efaf4-778f-44fb-b97a-c18056c6d8a1&amp;cntntsNm=코리아뷰티페스티벌">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_b73efaf4-778f-44fb-b97a-c18056c6d8a1_1.png" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>코리아뷰티페스티벌</strong>				<div class="date">2024.06.01~2024.06.30</div>				<div class="loc">서울 중구</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=62490e07-d830-4720-b528-88fbfd50c730&amp;cntntsNm=제주민속촌수국축제">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_62490e07-d830-4720-b528-88fbfd50c730_1.png" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>제주민속촌 수국축제</strong>				<div class="date">2024.06.01~2024.06.23</div>				<div class="loc">제주도 서귀포시</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=9759605a-ba6a-4a01-b430-8deffe9960fa&amp;cntntsNm=K푸드페스티벌넉넉">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_9759605a-ba6a-4a01-b430-8deffe9960fa_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>K-푸드 페스티벌 넉넉</strong>				<div class="date">2024.05.29~2025.05.31</div>				<div class="loc">서울 종로구</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=2cd0c3d5-7e0e-4d02-bd5b-c37ed3736510&amp;cntntsNm=문화가있는날청춘마이크충청권">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_2cd0c3d5-7e0e-4d02-bd5b-c37ed3736510_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>문화가 있는 날 청춘마이크 충청권</strong>				<div class="date">2024.05.29~2024.12.01</div>				<div class="loc">대전 서구</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=4dc65cd3-bdcd-40e2-bfbe-684501b7f268&amp;cntntsNm=고창청농원라벤더시즌">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_4dc65cd3-bdcd-40e2-bfbe-684501b7f268_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>고창청농원 라벤더시즌</strong>				<div class="date">2024.05.24~2024.06.23</div>				<div class="loc">전북특별자치도 고창군</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=08038b9e-b0de-4f2a-b4f4-f03675a63985&amp;cntntsNm=여름꽃능소화축제">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_08038b9e-b0de-4f2a-b4f4-f03675a63985_1.JPG" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>여름꽃 &amp; 능소화축제</strong>				<div class="date">2024.05.15~2024.07.20</div>				<div class="loc">제주도 제주시</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=29fd322f-b5c3-4187-90be-68d951de0077&amp;cntntsNm=웨이뷰메밀꽃축제">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_29fd322f-b5c3-4187-90be-68d951de0077_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>웨이뷰 메밀꽃 축제</strong>				<div class="date">2024.05.15~2024.06.30</div>				<div class="loc">제주도 제주시</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=a93c2057-4e06-4abb-865c-2604f64b22d6&amp;cntntsNm=양평메기수염축제">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_a93c2057-4e06-4abb-865c-2604f64b22d6_1.JPG" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>양평메기수염축제</strong>				<div class="date">2024.05.11~2024.09.08</div>				<div class="loc">경기도 양평군</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=b8f9f3e0-3144-4482-855b-012cca641893&amp;cntntsNm=DMZOPEN페스티벌">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_b8f9f3e0-3144-4482-855b-012cca641893_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>DMZ OPEN 페스티벌</strong>				<div class="date">2024.05.09~2024.11.16</div>				<div class="loc">경기도 파주시</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=0b953976-095b-41ae-bb3a-ad54acaab94d&amp;cntntsNm=차없는잠수교뚜벅뚜벅축제">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_0b953976-095b-41ae-bb3a-ad54acaab94d_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>차 없는 잠수교 뚜벅뚜벅축제</strong>				<div class="date">2024.05.05~2024.06.23</div>				<div class="loc">서울 서초구</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=5fed1f2a-ffe8-4e03-806f-65cbd2096f22&amp;cntntsNm=구팔일올데이페스티벌">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_5fed1f2a-ffe8-4e03-806f-65cbd2096f22_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>구팔일 올데이 페스티벌</strong>				<div class="date">2024.05.04~2024.08.31</div>				<div class="loc">제주도 제주시</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=d2f258a8-33c2-4cd9-8736-41be5c9407d7&amp;cntntsNm=낭만등불축제">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_d2f258a8-33c2-4cd9-8736-41be5c9407d7_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>낭만등불축제</strong>				<div class="date">2024.05.01~2025.04.30</div>				<div class="loc">경기도 남양주시</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=e12518da-0897-47cf-88c9-a84d524ce53c&amp;cntntsNm=제주민속촌민속체험축제">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_e12518da-0897-47cf-88c9-a84d524ce53c_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>제주민속촌 민속체험축제</strong>				<div class="date">2024.05.01~2024.12.31</div>				<div class="loc">제주도 서귀포시</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=9ed89f05-c7f6-46e6-9376-64fdabb22935&amp;cntntsNm=벽초지수목원봄꽃축제">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_9ed89f05-c7f6-46e6-9376-64fdabb22935_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>벽초지수목원 봄꽃축제</strong>				<div class="date">2024.04.19~2024.06.30</div>				<div class="loc">경기도 파주시</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=8129adef-6a10-4b6e-857e-3390fd96d74a&amp;cntntsNm=한국의집고호재">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_8129adef-6a10-4b6e-857e-3390fd96d74a_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>한국의집 고호재</strong>				<div class="date">2024.01.01~2024.12.31</div>				<div class="loc">서울 중구</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=a1fb2900-8fdf-4c70-979d-39c05b65ee07&amp;cntntsNm=허브아일랜드불빛동화축제">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_a1fb2900-8fdf-4c70-979d-39c05b65ee07_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>허브아일랜드 불빛동화축제</strong>				<div class="date">2024.01.01~2024.12.31</div>				<div class="loc">경기도 포천시</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=a8fcf987-666e-404e-9446-0a7f787e83fb&amp;cntntsNm=서울랜드불빛축제루나파크">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_a8fcf987-666e-404e-9446-0a7f787e83fb_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>서울랜드 불빛축제 루나파크</strong>				<div class="date">2024.01.01~2024.12.31</div>				<div class="loc">경기도 과천시</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=f08854b6-4f5d-471f-9a3f-fb340fd9da20&amp;cntntsNm=안산별빛마을애니멀하트빌리지빛축제">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_f08854b6-4f5d-471f-9a3f-fb340fd9da20_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>안산별빛마을 애니멀 &amp; 하트빌리지 빛축제</strong>				<div class="date">2024.01.01~2024.12.31</div>				<div class="loc">경기도 안산시</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=7be130ae-d136-45d7-9a5c-de3af5691c16&amp;cntntsNm=태안빛축제">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_7be130ae-d136-45d7-9a5c-de3af5691c16_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>태안 빛축제</strong>				<div class="date">2023.01.01~2024.12.31</div>				<div class="loc">충청남도 태안군</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=3a7630df-c1da-4c3c-a0c0-21923699b312&amp;cntntsNm=경복궁생과방">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_3a7630df-c1da-4c3c-a0c0-21923699b312_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>경복궁 생과방</strong>				<div class="date">2024.04.17~2024.06.24</div>				<div class="loc">서울 종로구</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=32efce47-9085-4c4c-b0db-7bca0c8739f4&amp;cntntsNm=한강역사탐방">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_32efce47-9085-4c4c-b0db-7bca0c8739f4_1.JPG" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>한강역사탐방</strong>				<div class="date">2024.04.15~2024.11.30</div>				<div class="loc">서울 영등포구</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=51949bb6-8817-413e-bb5e-9b68b36793ff&amp;cntntsNm=마노르블랑수국축제">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_51949bb6-8817-413e-bb5e-9b68b36793ff_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>마노르블랑 수국축제</strong>				<div class="date">2024.04.10~2024.08.31</div>				<div class="loc">제주도 서귀포시</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=449344da-1a0f-45a5-9d00-73011ab3aa3c&amp;cntntsNm=한국민속촌조선살인수사">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_449344da-1a0f-45a5-9d00-73011ab3aa3c_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>한국민속촌 조선살인수사</strong>				<div class="date">2024.04.06~2024.11.10</div>				<div class="loc">경기도 용인시</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=b2c4fc5a-5ff9-4d32-9039-5093bea59f83&amp;cntntsNm=한국민속촌살귀옥AHauntedPrison">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_b2c4fc5a-5ff9-4d32-9039-5093bea59f83_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>한국민속촌 살귀옥, A Haunted Prison</strong>				<div class="date">2024.04.06~2024.11.10</div>				<div class="loc">경기도 용인시</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=9f1838dd-f39e-4599-aafe-6c5ea3b8cc45&amp;cntntsNm=서울거리공연구석구석라이브">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_9f1838dd-f39e-4599-aafe-6c5ea3b8cc45_1.png" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>서울거리공연 구석구석 라이브</strong>				<div class="date">2024.04.01~2024.11.30</div>				<div class="loc">서울 용산구</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=438bf21f-58a5-4ddd-b3cf-30e332b49d3c&amp;cntntsNm=부산국제매직페스티벌">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_438bf21f-58a5-4ddd-b3cf-30e332b49d3c_1.png" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>부산국제매직페스티벌</strong>				<div class="date">2024.03.23~2024.12.15</div>				<div class="loc">부산 남구</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=220371a8-ec85-46b7-8bb0-30afa9a93a19&amp;cntntsNm=구팔일댕댕이레이싱">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_220371a8-ec85-46b7-8bb0-30afa9a93a19_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>구팔일 댕댕이 레이싱!</strong>				<div class="date">2024.03.02~2024.07.20</div>				<div class="loc">제주도 제주시</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=3252dcb7-7b01-4e9d-84c0-bccfd010bffb&amp;cntntsNm=청도프로방스빛축제">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_3252dcb7-7b01-4e9d-84c0-bccfd010bffb_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>청도 프로방스 빛축제</strong>				<div class="date">2024.02.19~2024.11.17</div>				<div class="loc">경상북도 청도군</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=0cc87ae6-c8ee-470a-8941-15318e0a5048&amp;cntntsNm=서창별빛거리">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_0cc87ae6-c8ee-470a-8941-15318e0a5048_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>서창별빛거리</strong>				<div class="date">2024.02.01~2024.12.31</div>				<div class="loc">인천 남동구</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=ad5c67ee-205c-4cba-964e-6c0b968996da&amp;cntntsNm=만수천빛의거리">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_ad5c67ee-205c-4cba-964e-6c0b968996da_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>만수천 빛의거리</strong>				<div class="date">2024.02.01~2024.12.31</div>				<div class="loc">인천 남동구</div>	    	</div>		</a>    </li>    <li><a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=62bbfc61-0c83-4108-be6b-304cc3d471bc&amp;cntntsNm=별빛이흐르는정원">	    	<div class="other_festival_img  open">				<img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_62bbfc61-0c83-4108-be6b-304cc3d471bc_1.jpg" alt="" onerror="this.src='/kfes/resources/img/default_list.png';">        <span class="open">개최중</span>				<div class="sing_area">		    		<div class="blind">문화 관광 축제</div>				</div>	    	</div>	    	<div class="other_festival_content">				<strong>별빛이 흐르는 정원</strong>				<div class="date">2024.01.01~2024.12.31</div>				<div class="loc">경기도 파주시</div>	    	</div>		</a>    </li></ul>
                                                <!-- 더보기 button -->
                                                <!-- <button class="list_more_btn" onclick="javascript:;">더보기 (0/0)</button> -->
                                                <button class="list_more_btn" id="btnMore" onclick="javascript:;">더보기 (41/41)</button>
                                                <!-- //더보기 button -->
                                            </div>
                                            <!--2023cal 축제 없을 때 display:block-->
                                            <div class="tab_cont_area list_none" style="display: none;" id="list_default">
                                                <img src="./resources/assets/img/calendar/img_mnocal.png" alt="">
                                                <p>달력에서 날짜를 선택해주세요.</p>
                                                <span>선택한 날짜에 개최 중인 축제 정보를 보여드립니다.</span>
                                            </div>
                                            <div class="tab_cont_area list_none" style="display: none;" id="list_empty">
                                                <img src="/kfes/resources/img/calendar/img_mnocal.png" alt="">
                                                <p>선택한 일자에 진행하는 축제가 없습니다.</p>
                                                <span>다른 일자를 선택해주세요.</span>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </div> <!-- end festival_calendar  todo : 위치 관련해서 에러날 수 있음 -->
                        </div> <!-- end edit inner -->

                        <script>
                            $(document).ready(function () {
                                $("img[usemap]").rwdImageMaps();
                            });
                        </script>
                        <!-- [D] 에디터에 넣을 부분 - (end) -->
                    </div>
                </div>
            </div>
        </section>
    </div>
</main>

<!-- start footer -->
<footer role="contentinfo">
    <div class="footer_inner">
        <div class="top_util">
            <ul class="top_util_ul">
                









<li><a href="https://korean.visitkorea.or.kr/term/term03.do" target="_blank" title="개인정보처리방침">개인정보처리방침</a></li>
<li><a href="https://korean.visitkorea.or.kr/term/term02.do" target="_blank" title="이용약관">이용약관</a></li>
<li><a href="https://knto.or.kr/helpdeskCopyrightguide" target="_blank" title="새창 열림">저작권정책</a></li>
<li><a href="https://knto.or.kr/charter" target="_blank" title="새창 열림">고객서비스헌장</a></li>
<li><a href="https://knto.or.kr/helpdeskPolicyEmailrejection" target="_blank" title="새창 열림">전자우편무단수집거부</a></li>
<li><a href="https://knto.or.kr/mapHead" target="_blank" title="새창 열림">찾아오시는 길</a></li>
<li><a href="/kfes/common/faq.do" style="font-weight: 600;">자주 묻는 질문</a></li>




            </ul>
            <address>
                <ul>
                    









<li>경기도 의정부시 시민로 80 센트럴타워 7층 그린컴퓨터아카데미</li>
<li>TEL : <a href="tel:000-0000-000">000-0000-0000</a></li>
<li>사업자등록번호 : 없슴니다</li>
<li>통신판매업신고 : 없슴니다</li>
                </ul>
            </address>
        </div>
        <div class="footer_bottom">
            <span class="copyright">&copy; TEAM_KEAM</span>
            <ul class="family_f_logo">
                









<li>
    <a href="https://www.wa.or.kr/board/list.asp?search=total&SearchString=%B4%EB%C7%D1%B9%CE%B1%B9%20%B1%B8%BC%AE%B1%B8%BC%AE&BoardID=0006"
       target="_blank" title="새창 열림">
        <img src="/kfes/resources/img/f_logo1.png" class="pc" alt="과학기술정보통신부 WEB접근성">
        <img src="/kfes/resources/img/f_logo1_m.png" class="mo" alt="과학기술정보통신부 WEB접근성">
    </a>
</li>


<li><a href="https://conlab.visitkorea.or.kr" target="_blank" title="새창 열림">
    <img src="/kfes/resources/img/f_logo2.png" class="pc" alt="콘랩">
    <img src="/kfes/resources/img/f_logo2_m.png" class="mo" alt="콘랩">
</a></li>

<li><a href="https://kto.visitkorea.or.kr" target="_blank" title="새창 열림">
    <img src="/kfes/resources/img/f_logo3.png" class="pc" alt="한국관광공사">
    <img src="/kfes/resources/img/f_logo3_m.png" class="mo" alt="한국관광공사">
</a></li>

<li><a href="https://www.mcst.go.kr" target="_blank" title="새창 열림">
    <img src="/kfes/resources/img/f_logo4.png" class="pc" alt="문화체육관광부">
    <img src="/kfes/resources/img/f_logo4_m.png" class="mo" alt="문화체육관광부">

</a></li>
            </ul>
        </div>
    </div>
</footer>
<!-- end footer -->

<!-- start 공유하기 좋아요 -->

<script src="https://kfescdn.visitkorea.or.kr/kfes/resources/js/swiper-bundle@7.js"></script>
<script type="text/javascript" src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=&libraries=services,clusterer"></script>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.1.0/kakao.min.js" integrity="sha384-dpu02ieKC6NUeKFoGMOKz6102CLEWi9+5RQjWSV0ikYSFFd8M3Wp2reIcquJOemx" crossorigin="anonymous"></script>


<!-- start 달력 스크립트 -->

<script>

    const today = new Date()
    let currentYear = today.getFullYear();
    let currentMonth = today.getMonth() + 1;
    //let currentMonth = today.getMonth();
    let currentDay = 0;
    let spage = 0;
    let scnt = 12;
    let totCnt = 0;
    let curDate = "20240617";
    const listDefault = $('#list_default');   // 리스트를 선택해주세요 ( 즉 날짜 선택안하고 처음 화면 )
    const listEmpty = $('#list_empty');       // 해당 날짜에 리스트가 없을때
    const listContainer = $('#list_container'); // 해당 날짜에 리스트가 있을때
    const list = $('#list'); // 축제 리스트

    // listDefault, listEmpty, listContainer 3개 전달된 id 값을 가진 화면 요소를 선택하고, 나머지는 숨긴다.

    //var year = 2023;
    //var month = 6 - 1;

    // listDefault, listEmpty, listContainer 3개 전달된 id 값을 가진 화면 요소를 선택하고, 나머지는 숨긴다.
    const switchList = function(id) {
        const array = [listDefault, listEmpty, listContainer];
        for (let i in array) {
            array[i].hide();
        }
        $('#' + id).show();
    }

    window.addEventListener('load', async function() {
        //debugger;

        let calendar = await fetch(currentYear, currentMonth);

        if (calendar) {
            currentDay = today.getDate();
            //console.log("currentDay = " + currentDay);
            document.querySelector('[data-day="' + currentDay + '"]').click();
        }
    })


    // // list_default 로 화면 시작
    // $(document).ready(function() {
    //     // switchList(listContainer);
    //
    //     //fetch(year, month);
    //
    //     currentDay = today.getDate();
    //     console.log(currentDate);
    //     getContentList(spage);
    //
    //
    //     // 해당하는 요소를 찾고 클릭 이벤트를 트리거합니다.
    //     // let todayElement = $('.calendar_day[data-day="' + todayDay + '"]');
    //     // todayElement.click();
    // });


    //const year = currentYear;     // 현재 선택된 연도,월,일
    //const month = currentMonth;

    function fetch(year, month) {
        //console.log(" year + month = "+year,month)
        return new Promise((resolve, reject) => {
            $.ajax({
                //url: "http://localhost:8080/list/festivalCalendarUp.do?year=" + year + "&month=" + month,
                url: "/kfes/list/festivalCalendarUp.do?year=" + year + "&month=" + month,
                type: "GET",
                dataType: "json",
                headers: {
                    'Accept': 'application/json'
                },
                success: function (res) {
                    //console.log("@@성공", res);
                    const tbody = document.getElementById('calendar');

                    $('#currentYearMonth').text(currentYear + '.' + currentMonth)  //최근 year + month 가져오기

                    let html = '';
                    let day = 1;
                    for (let i = 0; i < res.data.length; i++) { // 첫번째 for문 : row ( 월 ~ 일 요일) todo : length 에러 res.data[0].length가 7이 아니라 5로 나타남

                        html += '<tr>';
                        for (let j = 0; j < res.data[i].length; j++) {
                            // debugger;

                            const count = res.data[i][j].count;

                            //console.log("const count = "+ count)
                            const isSpecial = res.data[i][j].isSpecial; // 해당 날짜가 공휴일인지 여부 확인
                            if (count === -1){
                                html += '  <td>&nbsp;</td>'; // 빈칸
                            } else {
                                if (isSpecial || j === 0) { // 조건식이 참(true)이면 특별한 날로 해당 날짜를 표시
                                    html += '  <td class="holiday calendar_day" data-day="' + day + '">';
                                } else if (j === 6) { // 토요일 -> 주말
                                    html += '  <td class="saturday calendar_day" data-day="' + day + '">';
                                } else {
                                    html += '  <td class="calendar_day" data-day="' + day + '">';
                                }


                                html += '		<a href="javascript:;">' +
                                    '			<strong>' + (day++) + '</strong>' +
                                    '			<span><em>' + count + '개</em></span>' +
                                    '		</a>' +
                                    '  </td>';
                            }

                        } // end for2
                        html += '</tr>';

                    } // end for1
                    tbody.innerHTML = html;

                    const calendarDays = $('.calendar_day'); // calendar_day 클래스들
                    for (let i =0; i <calendarDays.length; i++) {
                        calendarDays[i].addEventListener('click', function(e) { // 모든 날짜 클릭시
                            daysRemoveOn()
                            const day = this;
                            enableScrollEvent();
                            day.className = day.className.replace('calendar_day', 'calendar_day on'); // calendar_day -> calendar_day on 변경 ( 즉 클릭 on )
                            $('.festival_calendar table tbody td.on a').attr('title','선택됨'); //
                                                                                             //CSS 선택자 형식 :  table / tbody / td 엘리멘트 중 on 클래스를 가진거 / td.on 내부에 있는 a 태그를 찾는것
                            currentDay = day.dataset.day; // 현재 날짜 지정
                            //alert(currentDay)
                            $('#list').empty(); // 다른 날짜 클릭시 기존 리스트 리셋

                            spage = 0; // spage = 0부터 명시
                            getContentList(spage); // 해당 날짜 클릭시 축제 리스트 목록 불러오기 (페이지 목록 0부터)
                        });
                    }

                    resolve(true);
                }, // end success
                error: function (err) {
                    //console.log("##오류", err);
                }
            });
        });
    } // end fetch

    //날짜 버튼 클릭 이벤트
    function clickDay(e) { // 모든 날짜 클릭시
        daysRemoveOn()
        const day = this;
        enableScrollEvent();
        day.className = day.className.replace('calendar_day', 'calendar_day on'); // calendar_day -> calendar_day on 변경 ( 즉 클릭 on )
        $('.festival_calendar table tbody td.on a').attr('title','선택됨'); //
                                                                         //CSS 선택자 형식 :  table / tbody / td 엘리멘트 중 on 클래스를 가진거 / td.on 내부에 있는 a 태그를 찾는것
        currentDay = day.dataset.day; // 현재 날짜 지정
        //alert(currentDay)
        $('#list').empty(); // 다른 날짜 클릭시 기존 리스트 리셋

        spage = 0; // spage = 0부터 명시
        getContentList(spage); // 해당 날짜 클릭시 축제 리스트 목록 불러오기 (페이지 목록 0부터)
    };

    // 클릭시 기존에 강조되어 있던 날짜에 대한 강조UI를 원래 상태로
    const daysRemoveOn = function() {
        const calendarDays = document.getElementsByClassName('calendar_day');
        for (let i = 0; i < calendarDays.length; i++) {
            const day = calendarDays[i];
            $('.festival_calendar table tbody td.on a').attr('title','');
            day.className = day.className.replace('calendar_day on', 'calendar_day');
        }
    }

    // 이전
    const fetchPrevMonth = function() {
        if (currentMonth === 1) {
            currentMonth = 12;
            currentYear--;
        } else {
            currentMonth--;
        }
        fetch(currentYear, currentMonth); // 변경된 year + month로 fetch 즉 다시 달력을 호출한다
        switchList('list_default'); // 달력 밑 리스트는 default 상태
        currentDay = null;
        enableScrollEvent();
    }

    // 다음
    const fetchNextMonth = function() {
        if (currentMonth === 12) {
            currentMonth = 1;
            currentYear++;
        } else {
            currentMonth++;
        }
        fetch(currentYear, currentMonth);
        switchList('list_default');
        currentDay = null;
        enableScrollEvent();
    }


    var pagingInfo = {
        rowNum : 0    // res.resultList[res.resultList.length - 1].rowNum;  // 리스트 페이징 처리 + limit 12
        , totalCnt : 0 // res.totalCnt; // * totalCnt 전체 리스트 항목의 개수
    };


    //let pageNumber = 0;

    // 목록 리스트 담아오기
    const getContentList = function(page) {  // page 해당 페이지 1
        isLoading = true; // 페이지 로딩 시작
        const year = currentYear;     // 현재 선택된 연도,월,일
        const month = currentMonth;
        const day = currentDay;

        var imgOnErrorStr = 'onerror="this.src=\'/kfes/resources/img/default_list.png\';"';
        $.ajax({
            //url: "http://localhost:8080/list/festivalCalendarList.do?year=" + year + "&month=" + month + "&day=" + day + "&page=" + page + "&offset=" + scnt,
            url: "/kfes/list/festivalCalendarList.do?year=" + year + "&month=" + month + "&day=" + day + "&page=" + page + "&offset=" + scnt,
            type: "GET",
            dataType: "json",
            headers: {
                'Accept': 'application/json'
            }, // data -> 서버에 보낼 데이터 지정
            data : {
                //page : spage -1,
                //page : pageNumber,
                //offset: 12,
                //   page: spage,
                //   offset: scnt
            },
            success: function (res) {
                //console.log("List 성공", res);
                let html = '';
                totCnt = res.dataList.total;
                //console.log("totCnt",totCnt);

                if (page == 0) {
                    pagingInfo.rowNum = 0;
                }

                if (totCnt < 1) {
                    switchList('list_empty');
                } else {
                    switchList('list_container');

                    var innerStr = ''; // 변수에 문자열 저장
                    isLoading = false; // 페이지 로딩 완료

                    for (let i = 0; i < res.dataList.items.length; i++) {
                        var result = res.dataList.items[i];
                        //console.log("result",result)
                        var imgClass = '';

                        if(result.fstvlClCd == 'MF'){ // 축제 분류 코드가 MF면 -> 이미지 변수에 sing 추가
                            imgClass += ' sing';
                        }
                        if(result.fstvlIngFlag == '0'){ // 축제 진행 상태  -> 0 : 진행중 축제 / 1 : 진행예정 축제 / 2 : 종료된 축제
                            imgClass += ' open'; // 개최중
                        }

                        var imgBasePath = 'https://kfescdn.visitkorea.or.kr/kfes/upload';
                        //console.log("imgBasePath  = " + imgBasePath)
                        var imgSrc = result.dispFstvlCntntsImgRout ? result.dispFstvlCntntsImgRout.replace('/data/kfes/contents/db/', imgBasePath + '/contents/db/300_') : '/kfes/resources/img/default_list.png';

                        innerStr += '    <li>';
                        //innerStr += '<a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=' + result.fstvlCntntsId + '&cntntsNm=' + result.cntntsNm.replace(/['"]/g, '').replace(/ /g, '') + '">';
                        innerStr += '<a href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=' + result.fstvlCntntsId + '&cntntsNm=' + result.cntntsNm.replace(/[\s+]/g, "").replace(/[^\w가-힣\u4E00-\u9FFF0-9]|_/g, "") + '">';
                        //innerStr += '	    <!-- class sing 추가시 마크 추가, class open 추가시 개최중 붙음 -->';
                        innerStr += '	    	<div class="other_festival_img '+ imgClass +'">';
                        innerStr += '				<img src="' + imgSrc + '" alt="" ' + imgOnErrorStr + '/>';
                        if(result.fstvlIngFlag == '0'){
                            innerStr += '        <span class="open">개최중</span>';
                        }
                        innerStr += '				<div class="sing_area">';
                        innerStr += '		    		<div class="blind">문화 관광 축제</div>';
                        innerStr += '				</div>';
                        innerStr += '	    	</div>';
                        innerStr += '	    	<div class="other_festival_content">';
                        innerStr += '				<strong>'+ result.cntntsNm +'</strong>'; // 축제명
                        innerStr += '				<div class="date">'+ result.fstvlBgngDe +'~'+ result.fstvlEndDe +'</div>'; // 축제 기간
                        innerStr += '				<div class="loc">'+ result.areaNm +'</div>'; // 지역
                        innerStr += '	    	</div>';
                        innerStr += '		</a>';
                        innerStr += '    </li>';

                        // 왜 for문 안에 추가할 생각을했을까???
                        //pagingInfo.rowNum = res.dataList.items[res.dataList.items.length - 1].rowNum;
                        //console.log("pagingInfo.rowNum"+ pagingInfo.rowNum);

                    } // end for
                    $('#list').append(innerStr); // 리스트에 새 항목 추가

                    // 페이지네이션 추가

                    let page = Number(spage) + 1; // spage는 0 이니까 1로 만들고

                    pagingInfo.rowNum = page * Number(scnt); // 1페이지당 * scnt = 12  => 12개 축제 리스트

                    if (pagingInfo.rowNum > totCnt) {         // 전체랑 같으면 최종 마지막 페이지
                        pagingInfo.rowNum = Number(totCnt);
                    }


                    $('#btnMore').text('더보기 (' + pagingInfo.rowNum + '/' + totCnt + ')');
                    //console.log("pagingInfo.rowNum"+ pagingInfo.rowNum);

                } // end else
                // 페이지네이션 추가


            }, // end success
            error: function (err) {
                //console.log("##오류", err);
                isLoading = false; // 페이지 로딩 완료 (실패했으므로)
            }

        })
    }// end getContentList

    // 스크롤시 리스트 출력 todo : 먼저 날짜 클릭을 했을때 -->  스크롤시 내려가도록해야한다.
    const enableScrollEvent = function() {
        if (currentDay) {
            $(window).off('scroll');  // 기존의 스크롤 이벤트 핸들러 제거
            $(window).scroll(function () {
                if (($(window).scrollTop() + 150) >= $(document).height() - $(window).height()) {
                    $('#btnMore').click();
                }
                if (pagingInfo.rowNum == pagingInfo.totalCnt) {
                    return false;
                }
            });
        }
    }

    $('#btnMore').click(function() {
        spage++;  // 페이지 개수가 올라가고
        getContentList(spage); // 페이지 개수만큼 getContentList 리스트 호출한다.
    });

</script>
</body>
</html>

<!-- GA script -->










<!-- 구글 옵티마이즈 스크립트, 긴급한 변동사항 등에 활용 -->
<script src="https://www.googleoptimize.com/optimize.js?id=OPT-5JVS3BG"></script>
<script src="https://www.googleoptimize.com/optimize.js?id=OPT-NQVD2Q2"></script>

<script type="text/javascript">
	var appYn = 'N';
	var mobileYn = 'N';
    var device;

	var getParameter = function (param) {
		var returnValue;
		var url = location.href;
		var parameters = (url.slice(url.indexOf('?') + 1, url.length)).split('&');
		for (var i = 0; i < parameters.length; i++) {
			var varName = parameters[i].split('=')[0];
			if (varName.toUpperCase() == param.toUpperCase()) {
				returnValue = parameters[i].split('=')[1];
				return decodeURIComponent(returnValue);
			}
		}
	};

	function getAppYn() {
		var agent = navigator.userAgent.toLowerCase();
		if (agent.indexOf('visitkor') != -1 ) {
			appYn = 'Y';
			mobileYn = 'Y';
		}

		device = getDevice();
	}

	function getDevice() {
		var agent = navigator.userAgent.toLowerCase();
		if (agent.indexOf('iphone') != -1 || agent.indexOf('ipad') != -1) { // iPhone

			// 기기, IOS별 모바일 버전 조정
			if (/iPhone/.test(navigator.platform)) {
				mobileYn = 'Y';
			} else {
				mobileYn = 'N';
			}
			return 'iOS';

		} else if (agent.indexOf('android') != -1) { // Android OS

			mobileYn = 'Y';
			return 'Android';

		} else if (agent.indexOf('macintosh') != -1) {	// 아이패드 어플에서는 매킨토시로 잡힘

			mobileYn = 'N';
			return 'iOS';
		} else if (agent.indexOf('ipod') != -1) {
			mobileYn = 'Y';
			return 'iOS';
		} else if (agent.indexOf('windows') != -1){
			return 'Windows';
		} else {
			return 'Etc';
		}
	}

	$(document).ready(function(){
		getAppYn();
	});

</script>

<script type="text/javascript">
    var otd_nm = "";
    if (appYn == 'N') {
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            },
            i[r].l = 1 * new Date();
            a = s.createElement(o),
            m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-92880258-1', 'auto');
        ga('require', 'displayfeatures');
        otd_nm = "";
        ga('set', 'dimension5', otd_nm);
    } else {
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            },
            i[r].l = 1 * new Date();
            a = s.createElement(o),
            m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-92878657-1', 'auto');
        ga('require', 'displayfeatures');
        ga('send', 'pageview');
        otd_nm = "";
        ga('set', 'dimension5', otd_nm);
    }

    var custInfo = {
        uuid: null, // SNS_ID
        loginYn: 'N', // 로그인여부
        firstYn: 'N', // 최초로그인여부
        gender: 'null', // 성별
        grade: 'null', // 여행구독레벨
        birthYr: 0, // 생년월일
        rsdeNm: 'null', // 거주지명
        favoriteCnt: null, // 즐겨찾기수
        commentCnt: null, // 댓글수
        joinYmd: null, // 가입일
        channel: null, // SNS채널구분
        device: appYn == 'Y' ? device
            : mobileYn == 'Y'
                ? 'mobileweb'
                : 'pcweb', // device 구분
        cardAreaNm: null // digitcard area Name
    }
</script>

<!--  GA4 관련 -->
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-LYY1LJZCC4"></script>

<!-- Google Tag Manager: 구글 태그 매니저 -->
<script>
(function (w, d, s, l, i) {
    w[l] = w[l] || [];
    w[l].push({'gtm.start': new Date().getTime(), event: 'gtm.js'});
    var f = d.getElementsByTagName(s)[0],
        j = d.createElement(s),
        dl = l != 'dataLayer'
            ? '&l=' + l
            : '';
    j.async = true;
    j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
    f.parentNode.insertBefore(j, f);
})(window, document, 'script', 'dataLayer', 'GTM-PJVBVKB');
</script>
<!-- End Google Tag Manager -->


<!-- body 뒤에 붙여 넣어 주세요. -->

<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PJVBVKB"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -


<!-- 가장 하단에 실행되도록 넣어 주세요 -->

<script type="text/javascript" charset="UTF-8">
    window.dataLayer = window.dataLayer || [];
    dataLayer.push({
        'user_id': custInfo.uuid, // 기본페이지뷰 시 호출되는 uuid값 활용
        'first_login': custInfo.firstYn, // 기본페이지뷰 시 호출되는 firstYn값 활용
        'gender_div': custInfo.gender, // 기본페이지뷰 시 호출되는 gender값 활용
        'birth_year': custInfo.birthYr, // 기본페이지뷰 시 호출되는 birthYr값 활용
        'city_name': custInfo.rsdeNm, // 기본페이지뷰 시 호출되는 rsdeNm값 활용
        'join_date': custInfo.joinYmd, // 기본페이지뷰 시 호출되는 joinYmd값 활용
        'method': custInfo.channel, // 기본페이지뷰 시 호출되는 channel값 활용
        'dimension7': custInfo.uuid,
        'dimension8': custInfo.joinYmd,
        'dimension9': custInfo.loginYn,
        'dimension10': custInfo.channel,
        'dimension11': custInfo.device
    });
    function gtag() {
        dataLayer.push(arguments);
    }
    gtag('js', new Date());
    gtag('config', 'G-LYY1LJZCC4', {otd_nm: ""});
</script>

<!-- GA script -->