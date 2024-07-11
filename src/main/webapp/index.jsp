<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ShoppingMall PORTAL</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<header>
		<div class="logo"><a href="shoppingmallPortalWEB.do">SHOPPINGMALL.ORG</a></div>
		<nav>
			<ul>
				<li><a href="SignUpForm.do">Sign Up</a></li>
				<li><a href="http://localhost:8080/ShoppingMall-WEB/StoneAIsland.do">Stone AIsland</a></li>
				<li><a href="http://172.31.9.177:8080/ShoppingMall/index.do">Adios</a></li>
				<li><a href="http://172.31.9.178:8080/ShoppingMall/index.do">JeonBok</a></li>
			</ul>
		</nav>
	</header>
	<section class="hero">
		<h1>PORTAL WEB</h1>
	</section>
	<section class="products">
		<h2>PRODUCTS</h2>
		<div class="product-list">

			<c:forEach items="${ requestScope.goodsList2 }" var="goodsList2">
				<div class="product-item">
					<a href="http://172.31.9.178:8080/ShoppingMall/product-detail.do?itemCode=${ goodsList2.itemCode }">
						<img src="${ goodsList2.itemAddr }" alt="Goods" style="width: 60%; height: 80%;">
					</a>
					<p class="product-name"><a href="#!">${ goodsList2.itemName }</a></p>
					<span><fmt:formatNumber value="${ goodsList2.itemPrice }" type="number" groupingUsed="true" />원</span>
				</div>
			</c:forEach>
			
			<c:forEach items="${ requestScope.goodsList3 }" var="goodsList3">
				<div class="product-item">
					<a href="/ShoppingMall-WEB/productSingle.do?itemCode=${ goodsList3.itemCode }">
						<img src="${ goodsList3.itemAddr }" alt="Goods" style="width: 60%; height: 80%;">
					</a>
					<p class="product-name"><a href="#!">${ goodsList3.itemName }</a></p>
					<span><fmt:formatNumber value="${ goodsList3.itemPrice }" type="number" groupingUsed="true" />원</span>
				</div>
				</c:forEach>	
					
			<c:forEach items="${ requestScope.goodsList1 }" var="goodsList1">
				<div class="product-item">	
					<a href="http://172.31.9.177:8080/ShoppingMall/detail.do?id=${ goodsList1.itemCode }">
						<img src="${ goodsList1.itemAddr }" alt="Goods" style="width: 60%; height: 80%;">
					</a>
					<p class="product-name"><a href="#!">${ goodsList1.itemName }</a></p>
					<span><fmt:formatNumber value="${ goodsList1.itemPrice }" type="number" groupingUsed="true" />원</span>
				</div>
			</c:forEach>
		</div>
	</section>
</body>
</html>
