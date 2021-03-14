
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>标题</title>

</head>
<body>
    <form action="<%=request.getContextPath()%>/AllMovieServlet" method="get">


    <font color="red">
        <%
            if(request.getAttribute("movies")!= null){
                out.print(request.getAttribute("movies"));
            }
        %>

    </font>

    <div id="submit">
        <input type="submit" value="登录"/>
    </div>
    </form>


    </div>
</body>
