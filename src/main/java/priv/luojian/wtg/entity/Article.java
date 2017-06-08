package priv.luojian.wtg.entity;


import org.hibernate.annotations.Proxy;
import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.*;
import java.util.*;
@Entity
@Proxy(lazy = false)
public class Article {
   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)//设置主键自增
   @Column(name = "article_id")
   private Integer articleId;
   @Column(name = "article_title")
   private String articleTitle;//文章标题
   @Column(name = "article_content")
   private String articleContent;//文章内容
   @Column(name = "article_name")
   private String articleName;//如果是新闻则表示发表人姓名，如果是酒店则表示地址
   @Column(name = "article_address")
   private String articleAddress;//如果是新闻则表示发表人姓名，如果是酒店则表示地址
   @Column(name = "article_tel")
   private String articleTel;//电话
   @DateTimeFormat(pattern = "yyyy-MM-dd")
   @Column(name = "article_date")
   private String articleDate;//录入时间

   @Column(name="articletype_id")
   private Integer articleTypeId;
   @OneToMany(mappedBy = "article",cascade = CascadeType.ALL,fetch = FetchType.EAGER)
   private List<Picture> pictureList;

   public Article() {
   }

   public Article(String articleTitle, String articleContent, String articleName, String articleTel, String articleDate, Integer articleTypeId, List<Picture> pictureList) {
      this.articleTitle = articleTitle;
      this.articleContent = articleContent;
      this.articleName = articleName;
      this.articleTel = articleTel;
      this.articleDate = articleDate;
      this.articleTypeId = articleTypeId;
      this.pictureList = pictureList;
   }

   public Integer getArticleId() {
      return articleId;
   }

   public void setArticleId(Integer articleId) {
      this.articleId = articleId;
   }

   public String getArticleTitle() {
      return articleTitle;
   }

   public void setArticleTitle(String articleTitle) {
      this.articleTitle = articleTitle;
   }

   public String getArticleContent() {
      return articleContent;
   }

   public void setArticleContent(String articleContent) {
      this.articleContent = articleContent;
   }

   public String getArticleName() {
      return articleName;
   }

   public void setArticleName(String articleName) {
      this.articleName = articleName;
   }

   public String getArticleTel() {
      return articleTel;
   }

   public void setArticleTel(String articleTel) {
      this.articleTel = articleTel;
   }

   public String getArticleDate() {
      return articleDate;
   }

   public void setArticleDate(String articleDate) {
      this.articleDate = articleDate;
   }

   public Integer getArticleTypeId() {
      return articleTypeId;
   }

   public void setArticleTypeId(Integer articleTypeId) {
      this.articleTypeId = articleTypeId;
   }

   public List<Picture> getPictureList() {
      return pictureList;
   }

   public void setPictureList(List<Picture> pictureList) {
      this.pictureList = pictureList;
   }

   public String getArticleAddress() {
      return articleAddress;
   }

   public void setArticleAddress(String articleAddress) {
      this.articleAddress = articleAddress;
   }
}