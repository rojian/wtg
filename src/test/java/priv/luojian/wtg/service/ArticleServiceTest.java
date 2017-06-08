package priv.luojian.wtg.service;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import priv.luojian.wtg.entity.Article;
import priv.luojian.wtg.entity.ArticleType;
import priv.luojian.wtg.entity.Page;

/**
 * Created by Administrator on 2017/5/17.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "/spring.xml")
public class ArticleServiceTest {
    @Autowired
    private ArticleService articleService;
    @Test
    public void getUserByName() {
        Page page = new Page();
        page.setCurrentPage(2);
        page.setPageNumber(3);
        ArticleType articleType=new ArticleType();
        articleType.setArticleTypeId(1);
        page=articleService.getArticleList(page,articleType,"","");
        Assert.assertEquals(3,page.getList().size());
    }
}
