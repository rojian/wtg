package priv.luojian.wtg.entity;

import org.hibernate.annotations.Proxy;

import javax.persistence.*;

/**
 * Created by Administrator on 2017/5/16.
 */
@Entity
public class Picture {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)//设置主键自增
    @Column(name = "picture_id")
    private Integer pictureId;
    @Column(name = "picture_url")
    private String pictureUrl;//图片存放路径
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "article_id")
    private Article article;

    public Picture() {
    }

    public Picture(String pictureUrl, Article article) {
        this.pictureUrl = pictureUrl;
        this.article = article;
    }

    public Integer getPictureId() {
        return pictureId;
    }

    public void setPictureId(Integer pictureId) {
        this.pictureId = pictureId;
    }

    public String getPictureUrl() {
        return pictureUrl;
    }

    public void setPictureUrl(String pictureUrl) {
        this.pictureUrl = pictureUrl;
    }

    public Article getArticle() {
        return article;
    }

    public void setArticle(Article article) {
        this.article = article;
    }
}
