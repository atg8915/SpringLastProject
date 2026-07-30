<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맛집 목록</title>

<style>
.row{
    width:960px;
    margin:0 auto;
}

a{
    text-decoration:none;
    color:#333;
}

.food-item{
    margin-bottom:25px;
}
.food-item img{
    width:100%;
    height:150px;
    object-fit:cover;
}
.food-item p{
    margin-top:8px;
    margin-bottom:0;
    font-size:14px;
    text-align:center;
    overflow:hidden;
    white-space:nowrap;
    text-overflow:ellipsis;
}
.pagination{
    margin-top:20px;
}
.recent-area{
    margin-top:50px;
}
.recent-title{
    font-size:22px;
    font-weight:600;
    margin-bottom:20px;
}
.recent-list{
    display:flex;
    flex-wrap:wrap;
    gap:15px;
}
.recent-item{
    width:120px;
}
.recent-item img{
    width:120px;
    height:120px;
    object-fit:cover;
}
.empty{
    padding:30px 0;
    color:#888;
    text-align:center;
}
</style>
</head>
<body>



<div class="container">

    <!-- 맛집 목록 -->
    <div class="row">
        <c:forEach var="vo" items="${list}">
            <div class="col-sm-3 food-item">
                <a href="../goods/detail_before.do?no=${vo.no}">
                    <img src="${vo.goods_poster}">
                    <p>${vo.goods_name}</p>
                </a>
            </div>
        </c:forEach>
    </div>
    <!-- 페이지 -->
    <div class="row text-center">
        <ul class="pagination">
            <c:if test="${startPage>1}">
                <li>
                    <a href="../main/goods.do?page=${startPage-1}">
                        &laquo;
                    </a>
                </li>
            </c:if>
            <c:forEach var="i" begin="${startPage}" end="${endPage}">
                <li ${i==curpage?"class=active":""}>
                    <a href="../main/goods.do?page=${i}">
                        ${i}
                    </a>
                </li>
            </c:forEach>
            <c:if test="${endPage<totalpage}">
                <li>
                    <a href="../main/goods.do?page=${endPage+1}">
                        &raquo;
                    </a>
                </li>
            </c:if>
        </ul>
    </div>
    <!-- 최근 방문 -->
    <div class="row recent-area">
        <div class="recent-title">
            최근 방문 맛집
        </div>
        <c:if test="${size<1}">
            <div class="empty">
                방문 기록이 없습니다.
            </div>
        </c:if>
        <c:if test="${size>0}">
            <div class="recent-list">
                <c:forEach var="cvo" items="${cList}">
                    <div class="recent-item">
                        <a href="../goods/detail_before.do?no=${cvo.no}">
                            <img src="${cvo.goods_poster}">
                        </a>
                    </div>
                </c:forEach>
            </div>
        </c:if>
    </div>
</div>
</body>
</html>