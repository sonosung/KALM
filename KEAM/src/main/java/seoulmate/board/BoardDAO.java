package seoulmate.board;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import common.DBConnPool;

public class BoardDAO extends DBConnPool {

	public BoardDAO() {
		super();
	}

	public int selectCount(Map<String, Object> map) {
		int totalCount = 0;

		String query = "SELECT COUNT(*) FROM board";

		if (map.get("searchWord") != null) {
			query += " WHERE " + map.get("searchField") + " " + " LIKE '%" + map.get("searchWord") + "%'";

		}

		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			rs.next();
			totalCount = rs.getInt(1);

		} catch (Exception e) {
			System.out.println("게시물 카운트 중 예외 발생");
			e.printStackTrace();
		}

		return totalCount;
	}

	public List<BoardDTO> selectListPage(Map<String, Object> map) {
		List<BoardDTO> board = new Vector<BoardDTO>();

		String query = " " + "SELECT * FROM (" + "	SELECT Tb.*, ROWNUM rNum FROM ( " + "		SELECT * FROM board ";

		if (map.get("searchWord") != null) {
			query += " WHERE " + map.get("searchField") + " LIKE '%" + map.get("searchWord") + "%' ";
		}

		query += " 		ORDER BY idx DESC " + " 	) Tb " + " ) " + " WHERE rNum BETWEEN ? AND ?";

		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, map.get("start").toString());
			psmt.setString(2, map.get("end").toString());
			rs = psmt.executeQuery();

			while (rs.next()) {
				BoardDTO dto = new BoardDTO();

				dto.setIdx(rs.getString(1));
				dto.setTitle(rs.getString(2));
				dto.setContent(rs.getString(3));
				dto.setName(rs.getString(4));
				dto.setPostdate(rs.getDate(5));
				dto.setVisitcount(rs.getInt(6));
				dto.setLikecount(rs.getInt(7));
				dto.setFesname(rs.getString(8));
				dto.setFeslocation(rs.getString(9));
				dto.setFesstart(rs.getString(10));
				dto.setFesend(rs.getString(11));

				board.add(dto);
			}

		} catch (Exception e) {
			System.out.println("게시물 조회 중 예외 발생");
			e.printStackTrace();
		}

		return board; // 목록 반환
	}

	// 게시글 데이터를 받아 DB에 추가합니다.
	public int insertWrite(BoardDTO dto) {
	    int result = 0;

	    try {
	        String query = "INSERT INTO board ( " + " idx, title, content, name, fesname, feslocation, fesstart, fesend, fescate, postdate) " + " VALUES ( " + " seq_board_num.NEXTVAL,?, ?, ?, ?, ?, ?, ?, ?, SYSDATE)";

	        psmt = con.prepareStatement(query);
	        psmt.setString(1, dto.getTitle());
	        psmt.setString(2, dto.getContent());
	        psmt.setString(3, dto.getName());
	        psmt.setString(4, dto.getFesname());
	        psmt.setString(5, dto.getFeslocation());
	        psmt.setString(6, dto.getFesstart());
	        psmt.setString(7, dto.getFesend());
	        psmt.setString(8, dto.getFescate());

	        result = psmt.executeUpdate();

	    } catch (Exception e) {
	        System.out.println("게시물 입력 중 예외 발생");
	        e.printStackTrace();
	    } finally {
	        // PreparedStatement, Connection 등의 자원을 반납하는 코드가 필요합니다.
	    }

	    return result;
	}
	public BoardDTO selectView(String idx) {
		BoardDTO dto = new BoardDTO();
		String query = "SELECT * FROM board WHERE idx=?";
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, idx);
			rs = psmt.executeQuery();

			if (rs.next()) {
				dto.setIdx(rs.getString(1));
				dto.setTitle(rs.getString(2));
				dto.setContent(rs.getString(3));
				dto.setName(rs.getString(4));
				dto.setPostdate(rs.getDate(5));
				dto.setVisitcount(rs.getInt(6));
				dto.setLikecount(rs.getInt(7));
				dto.setFesname(rs.getString(8));
				dto.setFeslocation(rs.getString(9));
				dto.setFesstart(rs.getString(10));
				dto.setFesend(rs.getString(11));
				dto.setFescate(rs.getString(12));
			}
		} catch (Exception e) {
			System.out.println("게시물 상세보기 중 예외 발생");
			e.printStackTrace();
		}
		return dto;
	}

	// 조회수를 1 증가시킵니다.
	public void updateVisitCount(String idx) {
		String query = "UPDATE board SET " + " visitcount=visitcount+1 " + " WHERE idx=?";

		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, idx);
			psmt.executeQuery();
		} catch (Exception e) {
			System.out.println("게시물 조회수 증가 중 예외 발생");
			e.printStackTrace();
		}

	}

	// 다운로드 횟수를 1 증가시킵니다.
	public void downCountPlus(String idx) {
		String sql = "UPDATE board SET " + " downcount=downcount+1 " + " WHERE idx=? ";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, idx);
			psmt.executeUpdate();
		} catch (Exception e) {
		}
	}

	// 입력한 비밀번호가 지정한 일련번호의 게시물의 비밀번호와 일치하는지 확인합니다.
//	public boolean confirmPassword(String pass, String idx) {
//		boolean isCorr = true;
//		try {
//			String sql = "SELECT COUNT(*) FROM board WHERE pass=? AND idx=?";
//			psmt = con.prepareStatement(sql);
//			psmt.setString(1, pass);
//			psmt.setString(2, idx);
//			rs = psmt.executeQuery();
//			rs.next();
//			if (rs.getInt(1) == 0) {
//				isCorr = false;
//			}
//		} catch (Exception e) {
//			isCorr = false;
//			e.printStackTrace();
//		}

//		return isCorr;

//	}

	public int deletePost(String idx) {
		int result = 0;

		try {
			String query = "DELETE FROM board WHERE idx=?";
			psmt = con.prepareStatement(query);
			psmt.setString(1, idx);
			result = psmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("게시물 삭제 중 예외 발생");
			e.printStackTrace();
		}
		return result;
	}

//	public int updatePost(BoardDTO dto) {
//		int result = 0;
//		try {
	// 쿼리문 템플릿 준비
//			String query = "UPDATE board" + " SET title=?, name=?, content=?, ofile=?, sfile=? "
//					+ " WHERE idx=? and pass=?";

	// 쿼리문 준비
//			psmt = con.prepareStatement(query);
//			psmt.setString(1, dto.getTitle());
//			psmt.setString(2, dto.getName());
//			psmt.setString(3, dto.getContent());

	// 쿼리문 실행
//			result = psmt.executeUpdate();
//		} catch (Exception e) {
//			System.out.println("게시물 수정 중 예외 발생");
//			e.printStackTrace();
//		}
//		return result;
//	}

}