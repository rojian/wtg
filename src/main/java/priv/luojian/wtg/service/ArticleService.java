package priv.luojian.wtg.service;

import priv.luojian.wtg.entity.Article;
import priv.luojian.wtg.entity.ArticleType;
import priv.luojian.wtg.entity.Page;

/**
 * Created by Administrator on 2017/5/17.
 */
public interface ArticleService {
    /**
     * 通过文章类型id分页查询
     * @param page
     * @param articleType
     * @return
     */
   public Page getArticleList(Page page, ArticleType articleType,String name,String title);
    /**
     * 通过文章id删除文章
     * @param article
     * @return
     */
    public void removeArticle(Article article);

    /**
     * 通过文章id查找文章
     * @param articleId
     * @return
     */
    public Article getArticle(Integer articleId);
    /**
     * 保存文章
     * @param article
     * @return
     */
    void saveArticle(Article article);
    /**
     * 修改文章
     * @param article
     * @return
     */
    void updateArticle(Article article);
}
