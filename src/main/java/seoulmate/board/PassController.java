package seoulmate.board;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import utils.JSFunction;

@WebServlet("/seoulmatepass.do")
public class PassController extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("mode", req.getParameter("mode"));
        String idx = req.getParameter("idx");
        BoardDAO dao = new BoardDAO();
        BoardDTO dto = dao.selectView(idx);
        req.setAttribute("dto", dto);
        req.getRequestDispatcher("/Edit.jsp").forward(req, resp);
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String idx = req.getParameter("idx");
        String mode = req.getParameter("mode");
        String userId = req.getParameter("user_id"); // 유저 아이디 입력 받기
        
        // 유저 아이디 확인
        BoardDAO dao = new BoardDAO();
        boolean confirmed = dao.confirmUserId(userId, idx); // confirmUserId 메서드는 유저 아이디로 확인하는 메서드로 가정
        
        if (confirmed) { // 유저 아이디 일치
            if ("edit".equals(mode)) { // 수정 모드
                String name = req.getParameter("name");
                String title = req.getParameter("title");
                String content = req.getParameter("content");
                String fescate = req.getParameter("fescate");
                String feslocation = req.getParameter("feslocation");
                String fesname = req.getParameter("fesname");
                String fesstart = req.getParameter("fesstart");
                String fesend = req.getParameter("fesend");

                // 이미지 업로드 처리 (생략)

                // DTO 객체 생성 및 값 설정
                BoardDTO dto = new BoardDTO();
                dto.setIdx(idx);
                dto.setName(name);
                dto.setTitle(title);
                dto.setContent(content);
                dto.setFescate(fescate);
                dto.setFeslocation(feslocation);
                dto.setFesname(fesname);
                dto.setFesstart(fesstart);
                dto.setFesend(fesend);

                int result = dao.updatePost(dto); // 게시물 수정
                dao.close();
                
                if (result == 1) { // 게시물 수정 성공시
                    // 수정 성공 처리
                    JSFunction.alertLocation(resp, "수정되었습니다.", "/list.do");
                } else {
                    // 수정 실패 처리
                    JSFunction.alertBack(resp, "게시물 수정에 실패하였습니다.");
                }
            } else if ("delete".equals(mode)) { // 삭제 모드
                BoardDTO dto = dao.selectView(idx);
                int result = dao.deletePost(idx); // 게시물 삭제
                dao.close();
                
                if (result == 1) { // 게시물 삭제 성공시
                    // 삭제 성공 처리
                    JSFunction.alertLocation(resp, "삭제되었습니다.", "/list.do");
                } else {
                    // 삭제 실패 처리
                    JSFunction.alertBack(resp, "게시물 삭제에 실패하였습니다.");
                }
            }
        } else { // 유저 아이디 불일치
            JSFunction.alertBack(resp, "유저 아이디 검증에 실패하였습니다.");
        }
    }
}
