package seoulmate.membership;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/userInfo.do")
public class userInfoController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// DB 연결 정보
        String jdbcDriver = "oracle.jdbc.driver.OracleDriver"; // JDBC 드라이버 클래스
        String dbUrl = "jdbc:oracle:thin:@14.42.124.21:1521:xe"; // DB URL
        String dbId = "C##KEAM"; // DB 사용자 아이디
        String dbPw = "1234"; // DB 사용자 비밀번호
		
        MemberDAO dao = new MemberDAO(jdbcDriver, dbUrl, dbId, dbPw);
        String email = request.getParameter("email");
		dao.userInfo(email);
		MemberDTO dto = dao.userInfo(email);
		dao.close();

		request.setAttribute("dto", dto);
		request.getRequestDispatcher("/userPage/myPage.jsp").forward(request, response);
    }
}