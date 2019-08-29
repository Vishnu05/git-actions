package Vishnu.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class goooo {

	@Id
	private int id;
	private String go1;
	private String go2;
	private String go3;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
		public String getGo2() {
		return go2;
	}
	public void setGo2(String go2) {
		this.go2 = go2;
	}
	public String getGo3() {
		return go3;
	}
	public void setGo3(String go3) {
		this.go3 = go3;
	}
	public String getGo1() {
		return go1;
	}
	public void setGo1(String go1) {
		this.go1 = go1;
	}
	
}
