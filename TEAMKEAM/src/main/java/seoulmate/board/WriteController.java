//게시판 글쓰기 서블릿입니다, 데이터베이스 저장, 이미지 업로드 담당
package seoulmate.board;

import java.io.IOException;
import java.io.InputStream;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import seoulmate.membership.MemberDTO;
import utils.JSFunction;

@MultipartConfig(maxFileSize = 1024 * 1024 * 1, maxRequestSize = 1024 * 1024 * 10)
public class WriteController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/write.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserBoardDTO dto = new UserBoardDTO();
        MemberDTO member = (MemberDTO) req.getSession().getAttribute("user");

        if (member == null) {
            JSFunction.alertLocation(resp, "로그인이 필요합니다.", "login.do");
            return;
        }

        dto.setName(member.getUser_id());
        dto.setTitle(req.getParameter("title"));
        dto.setContent(req.getParameter("content"));
        dto.setFescate(req.getParameter("fescate"));
        dto.setFeslocation(req.getParameter("feslocation"));
        dto.setFesname(req.getParameter("fesname"));
        dto.setFesstart(req.getParameter("fesstart"));
        dto.setFesend(req.getParameter("fesend"));

        // mainimage 업로드 처리
        Part mainimagePart = req.getPart("mainimage");
        if (mainimagePart != null && mainimagePart.getSize() > 0) {
            try (InputStream mainimageInputStream = mainimagePart.getInputStream()) {
                dto.setMainimage(mainimageInputStream.readAllBytes());
            }
        }

        // secimage 업로드 처리
        Part secimagePart = req.getPart("secimage");
        if (secimagePart != null && secimagePart.getSize() > 0) {
            try (InputStream secimageInputStream = secimagePart.getInputStream()) {
                dto.setSecimage(secimageInputStream.readAllBytes());
            }
        }

        // thiimage 업로드 처리
        Part thiimagePart = req.getPart("thiimage");
        if (thiimagePart != null && thiimagePart.getSize() > 0) {
            try (InputStream thiimageInputStream = thiimagePart.getInputStream()) {
                dto.setThiimage(thiimageInputStream.readAllBytes());
            }
        }

        // DAO를 통해 DB에 게시 내용 저장
        UserBoardDAO dao = new UserBoardDAO();
        int result = dao.insertWrite(dto);
        dao.close();

        // 성공 or 실패?
        if (result == 1) { // 글쓰기 성공
            resp.sendRedirect("userlist.do");
        } else { // 글쓰기 실패
            JSFunction.alertLocation(resp, "글쓰기에 실패했습니다.", "write.do");
        }
    }
}
