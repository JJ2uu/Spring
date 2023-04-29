<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <style>
        body {
            background: yellow;
        }
    </style>
</head>
<body>
북마크 검색 완료.
<hr>
id ${bag.id} <br>
name ${bag.name} <br>
url ${bag.url} <br>
img <img src = "resources/img/${bag.img}"><br>
</body>
</html>
