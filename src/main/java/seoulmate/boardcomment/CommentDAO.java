package seoulmate.boardcomment;

import common.DBConnPool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class CommentDAO extends DBConnPool {

    // 댓글 추가 메서드
    public int insertComment(CommentDTO comment) {
        int result = 0;
        String sql = "INSERT INTO comments (idx, writer, content, createdAt) VALUES (?, ?, ?, ?)";

        try (Connection conn = getDBConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setLong(1, comment.getIdx());
            pstmt.setString(2, comment.getWriter());
            pstmt.setString(3, comment.getContent());
            pstmt.setTimestamp(4, comment.getCreatedAt());

            result = pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    // 게시글 번호에 해당하는 모든 댓글 조회 메서드
    public List<CommentDTO> getAllCommentsByPostId(Long postId) {
        List<CommentDTO> comments = new ArrayList<>();
        String sql = "SELECT * FROM comments WHERE idx = ?";

        try (Connection conn = getDBConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setLong(1, postId);

            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    Long commentId = rs.getLong("commentId");
                    String writer = rs.getString("writer");
                    String content = rs.getString("content");
                    Timestamp createdAt = rs.getTimestamp("createdAt");

                    CommentDTO comment = new CommentDTO(commentId, postId, writer, content, createdAt);
                    comments.add(comment);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return comments;
    }

    // 댓글 삭제 메서드
    public int deleteComment(Long commentId) {
        int result = 0;
        String sql = "DELETE FROM comments WHERE commentId = ?";

        try (Connection conn = getDBConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setLong(1, commentId);

            result = pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}
