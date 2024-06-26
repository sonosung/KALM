package member;

import common.DBConnPool;

public class MVCMemberDAO extends DBConnPool {

	public MVCMemberDTO selectUser(String email) {
		MVCMemberDTO dto = new MVCMemberDTO();
		String query = "SELECT * FROM users WHERE email=?";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, email);
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				dto.setUsername(rs.getString(1));
				dto.setEmail(rs.getString(2));
				dto.setBirthday(rs.getString(3));
				dto.setPhonenum(rs.getString(4));
				dto.setUser_id(rs.getString(5));
			}
		} catch (Exception e) {
			System.out.println("회원 상세정보 조회 중 예외 발생");
			e.printStackTrace();
		}
		return dto;
	}

	public int updatePost(MVCMemberDTO dto) {
		int result = 0;
		try {
			//쿼리문 템플릿 준비
			String query = "UPDATE users"
						+ " SET username=?, email=?, birthday=?,  setPhonenum=?"
						+ " WHERE email=?";
			//쿼리문
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getUsername());
			psmt.setString(2, dto.getEmail());
			psmt.setString(3, dto.getPhonenum());
			
			result = psmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("회원 정보 수정 중 예외 발생");
			e.printStackTrace();
		}
		
		return result;
	}

}
