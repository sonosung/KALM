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
        String query = "SELECT * FROM users WHERE EMAIL=? AND USER_PASSWORD=?";
        System.out.println("맴버 DAO 값 들어오는지 확인" + uid + upass);
        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1, uid);
            psmt.setString(2, upass);
            rs = psmt.executeQuery();

            if (rs.next()) {
                dto.setUSER_NUM(rs.getInt("USER_NUM"));
                dto.setUSER_ID(rs.getString("USER_ID"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return dto;
    }
    
    public MemberDTO getMemberDTO(String USERNAME, String EMAIL, String USER_ID,String PHONENUM, String USER_PASSWORD,String USER_STREET, String USER_ZIP) {
        MemberDTO dto = new MemberDTO(); // 회원 정보 DTO 객체 생성
        String query = "SELECT EMAIL FROM users WHERE EMAIL=? ";
        System.out.println("로그인 맴버 DAO 값 들어오는지 확인" + USERNAME + EMAIL + USER_ID + PHONENUM + USER_PASSWORD + USER_STREET + USER_ZIP);
        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1, EMAIL);
            rs = psmt.executeQuery();
            
            if (rs.next()) {
                dto.setEMAIL(rs.getString("EMAIL"));
            }
            
            if(dto.getEMAIL() == null) {
            	System.out.println("이메일 중복 없음");
            	try {
            		query = "SELECT USER_ID FROM users WHERE USER_ID=? ";
                    psmt = con.prepareStatement(query);
                    psmt.setString(1, USER_ID);
                    rs = psmt.executeQuery();
                    
                    if (rs.next()) {
                        dto.setUSER_ID(rs.getString("USER_ID"));
                    }
                    
                    if(dto.getUSER_ID() == null) {
                    	try {
                    		query = "INSERT INTO users(USER_NUM,USERNAME,EMAIL,USER_ID,PHONENUM,USER_PASSWORD,USER_ZIP,USER_STREET) "
                    				+ "VALUES (LOGINNUMBER2.NEXTVAL , ?, ?, ?, ?, ?, ?, ? ) ";
                            psmt = con.prepareStatement(query);
                            psmt.setString(1, USERNAME);
                            psmt.setString(2, EMAIL);
                            psmt.setString(3, USER_ID);
                            psmt.setString(4, PHONENUM);
                            psmt.setString(5, USER_PASSWORD);
                            psmt.setString(6, USER_ZIP);
                            psmt.setString(7, USER_STREET);
                            rs = psmt.executeQuery();
                            
                    	} catch (Exception e) {
                            e.printStackTrace();
                        }
                        return dto;
                        
                    }else {
                    	dto.setUSER_ID_ERROR("닉네임중복");
                    	System.out.println("닉네임이 중복 됨");
                    }
            	}catch (Exception e) {
                        e.printStackTrace();
                    }
                    return dto;

            }else {
            	dto.setUSER_EMAIL_ERROR("이메일이 중복되었습니다.");
            	System.out.println("이메일 중복 됨");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return dto;
    }


    
    public MemberDTO userInfo(String email) {
		MemberDTO dto = new MemberDTO();
		String query = "SELECT * FROM users WHERE USER_EMAIL=?";
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, email);
			rs = psmt.executeQuery();

			if (rs.next()) {
				dto.setUSER_ID(rs.getString(1));
				dto.setUSERNAME(rs.getString(2));
				dto.setEMAIL(rs.getString(3));
				dto.setPHONENUM(rs.getString(4));
				dto.setUSER_STREET(rs.getString(5));
			}
		} catch (Exception e) {
			System.out.println("회원정보 조회 중 예외 발생");
			e.printStackTrace();
		}
		return dto;
	}
}