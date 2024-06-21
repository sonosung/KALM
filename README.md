# KEAM
JSP &amp; DB 를 이용한 게시판 구현 프로젝트!<br/>
주제 : 서울 축제 및 행사 정보 게시판<br/>

팀원 역할:<br/>
문승호(팀장) - 프로젝트 환경설정, 메인 게시판, 마이페이지<br/>
안상환 - DB 생성 및 관리, 로그인&회원가입 페이지<br/>
김별, 이진규 - 행사 정보 게시판, 행사 상세 페이지

설계 목적 : 서울 지역에서 개최되는 다양한 축제와 행사에 대한 정보를 제공함과 동시에, 사용자 간의 활발한 정보 공유와 소통을 촉진하여, 서울의 홍보를 넘어, 한국에 관광객 유치를 높이기 위함입니다. 

주제 선정 이유 : 서울은 한국의 수도로서, 이미 한류를 통해 전 세계에 널리 알려져 있는 한국을 대표하는 도시입니다.<br/>
이런 이유로 서울에 방문하는 많은 관광객을 대상으로 축제 및 행사 정보에 쉽게 접근할 수 있는 웹페이지를 개발하기로 하였습니다.

SQL

BOARD 테이블 컬럼<br/>

IDX 게시글 번호<br/>
TITLE 게시글 제목<br/>
CONTENT 게시글 내용<br/>
NAME 게시글 작성자<br/>
POSTDATE 게시글 작성시간<br/>
VISITCOUNT 게시글 조회수<br/>
LIKECOUNT 게시글 추천수<br/>
FESNAME 축제 이름<br/>
FESLOCATION 축제 주소<br/>
FESSTART 축제 시작일<br/>
FESEND 출제 종료일<br/>

* 축제리스트

<기능>
1. 필터 선택하고 검색 버튼 누르면 해당 축제 정보 리스트 출력(정렬됨)
2. 필터 검색 카테고리는 월별, 개최중, 개최예정, 종료
3. 필터 축제 카테고리 5가지는(전통, 공연, 먹거리, 나들이, 친구와 함께)
4. 축제 정보는 축제 제목, 기간, 주소, 축제상태 표시

<이동>
1. 축제 사진 클릭시 해당 축제 상세보기로 들어가게됨

<데이터베이스>
1. 관리자가 데이터를 넣는 방식이라 새로 테이블을 생성해야함

* 축제공유리스트

<기능>
1. 필터 선택하고 텍스트 필드에 적어서 검색버튼 누르면 해당 게시물 출력
2. 필터는 제목, 내용
3. 게시물 번호, 제목, 작성자, 조회수, 추천수, 작성일이 보임

<이동>
1. 글쓰기 버튼을 누르면 글쓰기 페이지로 이동

<데이터베이스>
1. 진규씨가 이미 만든 테이블을 쓸 예정

PPT Website : https://keam.my.canva.site/original-size-2-project-keam<br/>
Notion URL : https://www.notion.so/sonosung/2-PROJECT_KEAM-97155e93bb074222bea02b38052a2a36?pvs=4
