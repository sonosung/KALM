package seoulmate.boardcomment;

import java.io.IOException;
import java.sql.Timestamp;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import seoulmate.membership.MemberDTO;

@WebServlet("/commentwrite.do")
public class CommentWriteController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 세션에서 사용자 정보를 가져옵니다.
        HttpSession session = request.getSession();
        MemberDTO member = (MemberDTO) session.getAttribute("user");

        // 사용자가 로그인하지 않은 경우
        if (member == null) {
            response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            response.getWriter().write("unauthorized");
            return;
        }

        // 요청 파라미터에서 게시글 번호와 댓글 내용을 가져옵니다.
        String idxstr = request.getParameter("idx");
        int idx = Integer.parseInt(idxstr);
        String writer = member.getUser_id();
        String content = request.getParameter("content");

        // 현재 시각을 Timestamp 형식으로 생성합니다.
        Timestamp createdAt = new Timestamp(System.currentTimeMillis());

        // CommentDTO 객체를 생성하여 댓글 정보를 설정합니다.
        CommentDTO commentDTO = new CommentDTO();
        commentDTO.setIdx(idx);
        commentDTO.setWriter(writer);
        commentDTO.setContent(content);
        commentDTO.setCreatedAt(createdAt);

        // CommentDAO를 사용하여 댓글을 데이터베이스에 저장합니다.
        CommentDAO commentDAO = new CommentDAO();
        int result = commentDAO.insertComment(commentDTO);

        // 댓글 작성 결과를 클라이언트에게 반환합니다.
        if (result > 0) {
            response.getWriter().write("success");
        } else {
            response.getWriter().write("failure");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
