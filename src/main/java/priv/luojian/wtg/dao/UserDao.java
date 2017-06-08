package priv.luojian.wtg.dao;

import priv.luojian.wtg.entity.User;

/**
 * Created by Administrator on 2017/3/14.
 */

public interface UserDao extends BaseDao<User> {

    public User getByName(String userName);

}
