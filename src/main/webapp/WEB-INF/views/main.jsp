<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet">

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/js/bootstrap.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ol3/v3.14.2/ol.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ol3/v3.14.2/ol-debug.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

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
					<button id="search-btn" class="btn btn-outline-primary">주소 검색</button>
				</div>
				
				<div id="searched-bld">
					<div id="sel-addr">서울시 관악구 장군봉4길 15-10</div>
					<div id="sel-avg">평균 등수 23.5위</div>
					<div id="sel-info">
						<ul>
							<li class="sel">중/대로(도로 폭 12m 이상)로 부터 거리 <span id="sel-road">100</span>m</li>
							<li class="sel">파출소/지구대로 부터 거리 <span id="sel-police">250</span>m</li>
							<li class="sel">반경 <span class="sel-road">100</span>m 내 CCTV <span id="sel-cctv">5</span>개</li>
							<li class="sel">반경 <span class="sel-road">100</span>m 내 보안등 <span id="sel-light">5</span>개</li>
							<li class="sel">반경 <span class="sel-road">100</span>m 내 유흥주점 <span id="sel-ent">5</span>개</li>
							<li class="sel">반경 <span class="sel-road">100</span>m 내 여성안심지킴이집(편의점) <span id="sel-conv">5</span>개</li>
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
					<!-- marked-blds-rank -->
					
					<div class="accordion" id="accordionExample">
						<div class="accordion-item">
							<h2 class="accordion-header" id="headingOne">
								<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" 
								aria-expanded="flase" aria-controls="collapseOne">서울시 관악구 장군봉4길 15-10</button>
							</h2>
							<div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne">
								<div class="accordion-body">
									<div class="mark-avg">평균 등수 23.5위</div>
									<div class="mark-info">
										<ul>
											<li class="mark">중/대로(도로 폭 12m 이상)로 부터 거리 <span class="mark-road">100</span>m</li>
											<li class="mark">파출소/지구대로 부터 거리 <span	class="mark-police">250</span>m</li>
											<li class="mark">반경 <span class="mark-road">100</span>m	내 CCTV <span class="mark-cctv">5</span>개</li>
											<li class="mark">반경 <span class="mark-road">100</span>m 내 보안등 <span class="mark-light">5</span>개</li>
											<li class="mark">반경 <span class="mark-road">100</span>m	내 유흥주점 <span class="mark-ent">5</span>개	</li>
											<li class="mark">반경 <span class="mark-road">100</span>m 내 여성안심지킴이집(편의점) <span class="mark-conv">5</span>개</li>
										</ul>
									</div>
									<!-- mark-Info -->
								</div>
								<!-- accordion-body -->
							</div>
							<!-- collapseOne -->
						</div>
						<!-- accordion-item -->
						<div class="accordion-item">
							<h2 class="accordion-header" id="headingTwo">
								<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo"
								aria-expanded="false" aria-controls="collapseTwo">서울시 관악구 장군봉4길 15-10</button>
							</h2>
							<div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo">
								<div class="accordion-body">
									<div class="mark-avg">평균 등수 23.5위</div>
									<div class="mark-info">
										<ul>
											<li class="mark">중/대로(도로 폭 12m 이상)로 부터 거리 <span class="mark-road">100</span>m</li>
											<li class="mark">파출소/지구대로 부터 거리 <span	class="mark-police">250</span>m</li>
											<li class="mark">반경 <span class="mark-road">100</span>m	내 CCTV <span class="mark-cctv">5</span>개</li>
											<li class="mark">반경 <span class="mark-road">100</span>m 내 보안등 <span class="mark-light">5</span>개</li>
											<li class="mark">반경 <span class="mark-road">100</span>m	내 유흥주점 <span class="mark-ent">5</span>개	</li>
											<li class="mark">반경 <span class="mark-road">100</span>m 내 여성안심지킴이집(편의점) <span class="mark-conv">5</span>개</li>
										</ul>
									</div>
									<!-- mark-Info -->
								</div>
								<!-- accordion-body -->
							</div>
							<!-- collapseTwo -->
						</div>
						<!-- accordion-item -->
						<div class="accordion-item">
							<h2 class="accordion-header" id="headingThree">
								<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree"
								aria-expanded="false" aria-controls="collapseThree"> 서울시 관악구 장군봉4길 15-10</button>
							</h2>
							<div id="collapseThree" class="accordion-collapse collapse"
								aria-labelledby="headingThree">
								<div class="accordion-body">
									<div class="mark-avg">평균 등수 23.5위</div>
									<div class="mark-info">
										<ul>
											<li class="mark">중/대로(도로 폭 12m 이상)로 부터 거리 <span class="mark-road">100</span>m</li>
											<li class="mark">파출소/지구대로 부터 거리 <span	class="mark-police">250</span>m</li>
											<li class="mark">반경 <span class="mark-road">100</span>m	내 CCTV <span class="mark-cctv">5</span>개</li>
											<li class="mark">반경 <span class="mark-road">100</span>m 내 보안등 <span class="mark-light">5</span>개</li>
											<li class="mark">반경 <span class="mark-road">100</span>m	내 유흥주점 <span class="mark-ent">5</span>개	</li>
											<li class="mark">반경 <span class="mark-road">100</span>m 내 여성안심지킴이집(편의점) <span class="mark-conv">5</span>개</li>
										</ul>
									</div>
									<!-- mark-Info -->
								</div>
								<!-- accordion-body -->
							</div>
							<!-- collapseThree -->
						</div>
						<!-- accordion-item -->
					</div>
					<!-- accordion -->

				</div>
				<!-- marked-blds -->

			</div>
			<!-- left -->
			
			
			<div id="right" class="float-left">
				<div id="priority">
					<button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample"
					aria-expanded="false" aria-controls="collapseExample">반영 비율 변경</button>
					
					<div class="collapse" id="collapseExample">
						<div class="card card-body">
							<table id="priority table">
								<tr>
									<td>
										<div class="input-group mb-3">
											<span class="input-group-text" id="inputGroup-sizing-default">중/대로로부터 거리</span> 
											<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
										</div>
									</td>
									<td>
										<div class="input-group mb-3">
											<span class="input-group-text" id="inputGroup-sizing-default">CCTV 수</span> 
											<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
										</div>
									</td>
									<td>
										<div class="input-group mb-3">
											<span class="input-group-text" id="inputGroup-sizing-default">유흥주점 	수</span> 
											<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<div class="input-group mb-3">
											<span class="input-group-text" id="inputGroup-sizing-default">파출소/지구대로부터 거리</span> 
											<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
										</div>
									</td>
									<td>
										<div class="input-group mb-3">
											<span class="input-group-text" id="inputGroup-sizing-default">보안등  수</span> 
											<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
										</div>
									</td>
									<td>
										<div class="input-group mb-3">
											<span class="input-group-text" id="inputGroup-sizing-default">여성안심지킴이집(편의점) 수</span> 
											<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
										</div>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<button class="btn btn-primary">변경</button> 
										반영 비율 합계 : <span id="priority-sum">100</span>% (반영 비율 합계는 100%가 되어야 합니다.)
									</td>
								</tr>
							</table>
						</div>
						<!-- card -->
					</div>
					<!-- collapse -->
				
				</div>
				<!-- priority -->
				
				<div id="map"></div>

			</div>
			<!-- right -->
		</div>
		<!-- content -->
	</div>
	<!-- wrap -->
</body>

<script type="text/javascript">
	var addr = '';
	var x = 0;
	var y = 0;
	
	/* 초기 화면 지도 */
	var view = new ol.View({
		center : ol.proj.transform([ 126.939739, 37.5122476 ], 'EPSG:4326', 'EPSG:3857'),
		zoom : 16
	});

	var map = new ol.Map({
		target : 'map',
		renderer : 'canvas',
		layers : [ new ol.layer.Tile({
			source : new ol.source.XYZ({ 
				url : " http://xdworld.vworld.kr:8080/2d/Base/201512/{z}/{x}/{y}.png"
			})
		}) ],
		view : view
	});

	/* 주소 검색 */
	$('#search-btn').on("click",function() {
		console.log("주소 검색 클릭");
		
		var point = '';
		new daum.Postcode({ oncomplete : function(data) {
			console.log(data.address);
			addr = data.address;
			var url = "https://maps.googleapis.com/maps/api/geocode/json?address=" + addr + "&key=AIzaSyDl9EqQnWPqoxn5ZOEOAde3auL9VBp4NYU";
			
			$.ajax({
				url : url,
				type : "post",
				dataType : "json",
				success : function(data) {
					//주소 검색한 건물 좌표 가져오기
					x = data.results[0].geometry.location.lng;
					y = data.results[0].geometry.location.lat;
					console.log(x + "," + y);
					
					point = ol.proj.transform([ x, y ],'EPSG:4326','EPSG:3857');
					console.log(point);
					var point = {x:point[0], y:point[1]}
					console.log(point)
					$.ajax({
						/* 요청 */
						url : "${pageContext.request.contextPath }/getInfo", //요청 보낼 주소		
						type : "post",
						data : point, //자바스크립트 객체를 json 형식으로 변경
						/* 응답 */
						//dataType : "json",
						success : function(m) {
							/*성공시 처리해야될 코드 작성*/
							console.log("ajax 성공")
						},
						error : function(XHR, status, error) {
							console.error(status + " : " + error);
						}
						
					});
					
					
/* 					var feature = new ol.Feature({
						geometry : new ol.geom.Point(point)
					});
					
					var vectorSource = new ol.source.Vector();
					vectorSource.addFeature(feature);
					
					var vectorLayer = new ol.layer.Vector({
						source : vectorSource
					});

					map.addLayer(vectorLayer); */

				},
				error : function(XHR,status, error) {
					console.error(status + " : " + error);
				}
			}); //ajax 끝

		}}).open(); //카카오주소검색 api 끝

	})//주소검색 버튼 click event 끝
</script>
</html>