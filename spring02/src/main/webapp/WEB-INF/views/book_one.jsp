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
id ${dto.id} <br>
name ${dto.name} <br>
url ${dto.url} <br>
img <img src = "resources/img/${dto.url}"><br>
</body>
</html>
