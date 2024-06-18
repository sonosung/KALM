package seoulmate;

import common.DBConnPool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class BoardDAO {

    private DBConnPool dbConnPool;

    public BoardDAO() {
        dbConnPool = new DBConnPool(); // DBConnPool 인스턴스 생성
    }

    // 데이터 삽입 메소드
    public int insertPost(BoardDTO dto) {
        String sql = "INSERT INTO Board (num, name, title, content, postdate, likecount, visitcount) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try (Connection conn = dbConnPool.con; PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, dto.getNum());
            ps.setString(2, dto.getName());
            ps.setString(3, dto.getTitle());
            ps.setString(4, dto.getContent());
            ps.setDate(5, dto.getPostdate());
            ps.setInt(6, dto.getLikecount());
            ps.setInt(7, dto.getVisitcount());
            return ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        }
    }

    // 데이터 업데이트 메소드
    public int updatePost(BoardDTO dto) {
        String sql = "UPDATE Board SET name=?, title=?, content=?, postdate=?, likecount=?, visitcount=? WHERE num=?";
        try (Connection conn = dbConnPool.con; PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, dto.getName());
            ps.setString(2, dto.getTitle());
            ps.setString(3, dto.getContent());
            ps.setDate(4, dto.getPostdate());
            ps.setInt(5, dto.getLikecount());
            ps.setInt(6, dto.getVisitcount());
            ps.setString(7, dto.getNum());
            return ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        }
    }

    // 데이터 삭제 메소드
    public int deletePost(String num) {
        String sql = "DELETE FROM Board WHERE num=?";
        try (Connection conn = dbConnPool.con; PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, num);
            return ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        }
    }

    // 단일 데이터 조회 메소드
    public BoardDTO selectView(String num) {
        String sql = "SELECT * FROM Board WHERE num=?";
        try (Connection conn = dbConnPool.con; PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, num);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    BoardDTO dto = new BoardDTO();
                    dto.setNum(rs.getString("num"));
                    dto.setName(rs.getString("name"));
                    dto.setTitle(rs.getString("title"));
                    dto.setContent(rs.getString("content"));
                    dto.setPostdate(rs.getDate("postdate"));
                    dto.setLikecount(rs.getInt("likecount"));
                    dto.setVisitcount(rs.getInt("visitcount"));
                    return dto;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // 모든 데이터 조회 메소드
    public List<BoardDTO> selectAll() {
        List<BoardDTO> list = new ArrayList<>();
        String sql = "SELECT * FROM Board ORDER BY postdate DESC";
        try (Connection conn = dbConnPool.con; PreparedStatement ps = conn.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                BoardDTO dto = new BoardDTO();
                dto.setNum(rs.getString("num"));
                dto.setName(rs.getString("name"));
                dto.setTitle(rs.getString("title"));
                dto.setContent(rs.getString("content"));
                dto.setPostdate(rs.getDate("postdate"));
                dto.setLikecount(rs.getInt("likecount"));
                dto.setVisitcount(rs.getInt("visitcount"));

                list.add(dto);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    // 조건에 맞는 데이터 조회 메소드 (예시: 제목으로 검색)
    public List<BoardDTO> searchByTitle(String title) {
        List<BoardDTO> list = new ArrayList<>();
        String sql = "SELECT * FROM Board WHERE title LIKE ?";
        try (Connection conn = dbConnPool.con; PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, "%" + title + "%");
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    BoardDTO dto = new BoardDTO();
                    dto.setNum(rs.getString("num"));
                    dto.setName(rs.getString("name"));
                    dto.setTitle(rs.getString("title"));
                    dto.setContent(rs.getString("content"));
                    dto.setPostdate(rs.getDate("postdate"));
                    dto.setLikecount(rs.getInt("likecount"));
                    dto.setVisitcount(rs.getInt("visitcount"));

                    list.add(dto);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    // 페이징 처리를 위한 데이터 조회 메소드
    public List<BoardDTO> selectListPage(Map<String, Object> map) {
        List<BoardDTO> list = new ArrayList<>();
        // 여기에 페이징 처리 관련 SQL 작성
        int start = (int) map.get("start");
        int end = (int) map.get("end");
        // 예시로 임시 SQL 작성
        String sql = "SELECT * FROM (SELECT rownum AS rnum, num, name, title, content, postdate, likecount, visitcount FROM Board WHERE rownum <= ?) WHERE rnum >= ?";
        try (Connection conn = dbConnPool.con; PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, end);
            ps.setInt(2, start);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    BoardDTO dto = new BoardDTO();
                    dto.setNum(rs.getString("num"));
                    dto.setName(rs.getString("name"));
                    dto.setTitle(rs.getString("title"));
                    dto.setContent(rs.getString("content"));
                    dto.setPostdate(rs.getDate("postdate"));
                    dto.setLikecount(rs.getInt("likecount"));
                    dto.setVisitcount(rs.getInt("visitcount"));

                    list.add(dto);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    // 전체 게시글 수 조회 메소드 (페이징 처리용)
    public int selectCount(Map<String, Object> map) {
        int totalCount = 0;
        // 여기에 전체 게시글 수 조회 SQL 작성
        String sql = "SELECT COUNT(*) AS total FROM Board";
        try (Connection conn = dbConnPool.con; PreparedStatement ps = conn.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                totalCount = rs.getInt("total");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return totalCount;
    }
}
