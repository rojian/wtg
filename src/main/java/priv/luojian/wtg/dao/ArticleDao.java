package priv.luojian.wtg.dao;

import priv.luojian.wtg.entity.Article;
import priv.luojian.wtg.entity.ArticleType;
import priv.luojian.wtg.entity.Picture;

import java.util.List;

/**
 * Created by Administrator on 2017/5/17.
 */
public interface ArticleDao extends BaseDao<Article>  {
    /**
     * 通过文章id查询文章
     * @param articleId
     * @return
     */
    public Article getArticleById(Integer articleId);
    /**
     * 查询文章单个类型的总条数
     * @param articleTypeId
     * @return
     */
    public int getCount(Integer articleTypeId,String name,String title);
    /**
     * 通过文章类型id分页查询article
     * @param articleTypeId
     * @return
     */
    List<Article> getArticleList(Integer currentNumber, Integer pageNumber, Integer articleTypeId,String name,String title);
    /**
     * 通过文章id查询articleType
     * @param articleTypeId
     * @return
     */
    ArticleType getArticleType(Integer articleTypeId);

    /**
     * 通过文章id查询picture
     * @param articleId
     * @return
     */
   List<Picture> getPicture(Integer articleId);
    /**
     * 保存文章
     * @param article
     * @return
     */
    void saveArticle(Article article);
    /**
     * 通过id删除文章
     * @param article
     * @return
     */
    void removeArticle(Article article);
    /**
     * 修改文章
     * @param article
     * @return
     */
    void updateArticle(Article article);
}
