package priv.luojian.wtg.dao;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import priv.luojian.wtg.entity.User;

/**
 * Created by Administrator on 2017/5/17.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "/spring.xml")
public class ArticleDaoTest {
    @Autowired
    private ArticleDao articleDao;
    @Test
    public void getUserByName() {
//        User user = userService.getUserByName("罗健");
//        Assert.assertEquals("123",user.getUserPassword());
    }
}
