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
											<span class="input-group-text" id="inputGroup-sizing-default">중/대로에서 거리</span> 
											<input id="input-road" type="number" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="20">
											%
										</div>
									</td>
									<td>
										<div class="input-group mb-3">
											<span class="input-group-text" id="inputGroup-sizing-default">CCTV 수</span> 
											<input id="input-cctv" type="number" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="16">
											%
										</div>
									</td>
									<td>
										<div class="input-group mb-3">
											<span class="input-group-text" id="inputGroup-sizing-default">유흥주점 	수</span> 
											<input id="input-ent" type="number" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="16">
											%
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<div class="input-group mb-3">
											<span class="input-group-text" id="inputGroup-sizing-default">파출소/지구대에서 거리</span> 
											<input id="input-police" type="number" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="16">
											%										
										</div>
									</td>
									<td>
										<div class="input-group mb-3">
											<span class="input-group-text" id="inputGroup-sizing-default">보안등  수</span> 
											<input id="input-light" type="number" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="16">
											%										
										</div>
									</td>
									<td>
										<div class="input-group mb-3">
											<span class="input-group-text" id="inputGroup-sizing-default">여성안심지킴이집(편의점)에서 거리</span> 
											<input id="input-conv" type="number" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="16">
											%										
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
						url : "${pageContext.request.contextPath }/getInfo", 	
						type : "post",
						data : point, 
						/* 응답 */
						dataType : "json",
						success : function(info) {
							/*성공시 처리해야될 코드 작성*/
							
							console.log(info);
							drawlayer(info);
							info.addr = addr;
							showInfo(info);
							
						},
						error : function(XHR, status, error) {
							console.error(status + " : " + error);
						}
						
					});
					
				},
				error : function(XHR,status, error) {
					console.error(status + " : " + error);
				}
			}); //ajax 끝

		}}).open(); //카카오주소검색 api 끝

	})//주소검색 버튼 click event 끝
	
	/* myList추가 버튼 클릭 */
	$('#add-btn').on("click",function(e) {
		e.stopPropagation();
		console.log("리스트 추가 클릭");
	})
	
	/* 벡터 레이어 그리기 */
	function drawlayer(info){
		//center, zoom 변경
		map.getView().setCenter([info.x, info.y]);
		map.getView().setZoom(17);
		
		var vectorSource = new ol.source.Vector();
		
		//검색 위치 표시
		var feature = new ol.Feature({
			geometry : new ol.geom.Point([info.x, info.y])
		});
		vectorSource.addFeature(feature);
		
		//중/대로에 닿는 원 그리기
		var feature = new ol.Feature({
			geometry : new ol.geom.Circle([info.x, info.y], info.dRoad)
		})
		vectorSource.addFeature(feature);
		
		
		//경찰서 위치  표시
		var policeSource = new ol.source.Vector();
		
		
		var feature = new ol.Feature({
			geometry : new ol.geom.Point([info.policeX, info.policeY])
		});
		policeSource.addFeature(feature);
		
		var policeLayer = new ol.layer.Vector({
			source : policeSource,
			style : new ol.style.Style({
				image : new ol.style.Icon({
					opacity : 1,
					scale : 0.05,
					src : './resources/img/police.png'
				})
			})
		});
		
		map.addLayer(policeLayer); 
		
		
		
		//cctv위치 표시
		for(i=0; i<info.cctvList.length; i++){
			console.log("cc"+info.cctvList[i].cctvX)
			var feature = new ol.Feature({
				geometry : new ol.geom.Point([info.cctvList[i].cctvX, info.cctvList[i].cctvY])
			});
			vectorSource.addFeature(feature);
		}
		
		//보안등위치 표시
		for(i=0; i<info.lightList.length; i++){
			console.log("l"+info.lightList[i].lightX)
			var feature = new ol.Feature({
				geometry : new ol.geom.Point([info.lightList[i].lightX, info.lightList[i].lightY])
			});
			
			vectorSource.addFeature(feature);
		}
		
		//유흥주점위치 표시
		var entSource = new ol.source.Vector();
		
		for(i=0; i<info.entList.length; i++){
			console.log("e"+info.entList[i].entX)
			var feature = new ol.Feature({
				geometry : new ol.geom.Point([info.entList[i].entX, info.entList[i].entY])
			});
			
			entSource.addFeature(feature);
		}
		
		var entLayer = new ol.layer.Vector({
			source : entSource,
			style : new ol.style.Style({
				fill : new ol.style.Fill({color: 'red'})
			})
		});
		
		map.addLayer(entLayer);
		
		
		//여성안심지킴이집 위치 표시
		var convSource = new ol.source.Vector();
		
		var feature = new ol.Feature({
			geometry : new ol.geom.Point([info.convX, info.convY])
		});
		convSource.addFeature(feature);
		
		var convLayer = new ol.layer.Vector({
			source : convSource,
			style : new ol.style.Style({
				image : new ol.style.Icon({
					opacity : 1,
					scale : 0.35,
					src : './resources/img/conv.png'
				})
			})
		});
		
		map.addLayer(convLayer); 
		
		
		//벡터레이어 추가
		var vectorLayer = new ol.layer.Vector({
			source : vectorSource
		});
		
		map.addLayer(vectorLayer); 
		
		
		
/* 		var feature = new ol.Feature({
			geometry : new ol.geom.Point(point)
		});
		
		var vectorSource = new ol.source.Vector();
		vectorSource.addFeature(feature);
		
		var vectorLayer = new ol.layer.Vector({
			source : vectorSource
		});

		map.addLayer(vectorLayer);  */
		
	}
	
	function showInfo(info){
		console.log(info);
		
		var rankAvg = (info.roadRank*$("#input-road").val()/100)+(info.policeRank*$("#input-police").val()/100)+(info.cctvRank*$("#input-cctv").val()/100)
		  	  +(info.lightRank*$("#input-light").val()/100)+(info.entRank*$("#input-ent").val()/100)+(info.convRank*$("#input-conv").val()/100);
		info.rankAvg = rankAvg;
/* 		$("#sel-addr").text(info.addr);
		$("#sel-avg").text(rankAvg.toFixed(2));
		$("#sel-road").text(info.dRoad.toFixed(2));
		$(".sel-road").text(info.dRoad.toFixed(2));
		$("#sel-police").text(info.dPolice.toFixed(2));
		$("#sel-conv").text(info.dConv.toFixed(2));
		$("#sel-cctv").text(info.cntCctv);
		$("#sel-light").text(info.cntLight);
		$("#sel-ent").text(info.cntEnt);
		$("#sel-road-rank").text(info.roadRank);
		$("#sel-police-rank").text(info.policeRank);
		$("#sel-conv-rank").text(info.convRank);
		$("#sel-cctv-rank").text(info.cctvRank);
		$("#sel-light-rank").text(info.lightRank);
		$("#sel-ent-rank").text(info.entRank); */
		
		var str = '';
		str += ' <div id="sel-addr">'+info.addr+' (<span id="sel-avg">'+rankAvg.toFixed(2)+'</span>위)</div>';
		str += ' <div id="sel-info">';
		str += ' 	<ul>';
		str += ' 		<li class="sel">중/대로(도로 폭 12m 이상)에서 거리 <span id="sel-road">'+info.dRoad.toFixed(2)+'</span>m (<span id="sel-road-rank">'+info.roadRank+'</span>위)</li>';
		str += ' 		<li class="sel">파출소/지구대에서 거리 <span id="sel-police">'+info.dPolice.toFixed(2)+'</span>m (<span id="sel-police-rank">'+info.policeRank+'</span>위)</li>';
		str += ' 		<li class="sel">여성안심지킴이집(편의점)에서 <span id="sel-conv">'+info.dConv.toFixed(2)+'</span>m (<span id="sel-conv-rank">'+info.convRank+'</span>위)</li>';
		str += ' 		<li class="sel">반경 <span class="sel-road">'+info.dRoad.toFixed(2)+'</span>m 내 CCTV <span id="sel-cctv">'+info.cntCctv+'</span>개 (<span id="sel-cctv-rank">'+info.cctvRank+'</span>위)</li>';
		str += ' 		<li class="sel">반경 <span class="sel-road">'+info.dRoad.toFixed(2)+'</span>m 내 보안등 <span id="sel-light">'+info.cntLight+'</span>개 (<span id="sel-light-rank">'+info.lightRank+'</span>위)</li>';
		str += ' 		<li class="sel">반경 <span class="sel-road">'+info.dRoad.toFixed(2)+'</span>m 내 유흥주점 <span id="sel-ent">'+info.cntEnt+'</span>개 (<span id="sel-ent-rank">'+info.entRank+'</span>위)</li>';
		str += ' 		<li class="desc">동작구 내 백분위 순위. 0에 가까울 수록 좋음</li>';
		str += ' 	</ul>';
		str += ' </div>';
		str += ' <button id="add-btn" class="btn btn-outline-primary">My List 추가</button>'
		
		$("#searched-bld").html(str);
	
	}
</script>
</html>