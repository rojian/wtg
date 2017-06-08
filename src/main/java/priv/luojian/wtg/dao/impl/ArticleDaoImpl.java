package priv.luojian.wtg.dao.impl;

import org.hibernate.Hibernate;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import priv.luojian.wtg.dao.ArticleDao;
import priv.luojian.wtg.entity.Article;
import priv.luojian.wtg.entity.ArticleType;
import priv.luojian.wtg.entity.Picture;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/5/17.
 */
@Repository
public class ArticleDaoImpl extends BaseDaoImpl<Article> implements ArticleDao {

    public List<Article> getArticleList(Integer currentNumber, Integer pageNumber, Integer articleTypeId,String name,String title) {
        List<Article> articleList;
        String articleName="%"+name+"%";
        String articleTitle="%"+title+"%";
        String hql = "select a from Article a left join Picture p on a.articleId=p.article.articleId where a.articleTypeId=:articleTypeId and a.articleName like :articleName and a.articleTitle like :articleTitle order by a.articleDate desc";
        Query query = getSession().createQuery(hql);
        query.setParameter("articleTypeId", articleTypeId);
        query.setParameter("articleName", articleName);
        query.setParameter("articleTitle", articleTitle);
        query.setFirstResult(currentNumber);
        query.setMaxResults(pageNumber);
        articleList = query.list();
        return articleList;
//        String sql = "select a.* from article a left join picture p on a.article_id=p.article_id " +
//                "where a.articletype_id=?  order by a.article_id desc limit ?,?";
//        NativeQuery nativeQuery = getSession().createNativeQuery(sql);
//        nativeQuery.setParameter(1, articleTypeId);
//        nativeQuery.setParameter(2, currentNumber);
//        nativeQuery.setParameter(3, pageNumber);
//        articleList = nativeQuery.addEntity(Article.class).list();
//        return articleList;
    }

    public Article getArticleById(Integer articleId) {

        String hql="from Article where articleId=:articleId ";
        Query query=getSession().createQuery(hql);
        query.setParameter("articleId",articleId);

        return (Article) query.uniqueResult();
    }

    public int getCount(Integer articleTypeId,String name,String title) {
        String articleName="%"+name+"%";
        String articleTitle="%"+title+"%";
        String sql = "select count(a.article_id) from article a left join picture p on a.article_id=p.article_id " +
                "where a.articletype_id=? and a.article_name like ? and a.article_title like ?";
        NativeQuery nativeQuery = getSession().createNativeQuery(sql);
        nativeQuery.setParameter(1, articleTypeId);
        nativeQuery.setParameter(2, articleName);
        nativeQuery.setParameter(3, articleTitle);
        return Integer.parseInt(String.valueOf(nativeQuery.uniqueResult()));
    }

    public ArticleType getArticleType(Integer articleTypeId) {
        String sql = "select * from articletype where articletype_id=?";
        NativeQuery nativeQuery = getSession().createNativeQuery(sql);
        nativeQuery.setParameter(1, articleTypeId);
        return (ArticleType) nativeQuery.addEntity(ArticleType.class).uniqueResult();
    }

    public void saveArticle(Article article) {
        getSession().save(article);
    }

    public List<Picture> getPicture(Integer articleId) {
        String sql = "select * from picture where article_id=?";
        NativeQuery nativeQuery = getSession().createNativeQuery(sql);
        nativeQuery.setParameter(1, articleId);
        return (List<Picture>) nativeQuery.addEntity(Picture.class).list();
    }

    public void removeArticle(Article article) {
        getSession().remove(article);
    }

    public void updateArticle(Article article) {
        getSession().update(article);
    }
}
