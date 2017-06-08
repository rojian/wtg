package priv.luojian.wtg.web;

import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import priv.luojian.wtg.entity.Article;
import priv.luojian.wtg.entity.ArticleType;
import priv.luojian.wtg.entity.Page;
import priv.luojian.wtg.entity.User;
import priv.luojian.wtg.service.ArticleService;
import priv.luojian.wtg.service.UserService;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by Administrator on 2017/3/14.
 */
@Controller
public class ArticleController {
    @Autowired
    private ArticleService articleService;

    //    登录首页
    @RequestMapping(value = "/index.action", method = RequestMethod.GET)
    public String index() {
        return "front-layout-index";
    }


    @RequestMapping(value = "/scenery.action", method = RequestMethod.GET)
    public String single(Model model) {
        return "front-second-scenery";
    }


    @RequestMapping(value = "/scenicspot.action", method = RequestMethod.GET)
    public String contact(Model model) {
        return "front-three-scenicspot";
    }

    @RequestMapping(value = "/news.action", method = RequestMethod.GET)
    public String about(Model model) {
        return "front-second-news";
    }

    @RequestMapping(value = "/sceneryspot.action", method = RequestMethod.GET)
    public String spot() {
        return "front-second-sceneryspot";
    }

    //    保存留言
    @RequestMapping(value = "/save.action", method = RequestMethod.POST)
    public String save(Article article) {
        Date date = new Date(System.currentTimeMillis());
        SimpleDateFormat fmt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String str = fmt.format(date);
        article.setArticleDate(str);
//        通过页面传过来的数据是否含有文章id，执行相应的操作
        articleService.saveArticle(article);
        return index();
    }

    //获取二级页面列表
    @RequestMapping(value = "/getList.action", method = RequestMethod.GET)
    public String getList(Model model, Integer articleTypeId, Integer pageNumber, Integer currentPage) {
        ArticleType articleType = new ArticleType();
        articleType.setArticleTypeId(articleTypeId);
        Page page = new Page();
        if (pageNumber != null) {
            page.setPageNumber(pageNumber);
        } else {
            page.setPageNumber(5);
        }
        if (currentPage != null) {
            page.setCurrentPage(currentPage);
        } else {
            page.setCurrentPage(1);
        }
        String name = "";
        String title = "";
        page = articleService.getArticleList(page, articleType, name, title);
        model.addAttribute("page", page);
        return about(model);
    }

    //    获取三级页面
    @RequestMapping(value = "/three.action", method = RequestMethod.GET)
    public String three(Model model, Article article) {
        article = articleService.getArticle(article.getArticleId());
        if (article != null) {
            String time = article.getArticleDate();
            String time2 = time.substring(0, 10);
            article.setArticleDate(time2);
        }
        model.addAttribute("article", article);

        return contact(model) ;
    }

//   @RequestMapping(value = "/index.do",method = RequestMethod.GET)
//    public String indexdo(){
//        return "back-layout-index";
//    }

    //    分页显示文章列表
    @RequestMapping(value = "/list.do", method = RequestMethod.GET)
    public String listDo(Model model, ArticleType articleType, Integer pageNumber, Integer currentPage, String name, String title) {

        Page page = new Page();
        if (pageNumber != null) {
            page.setPageNumber(pageNumber);
        } else {
            page.setPageNumber(3);
        }
        if (currentPage != null) {
            page.setCurrentPage(currentPage);
        } else {
            page.setCurrentPage(1);
        }
        model.addAttribute("articleTypeId", articleType.getArticleTypeId());
        page = articleService.getArticleList(page, articleType, name, title);

        model.addAttribute("page", page);
        model.addAttribute("name", name);
        model.addAttribute("title", title);
        return "back-second-list";
    }

    //    查看文章
    @RequestMapping(value = "/details.do", method = RequestMethod.GET)
    public String details(Model model, Integer articleTypeId, Article article, Integer style) {

        model.addAttribute("articleTypeId", articleTypeId);
        model.addAttribute("style", style);
        article = articleService.getArticle(article.getArticleId());
        if (article != null) {
            String time = article.getArticleDate();
            String time2 = time.substring(0, 10);
            article.setArticleDate(time2);
        }
        model.addAttribute("article", article);

        return "back-three-details";
    }

    //    删除文章
    @RequestMapping(value = "/remove.do", method = RequestMethod.GET)
    public String remove(Article article, Model model, ArticleType articleType, Integer pageNumber, Integer currentPage, String name, String title) {

        articleService.removeArticle(article);
        return listDo(model, articleType, pageNumber, currentPage, name, title);
    }

    //    保存或修改文章
    @RequestMapping(value = "/save.do", method = RequestMethod.POST)
    public String saveArticle(Article article, Model model, Integer pageNumber, Integer currentPage, String name, String title) {
        System.out.println(article.getArticleId());
        ArticleType articleType = new ArticleType();
        articleType.setArticleTypeId(article.getArticleTypeId());
        Date date = new Date(System.currentTimeMillis());
        SimpleDateFormat fmt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String str = fmt.format(date);
        article.setArticleDate(str);
//        通过页面传过来的数据是否含有文章id，执行相应的操作
        if (article.getArticleId() == null) {
            articleService.saveArticle(article);
        } else {
            articleService.updateArticle(article);
        }
        return listDo(model, articleType, pageNumber, currentPage, name, title);
    }

}

