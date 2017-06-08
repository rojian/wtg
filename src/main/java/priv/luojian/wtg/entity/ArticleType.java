package priv.luojian.wtg.entity;


import org.hibernate.annotations.Proxy;

import javax.persistence.*;
import java.util.*;

@Entity

public class ArticleType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "articletype_id")
    private Integer articleTypeId;
    @Column(name = "articletype_name")
    private String articleTypeName;//文章类型名称如：景区新闻、旅游路线
    public ArticleType() {
    }

    public Integer getArticleTypeId() {
        return articleTypeId;
    }

    public void setArticleTypeId(Integer articleTypeId) {
        this.articleTypeId = articleTypeId;
    }

    public String getArticleTypeName() {
        return articleTypeName;
    }

    public void setArticleTypeName(String articleTypeName) {
        this.articleTypeName = articleTypeName;
    }
}

