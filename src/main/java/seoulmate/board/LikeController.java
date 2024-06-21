package seoulmate.board;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/like.do")
public class LikeController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private BoardDAO boardDAO; // DAO 객체

    @Override
    public void init() throws ServletException {
        // Servlet 초기화 시 BoardDAO 객체 생성
        boardDAO = new BoardDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String idx = request.getParameter("idx");

        if (idx != null && !idx.isEmpty()) {
            // DAO를 이용하여 추천 수 업데이트
            boardDAO.updateLikeCount(idx);

            // 클라이언트에게 성공적인 응답 전송
            response.setContentType("text/plain");
            PrintWriter out = response.getWriter();
            out.print("success");
            out.flush();
        } else {
            // 잘못된 요청 처리
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        }
    }

    @Override
    public void destroy() {
        // Servlet 종료 시 DAO 리소스 해제
        boardDAO.close();
    }
}
