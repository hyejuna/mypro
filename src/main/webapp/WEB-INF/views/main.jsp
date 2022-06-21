<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link
	href="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/css/bootstrap.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/main.css"
	rel="stylesheet">

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/js/bootstrap.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/ol3/v3.14.2/ol.css"
	type="text/css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/ol3/v3.14.2/ol-debug.js"></script>

</head>
<body>
	<div id="wrap">
		<div id="header">
			<div id="logo">MySafeHome</div>


		</div>
		<!-- header -->

		<div id="content" class="clearfix">
			<div id="left" class="float-left">
				<div id="search">
					<button class="btn btn-outline-primary">주소 검색</button>
				</div>
				<div id="searched-bld">
					<div id="sel-addr">서울시 관악구 장군봉4길 15-10</div>
					<div id="sel-avg">평균 등수 23.5위</div>
					<div id="sel-info">
						<ul>
							<li class="sel">중/대로(도로 폭 12m 이상)로 부터 거리 <span id="sel-road">100</span>m
							</li>
							<li class="sel">파출소/지구대로 부터 거리 <span id="sel-police">250</span>m
							</li>
							<li class="sel">반경 <span class="sel-road">100</span>m 내 CCTV
								<span id="sel-cctv">5</span>개
							</li>
							<li class="sel">반경 <span class="sel-road">100</span>m 내 보안등
								<span id="sel-light">5</span>개
							</li>
							<li class="sel">반경 <span class="sel-road">100</span>m 내 유흥주점
								<span id="sel-ent">5</span>개
							</li>
							<li class="sel">반경 <span class="sel-road">100</span>m 내
								여성안심지킴이집(편의점) <span id="sel-conv">5</span>개
							</li>
							<li class="desc">동작구 내 0~100위 중 순위. 0에 가까울 수록 좋음</li>
						</ul>
					</div>
				</div>
				<!-- serched-bld -->
				<div id="marked-blds">
					<div id="marked-blds-title">My List</div>
					<div id="marked-blds-rank">
						<table id="rank-table">
							<tr>
								<td>1위</td>
								<td>서울시 관악구 장군봉4길 15-10</td>
								<td>25.12점</td>
							</tr>
							<tr>
								<td>1위</td>
								<td>서울시 관악구 장군봉4길 15-10</td>
								<td>25.12점</td>
							</tr>
							<tr>
								<td>1위</td>
								<td>서울시 관악구 장군봉4길 15-10</td>
								<td>25.12점</td>
							</tr>

						</table>
					</div>
					<div class="accordion" id="accordionExample">
						<div class="accordion-item">
							<h2 class="accordion-header" id="headingOne">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseOne"
									aria-expanded="flase" aria-controls="collapseOne">서울시
									관악구 장군봉4길 15-10</button>
							</h2>
							<div id="collapseOne" class="accordion-collapse collapse"
								aria-labelledby="headingOne">
								<div class="accordion-body">
									<div class="mark-avg">평균 등수 23.5위</div>
									<div class="mark-info">
										<ul>
											<li class="mark">중/대로(도로 폭 12m 이상)로 부터 거리 <span
												class="mark-road">100</span>m
											</li>
											<li class="mark">파출소/지구대로 부터 거리 <span
												class="mark-police">250</span>m
											</li>
											<li class="mark">반경 <span class="mark-road">100</span>m
												내 CCTV <span class="mark-cctv">5</span>개
											</li>
											<li class="mark">반경 <span class="mark-road">100</span>m
												내 보안등 <span class="mark-light">5</span>개
											</li>
											<li class="mark">반경 <span class="mark-road">100</span>m
												내 유흥주점 <span class="mark-ent">5</span>개
											</li>
											<li class="mark">반경 <span class="mark-road">100</span>m
												내 여성안심지킴이집(편의점) <span class="mark-conv">5</span>개
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="accordion-item">
							<h2 class="accordion-header" id="headingTwo">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseTwo"
									aria-expanded="false" aria-controls="collapseTwo">서울시
									관악구 장군봉4길 15-10</button>
							</h2>
							<div id="collapseTwo" class="accordion-collapse collapse"
								aria-labelledby="headingTwo">
								<div class="accordion-body">
									<div class="mark-avg">평균 등수 23.5위</div>
									<div class="mark-info">
										<ul>
											<li class="mark">중/대로(도로 폭 12m 이상)로 부터 거리 <span
												class="mark-road">100</span>m
											</li>
											<li class="mark">파출소/지구대로 부터 거리 <span
												class="mark-police">250</span>m
											</li>
											<li class="mark">반경 <span class="mark-road">100</span>m
												내 CCTV <span class="mark-cctv">5</span>개
											</li>
											<li class="mark">반경 <span class="mark-road">100</span>m
												내 보안등 <span class="mark-light">5</span>개
											</li>
											<li class="mark">반경 <span class="mark-road">100</span>m
												내 유흥주점 <span class="mark-ent">5</span>개
											</li>
											<li class="mark">반경 <span class="mark-road">100</span>m
												내 여성안심지킴이집(편의점) <span class="mark-conv">5</span>개
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="accordion-item">
							<h2 class="accordion-header" id="headingThree">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseThree"
									aria-expanded="false" aria-controls="collapseThree">
									서울시 관악구 장군봉4길 15-10</button>
							</h2>
							<div id="collapseThree" class="accordion-collapse collapse"
								aria-labelledby="headingThree">
								<div class="accordion-body">
									<div class="mark-avg">평균 등수 23.5위</div>
									<div class="mark-info">
										<ul>
											<li class="mark">중/대로(도로 폭 12m 이상)로부터 거리 <span
												class="mark-road">100</span>m
											</li>
											<li class="mark">파출소/지구대로부터 거리 <span class="mark-police">250</span>m
											</li>
											<li class="mark">반경 <span class="mark-road">100</span>m
												내 CCTV <span class="mark-cctv">5</span>개
											</li>
											<li class="mark">반경 <span class="mark-road">100</span>m
												내 보안등 <span class="mark-light">5</span>개
											</li>
											<li class="mark">반경 <span class="mark-road">100</span>m
												내 유흥주점 <span class="mark-ent">5</span>개
											</li>
											<li class="mark">반경 <span class="mark-road">100</span>m
												내 여성안심지킴이집(편의점) <span class="mark-conv">5</span>개
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- marked-blds -->

			</div>
			<!-- left -->
			<div id="right" class="float-left">
				<div id="priority"></div>

				<button class="btn btn-primary" type="button"
					data-bs-toggle="collapse" data-bs-target="#collapseExample"
					aria-expanded="false" aria-controls="collapseExample">반영
					비율 변경</button>

				<div class="collapse" id="collapseExample">
					<div class="card card-body">
						<table id="priority table">
							<tr>
								<td>
									<div class="input-group mb-3">
										<span class="input-group-text" id="inputGroup-sizing-default">중/대로로부터
											거리</span> <input type="text" class="form-control"
											aria-label="Sizing example input"
											aria-describedby="inputGroup-sizing-default">
									</div>
								</td>
								<td>
									<div class="input-group mb-3">
										<span class="input-group-text" id="inputGroup-sizing-default">CCTV
											수</span> <input type="text" class="form-control"
											aria-label="Sizing example input"
											aria-describedby="inputGroup-sizing-default">
									</div>
								</td>
								<td>
									<div class="input-group mb-3">
										<span class="input-group-text" id="inputGroup-sizing-default">유흥주점
											수</span> <input type="text" class="form-control"
											aria-label="Sizing example input"
											aria-describedby="inputGroup-sizing-default">
									</div>
								</td>


							</tr>
							<tr>

								<td>
									<div class="input-group mb-3">
										<span class="input-group-text" id="inputGroup-sizing-default">파출소/지구대로부터
											거리</span> <input type="text" class="form-control"
											aria-label="Sizing example input"
											aria-describedby="inputGroup-sizing-default">
									</div>
								</td>
								<td>
									<div class="input-group mb-3">
										<span class="input-group-text" id="inputGroup-sizing-default">보안등
											수</span> <input type="text" class="form-control"
											aria-label="Sizing example input"
											aria-describedby="inputGroup-sizing-default">
									</div>
								</td>
								<td>
									<div class="input-group mb-3">
										<span class="input-group-text" id="inputGroup-sizing-default">여성안심지킴이집(편의점)
											수</span> <input type="text" class="form-control"
											aria-label="Sizing example input"
											aria-describedby="inputGroup-sizing-default">
									</div>
								</td>

							</tr>
							<tr>
								<td colspan="3">
									<button class="btn btn-primary">변경</button> 반영 비율 합계 : <span
									id="priority-sum">100</span>% (반영 비율 합계는 100%가 되어야 합니다.)
								</td>
							</tr>

						</table>
					</div>
				</div>
				<div id="map"></div>

			</div>
			<!-- right -->
		</div>
		<!-- content -->
	</div>
	<!-- wrap -->
</body>

<script type="text/javascript">
	var view = new ol.View({
		center : ol.proj.transform([ 126.939739, 37.5122476 ], 'EPSG:4326', 'EPSG:3857'),
		zoom : 16
	});

	var vworldBaseMap = new ol.Map(
			{
				target : 'map',
				renderer : 'canvas',
				layers : [ new ol.layer.Tile(
						{
							source : new ol.source.XYZ(
									{
										url : " http://xdworld.vworld.kr:8080/2d/Base/201512/{z}/{x}/{y}.png"
									})
						}) ],
				view : view
			});
</script>
</html>