<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Freelancer - Start Bootstrap Theme</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="./resources/css/styles.css" rel="stylesheet" />
    </head>
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
        <!-- 중앙 이미지 섹션 -->
        <section class="page-section portfolio" id="portfolio">
    <div class="container">
        <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">행사정보</h2>
        <div class="divider-custom">
            <div class="divider-custom-line"></div>
            <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
            <div class="divider-custom-line"></div>
        </div>

        <div class="row align-items-center">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-sm-4">
                        <select id="day" class="form-control">
                            <option value=" ">기간</option>
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
                    </div>
                    <div class="col-sm-4">
                        <select id="category" class="form-control">
                            <option value="all">카테고리</option>
                            <option value="together">친구와함께</option>
                            <option value="tradition">전통</option>
                            <option value="trip">나들이</option>
                            <option value="food">먹거리</option>
                            <option value="show">공연</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <div class="search-box d-flex align-items-center">
                            <input type="search" class="form-control me-2" placeholder="검색">
                            <input type="submit" class="btn btn-primary me-2" value="검색">
                            <input type="reset" class="btn btn-secondary" value="초기화">
                            
                        </div>
                    </div>
                    </div>
                    </div>
                    </div>
                    </div>
                    </section>
                    
                <!--  그림 위치 맞추기 -->
                <div class="row justify-content-center">
                
                    <!-- 메인 중앙 첫번째 이미지 -->
<div class="col-md-6 col-lg-4 mb-5">
    <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal1" data-month="06" data-category="beauty">
        <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
            <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
        </div>
        <img class="img-fluid" src="./resources/assets/img/portfolio/01koreabeauty.png" alt="Korea Beauty Festival Image" />
        <h4 class="text-center">코리아뷰티페스티벌</h4>
        <p class="text-center">기간 2024.06.01~2024.06.30</p>
        <p class="text-center">서울특별시 중구</p>
    </div>
</div>

<!-- 메인 중앙 두번째 이미지 -->
<div class="col-md-6 col-lg-4 mb-5">
    <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal2" data-month="03-07" data-category="show">
        <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
            <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
        </div>
        <img class="img-fluid" src="./resources/assets/img/portfolio/02weeklyclassic.png" alt="Weekly Classic Festival Image" />
        <h4 class="text-center">위클리 클래식 페스티벌</h4>
        <p class="text-center">기간 2024.03.01~2024.07.31</im/>
        <p class="text-center">서울특별시 동작구</p>
    </div>
</div>

<!-- 메인 중앙 세번째 이미지 -->
<div class="col-md-6 col-lg-4 mb-5">
    <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal3" data-month="05-12" data-category="food">
        <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
            <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
        </div>
        <img class="img-fluid" src="./resources/assets/img/portfolio/03kfood.png" alt="K-Food Festival Image" />
        <h4 class="text-center">K-푸드 페스티벌 넉넉</h4>
        <p class="text-center">기간 2024.05.29~2024.12.31</p>
        <p class="text-center">서울특별시 종로구</p>
    </div>
</div>
                    
                    <!-- 메인 중앙 4번째 이미지 -->
                     <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal4">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="./resources/assets/img/portfolio/04hankang.png" alt="..." />
                             <!-- 사진 밑에 글씨 넣기 -->
        				<h4 class="text-center">한강역사탐방</h4>
        				<p class="text-center">기간 2024.04.01~2024.11.30</p>
        				<p class="text-center">서울특별시 영등포구</p>
                        </div>
                    </div>
                    
                    <!-- 메인 중앙 5번째 이미지 -->
                    <!-- 메인 중앙 5번째 이미지 --><!--  -->
                     <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal5">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="./resources/assets/img/portfolio/05pasuonday.png" alt="..." />
                             <!-- 사진 밑에 글씨 넣기 -->
        				<h4 class="text-center">숭례문 파수의식 원데이! 파수군</h4>
        				<p class="text-center">기간 2024.04.01~2024.12.14</p>
        				<p class="text-center">서울특별시 중구</p>
                        </div>
                    </div>
                    
                    <!-- 메인 중앙 여섯번째 이미지 -->
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal6">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="./resources/assets/img/portfolio/06namsan.png" alt="..." />
                             <!-- 사진 밑에 글씨 넣기 -->
        				<h4 class="text-center">남산봉수의식 등 전통문화 재현행사</h4>
        				<p class="text-center">기간 2024.01.01~2024.12.31</p>
        				<p class="text-center">서울특별시 종로구</p>
                        </div>
                    </div>
                    
                    <!-- 메인 중앙 7번째 이미지 -->
                     <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal7">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="./resources/assets/img/portfolio/07seoulrive.png" alt="..." />
                             <!-- 사진 밑에 글씨 넣기 -->
        				<h4 class="text-center">서울거리공연 구석구석 라이브</h4>
        				<p class="text-center">기간 2024.04.01~2024.11.30</p>
        				<p class="text-center">서울특별시 용산구</p>
                        </div>
                    </div>
                    
                    <!-- 메인 중앙 8번째 이미지 -->
                     <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal8">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="./resources/assets/img/portfolio/08bookang.png" alt="..." />
                             <!-- 사진 밑에 글씨 넣기 -->
        				<h4 class="text-center">서초책있는거리 6월 미리 떠나는 북캉스</h4>
        				<p class="text-center">기간 2024.06.15~2024.06.15</p>
        				<p class="text-center">서울특별시 서초구</p>
                        </div>
                    </div>
                    
                    <!-- 메인 중앙 9번째 이미지 -->
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal9">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="./resources/assets/img/portfolio/09musical.png" alt="..." />
                             <!-- 사진 밑에 글씨 넣기 -->
        				<h4 class="text-center">2024 K-뮤지컬국제마켓</h4>
        				<p class="text-center">기간 2024.06.18~2024.06.22</p>
        				<p class="text-center">서울특별시 종로구</p>
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
                            .
                        </p>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Copyright Section-->
        <div class="copyright py-4 text-center text-white">
            <div class="container"><small>Copyright &copy; Your Website 2023</small></div>
        </div>
        </div>
        
        <script>
document.addEventListener('DOMContentLoaded', function() {
    const selectDay = document.getElementById('day');
    const selectCategory = document.getElementById('category');
    const portfolioItems = document.querySelectorAll('.portfolio-item');

    function filterItems() {
        const selectedMonth = selectDay.value;
        const selectedCategory = selectCategory.value;

        portfolioItems.forEach(item => {
            const itemMonth = item.getAttribute('data-month');
            const itemCategory = item.getAttribute('data-category');

            item.style.display = 'none';

            if ((selectedMonth === " " || itemMonth === selectedMonth) &&
                (selectedCategory === "all" || itemCategory === selectedCategory)) {
                item.style.display = '';
            }
        });
    }

    selectDay.addEventListener('change', filterItems);
    selectCategory.addEventListener('change', filterItems);
});
</script>

    </body>
</html>


	