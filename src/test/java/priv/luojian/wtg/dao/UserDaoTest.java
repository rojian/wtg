package priv.luojian.wtg.dao;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import priv.luojian.wtg.entity.User;
import priv.luojian.wtg.service.UserService;

/**
 * Created by Administrator on 2017/3/15.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "/spring.xml")
public class UserDaoTest {
    @Autowired
    private UserService userService;

    @Test
    public void saveUserTest() {
        User user = new User("luojian", "123");
        userService.saveUser(user);
    }

    @Test
    public void getUserTest() {
        User user = userService.getUser(1);
        Assert.assertEquals("luojian",user.getUserName());
    }
}
