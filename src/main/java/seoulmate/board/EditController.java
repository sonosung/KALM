package seoulmate.board;

import java.io.IOException;
import java.io.InputStream;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import utils.JSFunction;

@WebServlet("/edit.do")
public class EditController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String idx = req.getParameter("idx");
        BoardDAO dao = new BoardDAO();
        BoardDTO dto = dao.selectView(idx);
        req.setAttribute("dto", dto);
        req.getRequestDispatcher("/Edit.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 폼값을 DTO에 저장
        BoardDTO dto = new BoardDTO();
        dto.setIdx(req.getParameter("idx"));
        dto.setName(req.getParameter("name"));
        dto.setTitle(req.getParameter("title"));
        dto.setContent(req.getParameter("content"));
        dto.setFescate(req.getParameter("fescate"));
        dto.setFeslocation(req.getParameter("feslocation"));
        dto.setFesname(req.getParameter("fesname"));
        dto.setFesstart(req.getParameter("fesstart"));
        dto.setFesend(req.getParameter("fesend"));

        // 파일 업로드 처리
        Part mainimagePart = req.getPart("mainimage");
        if (mainimagePart != null && mainimagePart.getSize() > 0) {
            InputStream mainimageInputStream = mainimagePart.getInputStream();
            byte[] mainimage = mainimageInputStream.readAllBytes();
            dto.setMainimage(mainimage);
        }

        Part secimagePart = req.getPart("secimage");
        if (secimagePart != null && secimagePart.getSize() > 0) {
            InputStream secimageInputStream = secimagePart.getInputStream();
            byte[] secimage = secimageInputStream.readAllBytes();
            dto.setSecimage(secimage);
        }

        Part thiimagePart = req.getPart("thiimage");
        if (thiimagePart != null && thiimagePart.getSize() > 0) {
            InputStream thiimageInputStream = thiimagePart.getInputStream();
            byte[] thiimage = thiimageInputStream.readAllBytes();
            dto.setThiimage(thiimage);
        }

        // DAO를 통해 DB에 수정 내용 반영
        BoardDAO dao = new BoardDAO();
        int result = dao.updatePost(dto);
        dao.close();

        // 성공 or 실패 처리
        if (result == 1) { // 수정 성공
            resp.sendRedirect("list.do");
        } else { // 수정 실패
            JSFunction.alertLocation(resp, "게시글 수정에 실패했습니다.", "edit.do?idx=" + dto.getIdx());
        }
    }
}
