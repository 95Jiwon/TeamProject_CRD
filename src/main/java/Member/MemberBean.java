package Member;

public class MemberBean {
	private String id;
	private String pass1;//비밀번호
	private String pass2;//비밀번호 확인
	private String name;
	private String address;
	private String tel;
	private String phone;
	private String email;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass1() {
		return pass1;
	}
	public void setPass1(String pass1) {
		this.pass1 = pass1;
	}
	
	public String getPass2() {
		return pass2;
	}
	public void setPass2(String pass2) {
		this.pass2 = pass2;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
//	private char Deleteinfo;
//	public char getDeleteinfo() {
//		return Deleteinfo;
//	}
//	public void setDeleteinfo(char deleteinfo) {
//		Deleteinfo = deleteinfo;
//	}
}
