package user.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tb_user")
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	private String name;
	private Integer age;
	private String email;
	private Date createDate;
	private Date updateDate;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	public User() {
	}
	public User(Integer id, String name, Integer age, String email, Date createDate, Date updateDate) {
		super();
		this.id = id;
		this.name = name;
		this.age = age;
		this.email = email;
		this.createDate = createDate;
		this.updateDate = updateDate;
	}
	public User(Date createDate, Date updateDate) {
		super();
		this.createDate = createDate;
		this.updateDate = updateDate;
	}
	public User(String name, Integer age, String email, Date createDate, Date updateDate) {
		super();
		this.name = name;
		this.age = age;
		this.email = email;
		this.createDate = createDate;
		this.updateDate = updateDate;
	}
	


	public User(String name, Integer age, String email) {
		super();
		this.name = name;
		this.age = age;
		this.email = email;
	}
	public User(Integer id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", age=" + age + ", email=" + email + ", createDate=" + createDate
				+ ", updateDate=" + updateDate + "]";
	}

}
