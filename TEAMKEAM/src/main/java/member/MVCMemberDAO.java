package member;

import common.DBConnPool;

public class MVCMemberDAO extends DBConnPool {

	public MVCMemberDTO selectUser(String name) {
		MVCMemberDTO dto = new MVCMemberDTO();
		String query = "SELECT * FROM users WHERE username=?";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, name);
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				dto.setUserNum(rs.getInt(1));
				dto.setUserId(rs.getString(2));
				dto.setName(rs.getString(3));
				dto.setPassword(rs.getString(4));
				dto.setbDay(rs.getInt(5));
				dto.setPhone(rs.getInt(6));
				dto.setEmail(rs.getString(7));
				dto.setPfile(rs.getString(8));
				dto.setComment(rs.getString(9));
				dto.setuPhoto(rs.getString(10));
				dto.setFvr(rs.getString(11));
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
						+ " SET username=?, email=?, callnum =? "
						+ " WHERE user_id=?";
			//쿼리문
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getName());
			psmt.setString(2, dto.getEmail());
			psmt.setInt(3, dto.getPhone());
			
			result = psmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("회원 정보 수정 중 예외 발생");
			e.printStackTrace();
		}
		
		return result;
	}

}
