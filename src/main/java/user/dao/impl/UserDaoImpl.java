package user.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import common.BaseDao;
import user.model.User;
//数据访问
@Repository
public class UserDaoImpl {
//注入
@Autowired
private BaseDao baseDao;


@SuppressWarnings("unchecked")

   public  List<User> queryAll(User user){
	
	   return (List<User>)baseDao.getHibernateTemplate().find("from User");
	  
  }

public void save(User user) {
	// TODO Auto-generated method stub
	baseDao.getHibernateTemplate().save(user);
	
}


public void edit(User user) {
	// TODO Auto-generated method stub
	baseDao.getHibernateTemplate().saveOrUpdate(user);
}


public User info(User user) {
	// TODO Auto-generated method stub
	return baseDao.getHibernateTemplate().get(User.class, user.getId());
}


public void remove(User user) {
	// TODO Auto-generated method stub
	baseDao.getHibernateTemplate().delete(user);
}


}