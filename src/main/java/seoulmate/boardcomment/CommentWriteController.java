package seoulmate.boardcomment;

import java.io.IOException;
import java.sql.Timestamp;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import seoulmate.membership.MemberDTO;

@WebServlet("/commentwrite.do")
public class CommentWriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 요청 파라미터에서 게시글 번호와 댓글 내용을 가져옵니다.
		String idxStr = request.getParameter("idx");
		Long idx = Long.parseLong(idxStr);

		// 세션에서 사용자 정보를 가져옵니다.
		MemberDTO member = (MemberDTO) request.getSession().getAttribute("user");
		String writer = member.getUser_id();

		String content = request.getParameter("content");

		// 현재 시각을 Timestamp 형식으로 생성합니다.
		Timestamp createdAt = new Timestamp(System.currentTimeMillis());

		// CommentDTO 객체를 생성하여 댓글 정보를 설정합니다.
		CommentDTO commentDTO = new CommentDTO();
		commentDTO.setIdx(idx);
		commentDTO.setWriter(writer); // CommentDTO에서 writer를 필드로 가지고 있는지 확인합니다.
		commentDTO.setContent(content);
		commentDTO.setCreatedAt(createdAt);

		// CommentDAO를 사용하여 댓글을 데이터베이스에 저장합니다.
		CommentDAO commentDAO = new CommentDAO();
		commentDAO.insertComment(commentDTO);

		// 댓글 작성 후 다시 해당 게시글의 댓글 목록 페이지로 리다이렉트합니다.
		response.sendRedirect(request.getContextPath() + "/view?idx=" + idx);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
}
