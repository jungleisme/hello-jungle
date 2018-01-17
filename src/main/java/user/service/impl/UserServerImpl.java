package user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import user.dao.impl.UserDaoImpl;
import user.model.User;



@Service
public class UserServerImpl {
	
	@Autowired
	private UserDaoImpl userDaoImpl;
	
	public List<User> queryAll(User user) {
		return userDaoImpl.queryAll(user);
	}

	public void save(User user) {
		userDaoImpl.save(user);
	}

	public void edit(User user) {
		userDaoImpl.edit(user);
	}

	public User info(User user) {
		return userDaoImpl.info(user);
	}

	public void remove(User user) {
		userDaoImpl.remove(user);
	}
}
