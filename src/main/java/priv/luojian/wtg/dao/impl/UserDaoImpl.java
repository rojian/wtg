package priv.luojian.wtg.dao.impl;

import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import priv.luojian.wtg.dao.UserDao;
import priv.luojian.wtg.entity.User;

/**
 * Created by Administrator on 2017/3/14.
 */
@Repository
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {


    public User getByName(String userName) {
        String hql="from User where userName=:userName";
        Query query=getSession().createQuery(hql);
        query.setParameter("userName",userName);
        return (User) query.uniqueResult();
    }
}
