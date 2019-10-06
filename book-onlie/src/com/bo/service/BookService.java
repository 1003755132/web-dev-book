package com.bo.service;

import com.bo.entity.Book;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/**
 * @author ty
 * @ClassName BookService
 * @Description 图书业务逻辑类
 * @Date 2019/10/2
 * @Version 1.0
 **/
public class BookService {

    public static List<Book> init() {
       List<Book> bookList = new ArrayList<>(12);
       Book[] books = {
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
        return bookList;
    }


    }
