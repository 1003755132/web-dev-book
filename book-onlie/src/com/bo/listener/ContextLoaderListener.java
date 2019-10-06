package com.bo.listener;

import com.bo.entity.Book;
import com.bo.entity.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author ty
 * @ClassName ContextLoaderListener
 * @Description 上下文加载监听，在服务器启动的时候即刻生效，用来生成用户数据和图书数据
 * @Date 2019/10/2
 * @Version 1.0
 **/
@WebListener
public class ContextLoaderListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("容器启动");
        //创建并生成用户数据列表
        List<User> userList = new ArrayList<>(3);
        User[] users={
                new User(1,"aaa@qq.com", "698d51a19d8a121ce581499d7b701668","脱缰的狗蛋","user01.jpg","江苏徐州",LocalDate.of(2017,4,23)),
                new User(2,"bbb@qq.com", "698d51a19d8a121ce581499d7b701668","小开心","user02.jpeg","江苏南京",LocalDate.of(2018,7,2)),
                new User(3,"ccc@qq.com", "698d51a19d8a121ce581499d7b701668","小幸福","user03.jpg","江苏泰安",LocalDate.of(2019,8,30))
        };
        userList = Arrays.asList(users);

        //创建并生成图书数据列表
        List<Book> bookList = new ArrayList<>(12);
        Book[] books={
                new Book(1, "春树的诗", "book01.jpg", "春树"),
                new Book(2, "眼中的猎物", "book02.jpg", "(美)米勒"),
                new Book(3, "推理要在晚餐后-2", "book03.jpg", "东川笃哉"),
                new Book(4, "鲨鱼-小牛顿趣味动物馆", "book04.jpg", "贝热龙"),
                new Book(5, "马基雅维利-插图本", "book05.jpg", "[美]帕特里克·克里"),
                new Book(6, "圣经食谱", "book06.jpg", "[美]奇弗洛"),
                new Book(7, "沙飞画传", "book07.jpg", "蔡子谔"),
                new Book(8, "布谷鸟的呼唤", "book08.jpg", "[英]罗伯特·加尔布雷思"),
                new Book(9, "少数派报告", "book09.jpg", "郭敬明"),
                new Book(10, "上帝想看电影", "book010.jpg", "徐李佳"),
                new Book(11, "亚爱一郎的狼狈", "book011.jpg", "[日]泡坂妻夫"),
                new Book(12, "你的世界让你拥有", "book012.jpg", "微酸袅袅")
        };
        bookList = Arrays.asList(books);

        //获得全局变量
        ServletContext servletContext = sce.getServletContext();
        //设置全局变量属性，将用户和图书列表数据记入，整个应用可以共享
        servletContext.setAttribute("userList", userList);
        servletContext.setAttribute("bookList", bookList);
    }

    /**
     * 销毁方法
     *
     * @param sce
     */
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("容器销毁");
    }
}
