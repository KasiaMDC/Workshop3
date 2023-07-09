package pl.coderslab.user;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

import pl.coderslab.user.UserDao;

@WebServlet("/user/list")
public class ServletUserList extends HttpServlet {

    //@Resource
    //private UserDao userDao;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserDao userDao = UserDao.getInstance();
        List<User> userList = userDao.findAll();
        req.setAttribute("userList",userList);

//        for (User user: userList) {
//            resp.getWriter().println(user.getName());
//            resp.getWriter().println(user.getId());
//            resp.getWriter().println(user.getEmail());
//
//        }

        getServletContext().getRequestDispatcher("/UserList.jsp").forward(req,resp);
    }
}
