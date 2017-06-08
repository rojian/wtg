package priv.luojian.wtg.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import priv.luojian.wtg.dao.ArticleDao;
import priv.luojian.wtg.entity.Article;
import priv.luojian.wtg.entity.ArticleType;
import priv.luojian.wtg.entity.Page;
import priv.luojian.wtg.service.ArticleService;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/5/17.
 */
@Repository
public class ArticleServiceImpl implements ArticleService {
    @Autowired
    private ArticleDao articleDao;

    public Page getArticleList(Page page, ArticleType articleType, String name, String title) {
        if (name == null) {
            name = "";
        }
        if (title == null) {
            title = "";
        }
        Integer articleTypeId=articleType.getArticleTypeId();
        int totalNumber = articleDao.getCount(articleType.getArticleTypeId(), name, title);
        page.setTotalNumber(totalNumber);
        page.init();
        List<Article> articleList;
        articleList = articleDao.getArticleList(page.getCurrentNumber(), page.getPageNumber(), articleType.getArticleTypeId(), name, title);
        for (Article article:articleList) {
            if (article != null) {
                String time = article.getArticleDate();
                String time2 = time.substring(0, 10);
                article.setArticleDate(time2);
            }
        }
        page.setList(articleList);
        return page;
    }

    public void removeArticle(Article article) {
        articleDao.removeArticle(article);
    }

    public void updateArticle(Article article) {
        articleDao.updateArticle(article);
    }

    public void saveArticle(Article article) {
        articleDao.saveArticle(article);
    }

    public Article getArticle(Integer articleId) {
        return articleDao.getArticleById(articleId);
    }
}
