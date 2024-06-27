package seoulmate.boardcomment;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/commentlist.do")
public class CommentListController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 게시글 번호를 파라미터에서 가져옵니다.
        String idxStr = request.getParameter("idx");

        if (idxStr == null || idxStr.isEmpty()) {
            // idxStr이 null이거나 비어 있을 경우 예외 처리 또는 기본값 설정
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "idx parameter is missing or empty");
            return;
        }

        Long idx = null;
        try {
            idx = Long.parseLong(idxStr);
        } catch (NumberFormatException e) {
            // 숫자로 변환할 수 없는 경우 예외 처리
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid idx parameter: " + idxStr);
            return;
        }

        // CommentDAO를 사용하여 해당 게시글의 모든 댓글을 조회합니다.
        CommentDAO commentDAO = new CommentDAO();
        List<CommentDTO> commentList = commentDAO.getAllCommentsByPostId(idx);

        // 조회된 댓글 목록을 request 속성에 저장합니다.
        request.setAttribute("commentList", commentList);

        // 댓글 목록 페이지(comment_list.jsp)로 포워딩합니다.
        request.getRequestDispatcher("/view.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
