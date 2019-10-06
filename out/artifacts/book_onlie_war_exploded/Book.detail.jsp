<%--
  Created by IntelliJ IDEA.
  User: ty
  Date: 2019/10/2
  Time: 22:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="com.bo.entity.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书详情页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">
        .iconfont{
            font-family:"iconfont" !important;
            font-size:16px;font-style:normal;
            -webkit-font-smoothing: antialiased;
            -webkit-text-stroke-width: 0.2px;
            -moz-osx-font-smoothing: grayscale;}

        @font-face {
            font-family: 'iconfont';  /* project id 1437756 */
            src: url('//at.alicdn.com/t/font_1437756_irlj2z4w7t.eot');
            src: url('//at.alicdn.com/t/font_1437756_irlj2z4w7t.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_1437756_irlj2z4w7t.woff2') format('woff2'),
            url('//at.alicdn.com/t/font_1437756_irlj2z4w7t.woff') format('woff'),
            url('//at.alicdn.com/t/font_1437756_irlj2z4w7t.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_1437756_irlj2z4w7t.svg#iconfont') format('svg');
        }
        h2, h3 {
            color: rgb(73, 73, 73);
        }
        #search {
            height: 80px;
            background-color: rgb(246, 246, 241);
            display: flex;
            align-items: center;
            padding-left: 8%;
            margin-bottom: 10px;
        }
        .search-input {
            flex: 0 0 40%;
            height: 35px;
            background-color: #fff;
            border: none;
            border-radius: 3px;
            margin-left: 50px;
        }
        .search-btn {
            width: 35px;
            height: 35px;
            background-color: rgb(236, 97, 73);
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .search-btn img {
            width: 50%;
            height: 50%;
        }
        .col-4 img {
            margin: 10px 5px 20px 5px;
            width: 80%;
        }
        hr {
            width: 90%;
            color: #eee;
            margin-top: 10px;
        }
        .col-6 {
            height: 400px;
            padding-right: 10px;
        }
        .col-6 img {
            width: 100%;
            height: 100%;
            border-radius: 20px;
        }
    </style>
</head>
<body>
<%
    Book book = (Book) request.getAttribute("book");
    pageContext.setAttribute("book", book);
%>

<div id="top">
    <jsp:include page="top.jsp"/>
</div>

<div id="search">
    <h2>读书时刻</h2>
    <input type="text" placeholder="书名、作者、ISBN" class="search-input">
    <div class="search-btn">
        <i class="iconfont">&#xe600;</i>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-8">
            <h3>${book.name}</h3>
            <hr>
            <div class="row">
                <div class="col-6">
                    <img src="/images/${book.cover}" alt="">
                </div>
                <div class="col-4">
                    <p>${book.author}</p>
                </div>
            </div>
        </div>
        <div class="right">

            <h3>推荐作者</h3>
            <hr>
            <div class="row-1">

                <div  class="column-2">
                    <img src="https://upload.jianshu.io/users/upload_avatars/13213889/7314c5cc-ca7f-4542-b914-2c8dffaf324d.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/96/h/96/format/webp" class="avatar">
                    <p>无限猴子</p>
                </div>

                <button class="btn-desin1">
                    <i class="iconfont"style="color:rgb(236, 97, 73);;">&#xe6cc;</i>
                    <span class="btn-title"> 关注 </span>
                </button>
                <div  class="column-2">
                    <img src="https://upload.jianshu.io/users/upload_avatars/7663825/7c28763e-002b-4e89-8dea-5b8da210ef2c.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/96/h/96/format/webp" class="avatar">
                    <p>名贵的考拉</p>
                </div>

                <button class="btn-desin1">
                    <i class="iconfont" style="color:rgb(236, 97, 73);;">&#xe6cc;</i>
                    <span class="btn-title"> 关注 </span>
                </button>
                <div  class="column-2">
                    <img src="https://upload.jianshu.io/users/upload_avatars/14715425/e0668349-8c75-43db-8a9d-c388e5f00d0d.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/96/h/96/format/webp" class="avatar">
                    <p>简书首席小管家</p>
                </div>

                <button class="btn-desin1">
                    <i class="iconfont" style="color:rgb(236, 97, 73);">&#xe6cc;</i>
                    <span class="btn-title"> 关注 </span>
                </button>
                <div  class="column-2">
                    <img src="https://upload.jianshu.io/users/upload_avatars/7290998/f64f5ef0-def0-4b26-beb3-b9d88f060ba0.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/96/h/96/format/webp" class="avatar">
                    <p>念远怀人</p>
                </div>

                <button class="btn-desin1">
                    <i class="iconfont"style="color:rgb(236, 97, 73);;">&#xe6cc;</i>
                    <span class="btn-title"> 关注 </span>
                </button>
                <div  class="column-2">
                    <img src="https://upload.jianshu.io/users/upload_avatars/3343569/6940ee65-036f-4b7a-9935-5915d9b67d14.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/96/h/96/format/webp" class="avatar">
                    <p>吴晓布</p>
                </div>

                <button class="btn-desin1">
                    <i class="iconfont"style="color:rgb(236, 97, 73);;">&#xe6cc;</i>
                    <span class="btn-title"> 关注 </span>
                </button>
            </div>
        </div>
    </div>

</div>
</body>
</html>
