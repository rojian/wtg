package priv.luojian.wtg.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import priv.luojian.wtg.dao.UserDao;
import priv.luojian.wtg.entity.User;
import priv.luojian.wtg.service.UserService;

/**
 * Created by Administrator on 2017/3/14.
 */
@Repository
public class UserServiceImpl implements UserService{
    @Autowired
    private UserDao userDao;
    public void saveUser(User user) {
        userDao.save(user);
    }

    public User getUser(int userId) {
        return userDao.get(userId);
    }
}
