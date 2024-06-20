<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SEOULMATE</title>
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
    <link href="./resources/css/styles.css" rel="stylesheet" />
    <!-- 디자인 관련 기능 구현 -->
    <style>
    .masthead {
        padding-top: 6rem; /* 기본 6rem */
        padding-bottom: 6rem;
    }
    @media (min-width: 768px) {
        .masthead {
            padding-top: 8rem; /* 큰 화면에서는 8rem */
            padding-bottom: 2rem; /*초록색 배너 밑에 줄어듦 */
        }
    }
    .portfolio {
        margin-top: 4rem; /* 포트폴리오 섹션 상단 여백 추가 */
    }
    .portfolio .row {
        display: flex;
        flex-wrap: wrap;
        justify-content: flex-start; /* 왼쪽 정렬 */
        margin: 10 -30px; /* 좌우 패딩을 위한 여백 설정 */
    }
    .portfolio-item {
    margin-bottom: 30px;
    flex: 0 1 calc(33.33% - 30px); /* 세 열로 나타내기 위해 33.33%에서 패딩값을 뺌 */
    box-sizing: border-box;
    padding: 0 15px;
    margin-left: 0.8cm; /* 살짝 오른쪽으로 가게하기 */
    }
    @media (max-width: 768px) {
        .portfolio-item {
            flex: 0 1 100%; /* 화면이 작아질 경우 한 열로 나타냄 */
        }
    }
    .search-bar {
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 10px;
        flex-wrap: wrap;
        margin-top: -2rem; /* 상단 여백 추가 */
        margin-bottom: -7rem; /* 아래 여백을 추가하여 검색 바와 그 아래 콘텐츠 사이의 간격을 늘립니다. */
    }
    .search-bar select, .search-bar input {
        flex: 1;
        min-width: 200px; /* 최소 너비 설정 */
    }
    .search-bar button {
        height: 38px;
        min-width: 100px; /* 최소 너비 설정 */
    }
    </style>
</head>
<!-- 상단 오른쪽 버튼 기능 구현 -->
<body id="page-top">
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
        <div class="container">
            <a class="navbar-brand" href="#page-top">SEOULMATE</a>
            <button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                Menu
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#portfolio">행사정보</a></li>
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#about">About</a></li>
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Masthead-->
<header class="masthead bg-primary text-white text-center">
    <div class="container d-flex align-items-center flex-column">
        <!-- Masthead Avatar Image-->
        <img class="masthead-avatar mb-5" src="./resources/assets/img/mainicon.png" alt="..." />
        <!-- Masthead Heading-->
        <h1 class="masthead-heading text-uppercase mb-0">SEOULMATE</h1>
        <!-- Icon Divider-->
        <div class="divider-custom divider-light">
            <div class="divider-custom-line"></div>
            <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
            <div class="divider-custom-line"></div>
        </div>
        <!-- Masthead Subheading-->
        <p class="masthead-subheading font-weight-light mb-0">너와 나의 SEOULMATE!</p>
    </div>
</header>

<!-- 검색창과 필터 섹션 -->
<section class="page-section search-bar" id="search">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10 search-bar">
                <select id="day" class="form-control">
                    <option value="">기간</option>
                    <option value="A">개최중</option>
                    <option value="B">개최예정</option>
                    <option value="01">1월</option>
                    <option value="02">2월</option>
                    <option value="03">3월</option>
                    <option value="04">4월</option>
                    <option value="05">5월</option>
                    <option value="06">6월</option>
                    <option value="07">7월</option>
                    <option value="08">8월</option>
                    <option value="09">9월</option>
                    <option value="10">10월</option>
                    <option value="11">11월</option>
                    <option value="12">12월</option>
                </select>
                <select id="category" class="form-control">
                    <option value="">카테고리</option>
                    <option value="together">친구와함께</option>
                    <option value="tradition">전통</option>
                    <option value="trip">나들이</option>
                    <option value="food">먹거리</option>
                    <option value="show">공연</option>
                </select>
                <input type="search" id="search-text" class="form-control me-2" placeholder="검색">
                <button id="search-btn" class="btn btn-primary">검색</button>
                <button id="reset-btn" class="btn btn-secondary">리셋</button>
            </div>
        </div>
    </div>
</section>

<!-- 중앙 이미지 섹션 -->
<section class="page-section portfolio" id="portfolio">
    <div class="container">
        <div class="row">
            <!-- 메인 중앙 첫번째 이미지 -->
            <div class="col-md-6 col-lg-4 mb-5 portfolio-item" data-bs-toggle="modal" data-bs-target="#portfolioModal1" data-start-date="2024-06-01" data-end-date="2024-06-30" data-month="06" data-category="together">
                <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                    <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                </div>
                <img class="img-fluid" src="./resources/assets/img/portfolio/01koreabeauty.png" alt="..." />
                <h5 class="text-center">코리아뷰티페스티벌</h5>
                <p class="text-center">기간 2024.06.01~2024.06.30</p>
                <p class="text-center">서울특별시 중구</p>
                <p class="text-center festival-status"></p> <!-- 상태를 표시할 요소 추가 -->
            </div>
            
            <!-- 메인 중앙 두번째 이미지 -->
            <div class="col-md-6 col-lg-4 mb-5 portfolio-item" data-bs-toggle="modal" data-bs-target="#portfolioModal2" data-start-date="2024-03-01" data-end-date="2024-07-31" data-month="03-07" data-category="show">
                <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                    <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                </div>
                <img class="img-fluid" src="./resources/assets/img/portfolio/02weeklyclassic.png" alt="..." />
                <h5 class="text-center">위클리 클래식 페스티벌</h5>
                <p class="text-center">기간 2024.03.01~2024.07.31</p>
                <p class="text-center">서울특별시 동작구</p>
                <p class="text-center festival-status"></p> <!-- 상태를 표시할 요소 추가 -->
            </div>
            
            <!-- 메인 중앙 세번째 이미지 -->
            <div class="col-md-6 col-lg-4 mb-5 portfolio-item" data-bs-toggle="modal" data-bs-target="#portfolioModal3" data-start-date="2024-05-29" data-end-date="2024-12-31" data-month="05-12" data-category="food">
                <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                    <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                </div>
                <img class="img-fluid" src="./resources/assets/img/portfolio/03kfood.png" alt="..." />
                <h5 class="text-center">K-푸드 페스티벌 넉넉</h5>
                <p class="text-center">기간 2024.05.29~2024.12.31</p>
                <p class="text-center">서울특별시 종로구</p>
                <p class="text-center festival-status"></p> <!-- 상태를 표시할 요소 추가 -->
            </div>
            
            <!-- 메인 중앙 네번째 이미지 -->
            <div class="col-md-6 col-lg-4 mb-5 portfolio-item" data-bs-toggle="modal" data-bs-target="#portfolioModal4" data-start-date="2024-04-01" data-end-date="2024-11-30" data-month="04-11" data-category="tradition">
                <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                    <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                </div>
                <img class="img-fluid" src="./resources/assets/img/portfolio/04hankang.png" alt="..." />
                <h5 class="text-center">한강역사탐방</h5>
                <p class="text-center">기간 2024.04.01~2024.11.30</p>
                <p class="text-center">서울특별시 영등포구</p>
                <p class="text-center festival-status"></p> <!-- 상태를 표시할 요소 추가 -->
            </div>
            
            <!-- 메인 중앙 다섯번째 이미지 -->
            <div class="col-md-6 col-lg-4 mb-5 portfolio-item" data-bs-toggle="modal" data-bs-target="#portfolioModal5" data-start-date="2024-04-01" data-end-date="2024-12-14" data-month="04-12" data-category="tradition">
                <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                    <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                </div>
                <img class="img-fluid" src="./resources/assets/img/portfolio/05pasuonday.png" alt="..." />
                <h5 class="text-center">숭례문 파수의식 원데이! 파수군</h5>
                <p class="text-center">기간 2024.04.01~2024.12.14</p>
                <p class="text-center">서울특별시 중구</p>
                <p class="text-center festival-status"></p> <!-- 상태를 표시할 요소 추가 -->
            </div>
            
            <!-- 메인 중앙 여섯번째 이미지 -->
            <div class="col-md-6 col-lg-4 mb-5 portfolio-item" data-bs-toggle="modal" data-bs-target="#portfolioModal6" data-start-date="2024-04-01" data-end-date="2024-11-30" data-month="04-11" data-category="show">
                <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                    <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                </div>
                <img class="img-fluid" src="./resources/assets/img/portfolio/06seoulrive.png" alt="..." />
                <h5 class="text-center">서울거리공연 구석구석 라이브</h5>
                <p class="text-center">기간 2024.04.01~2024.11.30</p>
                <p class="text-center">서울특별시 용산구</p>
                <p class="text-center festival-status"></p> <!-- 상태를 표시할 요소 추가 -->
            </div>
            
            <!-- 메인 중앙 일곱번째 이미지 -->
            <div class="col-md-6 col-lg-4 mb-5 portfolio-item" data-bs-toggle="modal" data-bs-target="#portfolioModal7" data-start-date="2024-09-26" data-end-date="2024-09-28" data-month="09" data-category="trip">
                <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                    <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                </div>
                <img class="img-fluid" src="./resources/assets/img/portfolio/07familybook.png" alt="..." />
                <h5 class="text-center">온 가족 책 잔치</h5>
                <p class="text-center">기간 2024.09.26~2024.09.28</p>
                <p class="text-center">서울특별시 종로구</p>
                <p class="text-center festival-status"></p> <!-- 상태를 표시할 요소 추가 -->
            </div>
            
            <!-- 메인 중앙 여덟번째 이미지 -->
            <div class="col-md-6 col-lg-4 mb-5 portfolio-item" data-bs-toggle="modal" data-bs-target="#portfolioModal8" data-start-date="2024-06-15" data-end-date="2024-06-15" data-month="06" data-category="trip">
                <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                    <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                </div>
                <img class="img-fluid" src="./resources/assets/img/portfolio/08bookang.png" alt="..." />
                <h5 class="text-center">서초책있는거리 6월 미리 떠나는 북캉스</h5>
                <p class="text-center">기간 2024.06.15~2024.06.15</p>
                <p class="text-center">서울특별시 서초구</p>
                <p class="text-center festival-status"></p> <!-- 상태를 표시할 요소 추가 -->
            </div>
            
            <!-- 메인 중앙 아홉번째 이미지 -->
            <div class="col-md-6 col-lg-4 mb-5 portfolio-item" data-bs-toggle="modal" data-bs-target="#portfolioModal9" data-start-date="2024-06-18" data-end-date="2024-06-22" data-month="06" data-category="show">
                <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                    <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                </div>
                <img class="img-fluid" src="./resources/assets/img/portfolio/09musical.png" alt="..." />
                <h5 class="text-center">2024 K-뮤지컬국제마켓</h5>
                <p class="text-center">기간 2024.06.18~2024.06.22</p>
                <p class="text-center">서울특별시 종로구</p>
                <p class="text-center festival-status"></p> <!-- 상태를 표시할 요소 추가 -->
            </div>
        </div>
    </div>
</section>
    
<!-- Footer-->
<footer class="footer text-center">
    <div class="container">
        <div class="row">
            <!-- Footer Location-->
            <div class="col-lg-4 mb-5 mb-lg-0">
                <h4 class="text-uppercase mb-4">Location</h4>
                <p class="lead mb-0">
                    2215 John Daniel Drive
                    <br />
                    Clark, MO 65243
                </p>
            </div>
            <!-- Footer Social Icons-->
            <div class="col-lg-4 mb-5 mb-lg-0">
                <h4 class="text-uppercase mb-4">Around the Web</h4>
                <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-facebook-f"></i></a>
                <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-twitter"></i></a>
                <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-linkedin-in"></i></a>
                <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-dribbble"></i></a>
            </div>
            <!-- Footer About Text-->
            <div class="col-lg-4">
                <h4 class="text-uppercase mb-4">About Freelancer</h4>
                <p class="lead mb-0">
                    Freelance is a free to use, MIT licensed Bootstrap theme created by
                    <a href="http://startbootstrap.com">Start Bootstrap</a>
                </p>
            </div>
        </div>
    </div>
</footer>
<!-- Copyright Section-->
<div class="copyright py-4 text-center text-white">
    <div class="container"><small>Copyright &copy; Your Website 2023</small></div>
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
    const selectDay = document.getElementById('day');
    const selectCategory = document.getElementById('category');
    const searchText = document.getElementById('search-text');
    const searchButton = document.getElementById('search-btn');
    const resetButton = document.getElementById('reset-btn');
    const portfolioContainer = document.querySelector('.portfolio .row');

    const portfolioItems = Array.from(document.querySelectorAll('.portfolio-item'));

    function generateHTML(items) {
        portfolioContainer.innerHTML = ''; // 기존 항목 제거
        items.forEach(item => {
            portfolioContainer.appendChild(item); // 새로운 항목 추가
        });
    }
    <!-- 이미지 밑에 개최중, 개최예정, 종료 기능 구현 -->
    <!-- 현재 날짜와 비교해서 기능 구현 -->
    function updateFestivalStatus(item) {
        const today = new Date();
        const itemStartDate = new Date(item.getAttribute('data-start-date'));
        const itemEndDate = new Date(item.getAttribute('data-end-date'));
        const statusElement = item.querySelector('.festival-status');

        if (today >= itemStartDate && today <= itemEndDate) {
            statusElement.textContent = '개최중';
            statusElement.style.color = 'green'; // 상태에 따른 색상 변경
            statusElement.style.fontSize = '20px';
        } else if (today < itemStartDate) {
            statusElement.textContent = '개최예정';
            statusElement.style.color = 'blue';
            statusElement.style.fontSize = '20px';
        } else {
            statusElement.textContent = '종료';
            statusElement.style.color = 'red';
            statusElement.style.fontSize = '20px';
        }
    }
    <!-- 필터, 검색, 리셋 버튼 기능 구현 -->
    function filterItems() {
        const selectedMonth = selectDay.value;
        const selectedCategory = selectCategory.value;
        const searchTextValue = searchText.value.toLowerCase();
        const today = new Date();
        let visibleItems = [];  // 표시된 항목을 저장할 배열입니다.

        portfolioItems.forEach(item => {
            const itemMonths = item.getAttribute('data-month').split('-');
            const itemCategory = item.getAttribute('data-category');
            const itemName = item.querySelector('h5').textContent.toLowerCase();
            const itemStartDate = new Date(item.getAttribute('data-start-date'));
            const itemEndDate = new Date(item.getAttribute('data-end-date'));

            let display = (searchTextValue === "" || itemName.includes(searchTextValue)) &&
                          (selectedMonth === "" || itemMonths.includes(selectedMonth) || 
                           (itemMonths.length === 2 && itemMonths[0] <= selectedMonth && itemMonths[1] >= selectedMonth) ||
                           (selectedMonth === "A" && itemStartDate <= today && itemEndDate >= today) ||
                           (selectedMonth === "B" && itemStartDate > today)) &&
                          (selectedCategory === "" || itemCategory === selectedCategory);

            if (display) {
                visibleItems.push(item);  // 표시된 항목을 배열에 추가합니다.
                updateFestivalStatus(item); // 상태 업데이트
            }
        });

        // data-bs-target 속성 값을 기준으로 정렬합니다.
        visibleItems.sort((a, b) => {
            const aTarget = a.getAttribute('data-bs-target');
            const bTarget = b.getAttribute('data-bs-target');
            return aTarget.localeCompare(bTarget);
        });

        generateHTML(visibleItems); // 정렬된 항목을 HTML로 생성하여 추가합니다.
    }

    function resetFilters() {
        selectDay.value = "";
        selectCategory.value = "";
        searchText.value = "";
        portfolioItems.forEach(updateFestivalStatus); // 초기 상태 업데이트
        generateHTML(portfolioItems); // 초기 항목을 HTML로 생성하여 추가합니다.
    }

    searchButton.addEventListener('click', filterItems);
    resetButton.addEventListener('click', resetFilters);

    // 초기 항목을 HTML로 생성하여 추가합니다.
    portfolioItems.forEach(updateFestivalStatus); // 초기 상태 업데이트
    generateHTML(portfolioItems);
});
</script>
</body>
</html>
