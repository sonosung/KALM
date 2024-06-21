package seoulmate.board;

public class BoardDTO {

	private String idx;
	private String name;
	private String title;
	private String content;
	private String fesname;
	private java.sql.Date postdate;
	private int likecount;
	private int visitcount;
	private String feslocation;
	private String fesstart;
	private String fesend;
	private String fescate;

	public String getFesname() {
		return fesname;
	}

	public void setFesname(String fesname) {
		this.fesname = fesname;
	}

	public String getFeslocation() {
		return feslocation;
	}

	public void setFeslocation(String feslocation) {
		this.feslocation = feslocation;
	}

	public String getFesstart() {
		return fesstart;
	}

	public void setFesstart(String fesstart) {
		this.fesstart = fesstart;
	}

	public String getFesend() {
		return fesend;
	}

	public void setFesend(String fesend) {
		this.fesend = fesend;
	}

	public String getIdx() {
		return idx;
	}

	public void setIdx(String idx) {
		this.idx = idx;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public java.sql.Date getPostdate() {
		return postdate;
	}

	public void setPostdate(java.sql.Date postdate) {
		this.postdate = postdate;
	}

	public int getLikecount() {
		return likecount;
	}

	public void setLikecount(int likecount) {
		this.likecount = likecount;
	}

	public int getVisitcount() {
		return visitcount;
	}

	public void setVisitcount(int visitcount) {
		this.visitcount = visitcount;
	}

	public String getFescate() {
		return fescate;
	}

	public void setFescate(String fescate) {
		this.fescate = fescate;
	}

}
