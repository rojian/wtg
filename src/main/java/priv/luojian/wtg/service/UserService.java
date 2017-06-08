package priv.luojian.wtg.service;

import priv.luojian.wtg.entity.User;

/**
 * Created by Administrator on 2017/3/14.
 */
public interface UserService {
    /**
     * 保存单个用户
     */
    public void saveUser(User user);
    /**
     * 通过用户id获取单个用户
     */
    public User getUser(int userId);
    /**
     * 通过用户姓名获取单个用户
     */
    public User getUserByName(String userName);

}
