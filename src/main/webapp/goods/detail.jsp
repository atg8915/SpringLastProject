<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세</title>
<style>
.row{width:960px;margin:30px auto;}
.detail-wrap{display:flex;gap:40px;}
.detail-img img{width:320px;height:320px;object-fit:cover;}
.detail-info{flex:1;}
.detail-title{font-size:28px;font-weight:600;margin-bottom:10px;}
.detail-price{font-size:24px;color:#ff6b00;font-weight:600;margin-bottom:25px;}
.detail-table{width:100%;border-collapse:collapse;}
.detail-table tr{border-bottom:1px solid #eee;}
.detail-table th,.detail-table td{padding:15px 10px;font-size:15px;}
.detail-table th{width:120px;color:#777;font-weight:500;}
.btn-area{text-align:right;margin-top:30px;}
.btn-list{display:inline-block;padding:10px 25px;border:1px solid #333;color:#333;text-decoration:none;}
.btn-list:hover{color:#333;text-decoration:none;}
</style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="detail-wrap">
            <div class="detail-img">
                <img src="${vo.goods_poster}">
            </div>

            <div class="detail-info">
                <div class="detail-title">${vo.goods_name}</div>
                <div class="detail-price">${vo.goods_price}</div>

                <table class="detail-table">
                    <tr>
                        <th>제목</th>
                        <td>${vo.goods_sub}</td>
                    </tr>
                    <tr>
                        <th>수량</th>
                        <td>${vo.goods_discount}</td>
                    </tr>
                    <tr>
                        <th>할인가</th>
                        <td>${vo.goods_first_price}</td>
                    </tr>
                    <tr>
                        <th>배송</th>
                        <td>${vo.goods_delivery}</td>
                    </tr>
                </table>

                <div class="btn-area">
                    <a href="../main/goods.do" class="btn-list">목록</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>