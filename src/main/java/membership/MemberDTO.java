package membership;

//public class MemberDTO {
//멤버 변수 선언
//	private String id;
//	private String pass;
//	private String name;
//	private String regidate;
//	public String getId() {
//		return id;
//	}
//	public void setId(String id) {
//		this.id = id;
//	}
//	public String getPass() {
//		return pass;
//	}
//	public void setPass(String pass) {
//		this.pass = pass;
//	}
//	public String getName() {
//		return name;
//	}
//	public void setName(String name) {
//		this.name = name;
//	}
//	public String getRegidate() {
//		return regidate;
//	}
//	public void setRegidate(String regidate) {
//		this.regidate = regidate;
//	}
//	
//}
import java.util.Base64;

public class MemberDTO {

	private int USER_NUM;
	private String USER_NAME;
	private String USER_EMAIL;
	private String USER_NICK;
	private String USER_PHONE;
	private String USER_BIRTHDAY;
	private String USER_PASSWORD;
	private String USER_POST;
	private String USER_COMMENT;
	private byte[] USER_PHOTO;
	private String USER_HOME;
	private String base64uSER_PHOTO;
	private String USER_STREET;
	private String USER_ZIP;

	public String getBase64uSER_PHOTO() {
		return base64uSER_PHOTO;
	}

	public void setBase64uSER_PHOTO(String base64uSER_PHOTO) {
		this.base64uSER_PHOTO = base64uSER_PHOTO;
	}

	public String getUSER_STREET() {
		return USER_STREET;
	}

	public void setUSER_STREET(String uSER_STREET) {
		USER_STREET = uSER_STREET;
	}

	public String getUSER_ZIP() {
		return USER_ZIP;
	}

	public void setUSER_ZIP(String uSER_ZIP) {
		USER_ZIP = uSER_ZIP;
	}

	public int getUSER_NUM() {
		return USER_NUM;
	}

	public void setUSER_NUM(int uSER_NUM) {
		USER_NUM = uSER_NUM;
	}

	public String getUSER_NAME() {
		return USER_NAME;
	}

	public void setUSER_NAME(String uSER_NAME) {
		USER_NAME = uSER_NAME;
	}

	public String getUSER_EMAIL() {
		return USER_EMAIL;
	}

	public void setUSER_EMAIL(String uSER_EMAIL) {
		USER_EMAIL = uSER_EMAIL;
	}

	public String getUSER_NICK() {
		return USER_NICK;
	}

	public void setUSER_NICK(String uSER_NICK) {
		USER_NICK = uSER_NICK;
	}

	public String getUSER_PHONE() {
		return USER_PHONE;
	}

	public void setUSER_PHONE(String uSER_PHONE) {
		USER_PHONE = uSER_PHONE;
	}

	public String getUSER_PASSWORD() {
		return USER_PASSWORD;
	}

	public void setUSER_PASSWORD(String uSER_PASSWORD) {
		USER_PASSWORD = uSER_PASSWORD;
	}

	public String getUSER_POST() {
		return USER_POST;
	}

	public void setUSER_POST(String uSER_POST) {
		USER_POST = uSER_POST;
	}

	public String getUSER_COMMENT() {
		return USER_COMMENT;
	}

	public void setUSER_COMMENT(String uSER_COMMENT) {
		USER_COMMENT = uSER_COMMENT;
	}

	public byte[] getUSER_PHOTO() {
		return USER_PHOTO;
	}

	public void setUSER_PHOTO(byte[] uSER_PHOTO) {
		USER_PHOTO = uSER_PHOTO;
		this.base64uSER_PHOTO = Base64.getEncoder().encodeToString(uSER_PHOTO);
	}

	public String getUSER_HOME() {
		return USER_HOME;
	}

	public void setUSER_HOME(String uSER_HOME) {
		USER_HOME = uSER_HOME;
	}

	public String getUSER_BIRTHDAY() {
		return USER_BIRTHDAY;
	}

	public void setUSER_BIRTHDAY(String uSER_BIRTHDAY) {
		USER_BIRTHDAY = uSER_BIRTHDAY;
	}
}
