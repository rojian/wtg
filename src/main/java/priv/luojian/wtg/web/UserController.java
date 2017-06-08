package priv.luojian.wtg.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import priv.luojian.wtg.entity.User;
import priv.luojian.wtg.service.UserService;

/**
 * Created by Administrator on 2017/5/16.
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "login.do", method = RequestMethod.GET)
    public String index(User user) {
        if (user.getUserName() != null) {
            User user1 = userService.getUserByName(user.getUserName());
            if (user1!= null) {
                if ((user1.getUserPassword()).equals(user.getUserPassword())) {
                    return "back-layout-index";
                }
            }
        }


        return "back-login";
    }

}
