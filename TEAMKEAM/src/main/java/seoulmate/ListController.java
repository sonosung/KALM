package seoulmate;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/list")
public class ListController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private BoardDAO boardDAO;

    @Override
    public void init() throws ServletException {
        super.init();
        boardDAO = new BoardDAO(); // BoardDAO 초기화
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int totalCount = boardDAO.selectCount(); // 전체 게시글 수를 가져옴

        // 페이지 번호 및 사이즈 설정
        int pageNum = 1;
        int pageSize = 10; // 페이지당 출력할 게시글 수

        // 페이지 번호 파라미터 처리
        String pageParam = request.getParameter("page");
        if (pageParam != null && !pageParam.isEmpty()) {
            pageNum = Integer.parseInt(pageParam);
        }

        // 페이징 계산
        int startIdx = (pageNum - 1) * pageSize;
        List<BoardDTO> pagedLists = boardDAO.selectListPage(startIdx, pageSize);

        // 페이징 관련 정보 설정
        PageDTO pageDTO = new PageDTO();
        pageDTO.setPageNum(pageNum);
        pageDTO.setPageSize(pageSize);
        pageDTO.setTotalCount(totalCount);

        // JSP에 전달할 데이터 설정
        request.setAttribute("boardLists", pagedLists); // 게시글 목록
        request.setAttribute("pageDTO", pageDTO); // 페이징 정보

        // JSP로 포워딩
        request.getRequestDispatcher("list.jsp").forward(request, response);
    }
}
