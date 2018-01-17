package user.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import user.model.User;
import user.service.impl.UserServerImpl;



@Controller(value = "userAction")
public class UserAction {
	@Autowired
	private UserServerImpl userServerImpl;
	
	private List<User> users=new ArrayList<>();
	private User user;
	
	

	public void setUser(User user) {
		this.user = user;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public User getUser() {
		return user;
	}

	public void setUsers(User user) {
		this.user = user;
	}

	public String do_query() {
		users=userServerImpl.queryAll(user);
		return "list";
	}
	
	public String do_save() {
		
		userServerImpl.save(user);
		return "save";
	}
	public String to_save() {
		return "save";
	}
	
	public String do_edit() {
		
		userServerImpl.edit(user);
		return "edit";
	}
	public String to_edit() {
		user=userServerImpl.info(user);
		return "to_edit";
	}
	
	public String do_remove() {
		System.out.println("remove");
		if(user.getId()!=null){
			userServerImpl.remove(user);
		}		
		return "remove";
	}
	
	public String do_info() {
		user = userServerImpl.info(new User(1));
		System.out.println(user);
		return "info";
	}
}
