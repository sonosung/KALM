package seoulmate.membership;

import java.sql.DriverManager;

import common.JDBConnect;

public class MemberDAO extends JDBConnect {
    // 명시한 데이터베이스로의 연결이 완료된 MemberDAO 객체를 생성합니다.
    public MemberDAO(String drv, String url, String id, String pw) {
        try {
            Class.forName(drv);
            con = DriverManager.getConnection(url, id, pw);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // 명시한 아이디/패스워드와 일치하는 회원정보 반환
    public MemberDTO getMemberDTO(String uid, String upass) {
        MemberDTO dto = new MemberDTO(); // 회원 정보 DTO 객체 생성
        String query = "SELECT * FROM users WHERE user_id=? AND user_password=?";

        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1, uid);
            psmt.setString(2, upass);
            rs = psmt.executeQuery();

            // 결과처리
            if (rs.next()) {
                dto.setUser_id(rs.getString("user_id"));
                dto.setUser_password(rs.getString("user_password"));
                dto.setUsername(rs.getString("username"));
                dto.setUser_post(rs.getString("user_post"));
                dto.setUser_photo(rs.getBytes("user_photo"));
                dto.setUser_num(rs.getString("user_num"));
                dto.setUser_comment(rs.getString("user_comment"));
                dto.setEmail(rs.getString("email"));
                dto.setPhonenum(rs.getString("phonenum"));
                dto.setUser_street(rs.getString("user_street"));
                dto.setUser_zip(rs.getString("user_zip"));
                
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return dto;
	}
}
