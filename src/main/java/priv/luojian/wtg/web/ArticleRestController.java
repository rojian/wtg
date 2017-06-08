package priv.luojian.wtg.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import priv.luojian.wtg.entity.Article;
import priv.luojian.wtg.entity.ArticleType;
import priv.luojian.wtg.entity.Page;
import priv.luojian.wtg.service.ArticleService;

/**
 * Created by Administrator on 2017/5/16.
 */
@Controller
public class ArticleRestController {
    @Autowired
    private ArticleService articleService;
    @RequestMapping(value = "/getArticleList.action",method = RequestMethod.POST)
    public @ResponseBody Page getArticleList(Integer articleTypeId,Integer pageNumber,Integer currentPage){
        ArticleType articleType=new ArticleType();
        articleType.setArticleTypeId(articleTypeId);
        Page page=new Page();
        if (pageNumber!=null){
            page.setPageNumber(pageNumber);
        }else {
            page.setPageNumber(10);
        }
        if (currentPage!=null){
            page.setCurrentPage(currentPage);
        }else {
            page.setCurrentPage(1);
        }
        String name="";
        String title="";
        page=articleService.getArticleList(page,articleType,name,title);
        return page;
    }
}
