package priv.luojian.wtg.service;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import priv.luojian.wtg.entity.User;

/**
 * Created by Administrator on 2017/3/15.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "/spring.xml")
public class UserServiceTest {
    @Autowired
    private UserService userService;
    @Test
    public void getUserByName() {
        User user = userService.getUserByName("罗健");
        Assert.assertEquals("123",user.getUserPassword());
    }
}
