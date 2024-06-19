package member;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/userPage/profileEdit.do")
public class ProfileEditController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		MVCMemberDAO dao = new MVCMemberDAO();
		MVCMemberDTO dto = dao.selectUser(name);
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("/userPage/profileEdit.jsp").forward(request, response);
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		//회원정보 수정 처리
		//수정 내용을 매개변수에서 얻어옴
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		int phone = Integer.parseInt(request.getParameter("phone"));
		
		//DTO에 저장
		MVCMemberDTO dto = new MVCMemberDTO();
		dto.setName(name);
		dto.setEmail(email);
		dto.setPhone(phone);
		
		MVCMemberDAO dao = new MVCMemberDAO();
		int result = dao.updatePost(dto);
		dao.close();
		
		if (result == 1) {
			response.sendRedirect("");
			System.out.println("수정 성공");
		}
		
	}

}
