<%@ page import="cn.shilight.blog.basicutil.PageUtil" %><%--
  Created by IntelliJ IDEA.
  User: 高旭阳
  Date: 2022/11/19
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%---默认的全局公共样式--%>




    <%---动态获取的样式--%>

    <%-- 通过读取数据库中的颜色数据实现界面主题的改变--%>
    <%
            String color_primary = PageUtil.getTheme("1").getColorValue();
    %>

    <%--选项不活跃--%>
    .sg-none-active{
        background-color: rgba(223, 112, 112, 0);
        margin: 5px;
        color: <%=color_primary%>;
        border-radius: 10px;
    }
    .sg-none-active:hover{
        color:  <%=color_primary%>;
    }
    <%--选项活跃--%>
    .sg-active{
        background-color:  <%=color_primary%>;
        margin: 5px;
        color: white;
        border-radius: 10px;
    }
    .sg-active:hover{
        color: white;
    }

    <%--阅读更多的按钮--%>
    .sg-read-more{
        inline-size: 0;
        text-decoration: none;
        color: white;
        background:  <%=color_primary%>;
        padding: 5px;
        border-radius: 5px;
    }

    .sg-read-more:hover{
        background:  <%=color_primary%>;
        color: white;
    }

    <%--文字颜色 普通 主色调--%>
    .sg-text-default{
        color:  <%=color_primary%> !important;
    }
    <%--背景色 主色调--%>
    .sg-bg{
        background-color:  <%=color_primary%> ;
    }
    .sg-button-default{
        background-color:  <%=color_primary%> !important;
        color: white !important;

    }
</style>