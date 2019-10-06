<%@ page import="com.bo.entity.Book" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: ty
  Date: 2019/9/27
  Time: 20:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>主页</title>
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

    .card {
      height: 180px;
      margin: 20px 5px 20px 5px;
    }

    .card img {
      width: 100%;
      height: 90%;
    }

    .card p {
      font-size: 13px;
      color: #9b9b9b;
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


  </style>
</head>
<body>
<%
  List<Book> bookList = (List<Book>) request.getAttribute("bookList");
%>
<div id="top">
  <jsp:include page="top.jsp"/>
</div>

<div id="search">
  <h2>搜索图书</h2>
  <input type="text" placeholder="书名、作者、ISBN" class="search-input">
  <div class="search-btn">
    <i class="iconfont">&#xe600;</i>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-8">
      <h3>新书速递</h3>
      <hr>
      <div class="row">
        <%--遍历图书数据集合，将每个图书对象放入页面对象--%>
        <%
          for (Book book : bookList) {
            pageContext.setAttribute("book", book);
        %>
        <%--引用col-2表示每行显示5本，再追加card细节样式--%>
        <div class="col-2 card">
          <%--点击每本图书封面图，地址栏跳转为/detail/id,进入图书详情Servlet--%>
          <a href="${pageContext.request.contextPath}/detail/${book.id}">
            <img src="images/${book.cover}" alt="">
          </a>
          <p style="color: rgb(51, 119, 178)">${book.name}</p>
          <p>${book.author}</p>
        </div>
        <%
          }
        %>
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
          <i class="iconfont"style="color:rgb(236, 97, 73);">&#xe6cc;</i>
          <span class="btn-title"> 关注 </span>
        </button>
      </div>
      <div class="row-1">
        <div  class="column-2">
          <img src="https://upload.jianshu.io/users/upload_avatars/7663825/7c28763e-002b-4e89-8dea-5b8da210ef2c.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/96/h/96/format/webp" class="avatar">
          <p>名贵的考拉</p>
        </div>

        <button class="btn-desin1">
          <i class="iconfont" style="color:rgb(236, 97, 73);">&#xe6cc;</i>
          <span class="btn-title"> 关注 </span>
        </button>
      </div>
      <div class="row-1">
        <div  class="column-2">
          <img src="https://upload.jianshu.io/users/upload_avatars/14715425/e0668349-8c75-43db-8a9d-c388e5f00d0d.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/96/h/96/format/webp" class="avatar">
          <p>简书首席小管家</p>
        </div>

        <button class="btn-desin1">
          <i class="iconfont" style="color:rgb(236, 97, 73);">&#xe6cc;</i>
          <span class="btn-title"> 关注 </span>
        </button>
      </div>
      <div class="row-1">
        <div  class="column-2">
          <img src="https://upload.jianshu.io/users/upload_avatars/7290998/f64f5ef0-def0-4b26-beb3-b9d88f060ba0.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/96/h/96/format/webp" class="avatar">
          <p>念远怀人</p>
        </div>

        <button class="btn-desin1">
          <i class="iconfont"style="color:rgb(236, 97, 73);">&#xe6cc;</i>
          <span class="btn-title"> 关注 </span>
        </button>
      </div>
      <div class="row-1">
        <div  class="column-2">
          <img src="https://upload.jianshu.io/users/upload_avatars/3343569/6940ee65-036f-4b7a-9935-5915d9b67d14.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/96/h/96/format/webp" class="avatar">
          <p>吴晓布</p>
        </div>

        <button class="btn-desin1">
          <i class="iconfont"style="color:rgb(236, 97, 73);">&#xe6cc;</i>
          <span class="btn-title"> 关注 </span>
        </button>
      </div>
    </div>
  </div>

  <footer>
    <ul>
      <li>@2015-2019</li>

      <li>南京工业职业技术学院</li>
    </ul>
    <ul>
      <li>联系我们</li>
      <li>帮助中心</li>
      <li>法律声明</li>
      <li>移动合作</li>
    </ul>
  </footer>
    </div>
</div>
</body>
</html>
