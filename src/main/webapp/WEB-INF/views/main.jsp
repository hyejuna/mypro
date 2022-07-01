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
			
		</div>
		<!-- header -->

		<div id="content" class="clearfix">
			<div id="left" class="float-left">
				<div id="logo">MySafeHome</div>
				<div id="search">
					<button id="search-btn" class="btn btn-outline-primary">주소 검색</button>
				</div>
				
				<div id="searched-bld">
					
				</div>
				<!-- serched-bld -->
				<div id="marked-blds" class = "clearfix">
				
					<div id="marked-blds-title"  class="float-left" >My List</div>
					
					<div id="priority">
						<button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample"
						aria-expanded="false" aria-controls="collapseExample">반영 비율 변경</button>
						
						<div class="collapse" id="collapseExample">
							<div class="card card-body">
								<table id="priority-table">
									<tr>
										<td>
											<div class="input-group mb-3">
												<span class="input-group-text" id="inputGroup-sizing-default">대로에서 거리</span> 
												<input id="input-road" type="number" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="30">
												%
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="input-group mb-3">
												<span class="input-group-text" id="inputGroup-sizing-default">파출소/지구대에서 거리</span> 
												<input id="input-police" type="number" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="14">
												%										
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="input-group mb-3">
												<span class="input-group-text" id="inputGroup-sizing-default">CCTV 수</span> 
												<input id="input-cctv" type="number" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="14">
												%
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="input-group mb-3">
												<span class="input-group-text" id="inputGroup-sizing-default">보안등  수</span> 
												<input id="input-light" type="number" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="14">
												%										
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="input-group mb-3">
												<span class="input-group-text" id="inputGroup-sizing-default">유흥주점 	수</span> 
												<input id="input-ent" type="number" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="14">
												%
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="input-group mb-3">
												<span class="input-group-text" id="inputGroup-sizing-default">여성안심지킴이집(편의점) 수</span> 
												<input id="input-conv" type="number" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="14">
												%										
											</div>
										</td>
									</tr>
									<tr>
										<td>반영 비율 합계 : <span id="priority-sum">100</span>% <span id = "priority-desc">(반영 비율 합계는 100%가 되어야 함.)</span></td>
									</tr>
									<tr>
										<td>
											<button id = "btn-change"class="btn btn-primary">변경</button> 
											
										</td>
									</tr>
								</table>
							</div>
							<!-- card -->
						</div>
						<!-- collapse -->
					
					</div>
					<!-- priority -->
					
					
					<div class="accordion" id="myListAccordion">
						
						
					</div>
					<!-- accordion -->

				</div>
				<!-- marked-blds -->
				<button type="button" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
					My List 순위 비교
				</button>

			</div>
			<!-- left -->
			
			
			<div id="right" class="float-left">
				<div id="map">
					<div id="popup"></div>	
				</div>
				<div id = "geoMapSelect"class="btn-group" role="group" aria-label="Basic outlined example">
					<button type="button" id="selBtn1" class="btn btn-outline-primary"><img src="./resources/img/cctv.png"/></button>
					<button type="button" id="selBtn2" class="btn btn-outline-primary"><img src="./resources/img/light.png"/></button>
					<button type="button" id="selBtn3" class="btn btn-outline-primary"><img src="./resources/img/ent.png"/></button>
					<button type="button" id="selBtn4" class="btn btn-outline-primary"><img src="./resources/img/conv.png"/></button>
					<button type="button" id="selBtn5" class="btn btn-outline-primary"><img src="./resources/img/police.png"/></button>
					<button type="button" id="btn-home" class="btn btn-outline-primary"><img src="./resources/img/home.png"/></button>
				</div>
				<div id="geoLayer-legend1" class="geoLegend" style="visibility:hidden">
					<table>
						<tr>
							<td>cctv 수<br>(단위 면적 당)</td>
						</tr>
						<tr>
							<td><img src="./resources/img/cctv_legend.PNG"/></td>
						</tr>
						
					</table>
				</div>
				<div id="geoLayer-legend2" class="geoLegend" style="visibility:hidden">
					<table>
						<tr>
							<td>보안등 수<br>(단위 면적 당)</td>
						</tr>
						<tr>
							<td><img src="./resources/img/light_legend.PNG"/></td>
						</tr>
						
					</table>
				</div>
				<div id="legend" style="visibility:hidden">
					<table>
						<tr>
							<td><img src="./resources/img/circle.png"/></td>
							<td>반경 = 대로까지 거리</td>
						</tr>
						<tr>
							<td><img src="./resources/img/police.png"/></td>
							<td>파출소</td>
						</tr>
						<tr>
							<td><img src="./resources/img/cctv.png"/></td>
							<td>cctv</td>
						</tr>
						<tr>
							<td><img src="./resources/img/light.png"/></td>
							<td>보안등</td>
						</tr>
						<tr>
							<td><img src="./resources/img/ent.png"/></td>
							<td>유흥주점</td>
						</tr>
						<tr>
							<td><img src="./resources/img/conv.png"/></td>
							<td>여성안심지킴이집</td>
						</tr>			
					</table>
				</div>
				<div id="marker-legend" style="visibility:hidden">
					<table>
						<tr>
							<td colspan="2">순위 평균 기준</td>
						</tr>
						<tr>
							<td><img src="./resources/img/marker1.png"/></td>
							<td> 0~20위 </td>
						</tr>
						<tr>
							<td><img src="./resources/img/marker2.png"/></td>
							<td> 21~40위 </td>
						</tr>
						<tr>
							<td><img src="./resources/img/marker3.png"/></td>
							<td> 41~60위 </td>
						</tr>
						<tr>
							<td><img src="./resources/img/marker4.png"/></td>
							<td> 61~80위 </td>
						</tr>
						<tr>
							<td><img src="./resources/img/marker5.png"/></td>
							<td> 81~100위 </td>
						</tr>			
					</table>
				</div>

			</div>
			<!-- right -->
		</div>
		<!-- content -->
	</div>
	<!-- wrap -->
	
	<!-- Modal -->
	<div class="modal" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-lg">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">My List 순위 비교</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        <table id="modal-table">
	        	<tr>
	        		<th>구분</th>
	        		<th>대로</th>
	        		<th>경찰관서</th>
	        		<th>cctv</th>
	        		<th>보안등</th>
	        		<th>유흥주점</th>
	        		<th>여성안심</th>
	        		<th>평균</th>	        		
	        	</tr>
				<tr id="percent">
	        		<td>반영비율(%)</td>
	        		<td id="td-road">30</td>
	        		<td id="td-police">14</td>
	        		<td id="td-cctv">14</td>
	        		<td id="td-light">14</td>
	        		<td id="td-ent">14</td>
	        		<td id="td-conv">14</td>
	        		<td>-</td>	   
	        	</tr>
	        	
	        </table>
	      </div>

	    </div>
	  </div>
	</div>
	
</body>

<script type="text/javascript">
	var addr = '';
	var x = 0;
	var y = 0;
	var searchedInfo = {};
	var listNum = 0;
	var myList = [];
	var no = 0;
	
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
	 	controls: ol.control.defaults({
          attributionOptions: /** @type {olx.control.AttributionOptions} */ ({
            collapsible: false
          })
        }),
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
					//console.log(point);
					var point = {x:point[0], y:point[1]}
					//console.log(point)
					
					getInfo(point, addr);
					
				},
				error : function(XHR,status, error) {
					console.error(status + " : " + error);
				}
			}); // geo코딩 ajax 끝

		}}).open(); //카카오주소검색 api 끝


	})//주소검색 버튼 click event 끝
	
	
	
	/* myList추가 버튼 클릭 */
	$('#searched-bld').on("click","#add-btn",function() {
		console.log("리스트 추가 클릭");
		//console.log(searchedInfo);
		addMyList(searchedInfo);

	})
	
	/* mylist에서 주소 클릭 */
	$('#myListAccordion').on("click", "button", function(){
		console.log("아코디온 클릭");
		var $this = $(this);
		var no = $this.data("no");
		var code = $("#acco-btn"+no+"").attr("aria-expanded")
		if(code =="true"){
			drawlayer(myList[no]);
		} else {
			//이전 벡터 레이어 지우기
			map.getLayers().getArray().filter(layer => layer.get('name') ==='vLayer').forEach(layer => map.removeLayer(layer));
			map.getLayers().getArray().filter(layer => layer.get('name') ==='pLayer').forEach(layer => map.removeLayer(layer));
			map.getLayers().getArray().filter(layer => layer.get('name') ==='eLayer').forEach(layer => map.removeLayer(layer));
			map.getLayers().getArray().filter(layer => layer.get('name') ==='conLayer').forEach(layer => map.removeLayer(layer));
			map.getLayers().getArray().filter(layer => layer.get('name') ==='ccLayer').forEach(layer => map.removeLayer(layer));
			map.getLayers().getArray().filter(layer => layer.get('name') ==='lLayer').forEach(layer => map.removeLayer(layer));			
		}

		
	})
	
	/* 마커클릭 */
	map.on('click', function (evt) {
	    var feature = map.forEachFeatureAtPixel(evt.pixel,
	        function (feature) {
	            return feature;
	        });
	        
	    if (feature) {
	    	var no = feature.get('num')
	        $("#acco-btn"+no+"").attr("class","accordion-button");
	    	$("#acco-btn"+no+"").attr("aria-expanded","true");
	    	$("#collapse"+no+"").attr("class","accordion-collapse collapse show");
	    	console.log(no);
	    } else {
	    	let coordinate = evt.coordinate;
	    	console.log(coordinate);
	    	var geoco = ol.proj.transform(coordinate, 'EPSG:3857', 'EPSG:4326');
	    	console.log(geoco);
	    	var point = {x:coordinate[0], y:coordinate[1]}
						
			var url = "https://maps.googleapis.com/maps/api/geocode/json?latlng=" + geoco[1]+','+geoco[0] + "&key=AIzaSyDl9EqQnWPqoxn5ZOEOAde3auL9VBp4NYU";
			$.ajax({
				url : url,
				type : "post",
				dataType : "json",
				success : function(data) {
					console.log(data);	
					var addr = data.results[0].formatted_address.replace("대한민국 서울특별시","서울");
					getInfo(point, addr);
					
				},
				error : function(XHR,status, error) {
					console.error(status + " : " + error);
				}
			}); // geo코딩 ajax 끝
			
	    }
	}); 

	
	/* 반영 비율 숫자 변경 */
	$(".form-control").keyup(function() {
		var sum = Number($("#input-road").val()) + Number($("#input-police").val()) + Number($("#input-cctv").val()) + 
				  Number($("#input-light").val()) + Number($("#input-ent").val()) + Number($("#input-conv").val());
		$("#priority-sum").text(sum);
		if(sum == 100){
			$("#priority-sum").css("color","black");
			$("#priority-desc").css("color","black");
		} else {
			$("#priority-sum").css("color","red");
			$("#priority-desc").css("color","red");
		}
	});
	
	/* 변경 버튼 클릭 */
	$("#btn-change").on("click", function(){
		console.log("변경 버튼 클릭")
		
		var sum = Number($("#input-road").val()) + Number($("#input-police").val()) + Number($("#input-cctv").val()) + 
		  Number($("#input-light").val()) + Number($("#input-ent").val()) + Number($("#input-conv").val());
		changeRankAvg();
	})
	
	/* 비교테이블 창 닫을 때 */
	$(".btn-close").on("click", function(){
		console.log("닫기 클릭");
		var mbr = markerSource.getExtent();
		map.getView().fit(mbr);
		
	})
	
	/* 특정 지점 치안정보 호출 */
	function getInfo(point, addr){
		$.ajax({
			/* 요청 */
			url : "${pageContext.request.contextPath }/getInfo", 	
			type : "post",
			data : point, 
			/* 응답 */
			dataType : "json",
			success : function(info) {
				/*성공시 처리해야될 코드 작성*/
				
				//console.log(info);
				searchedInfo = info;//전역변수에 담기
				drawlayer(info);
				info.addr = addr;
				showInfo(info);
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
			
		}); // 치안정보 호출 ajax 끝
		
	}
					
	/* 레이어 버튼 클릭  hclecp*/
	$("#btn-home").on("click", function(){
		console.log("home클릭")
		map.getLayers().getArray().filter(layer => layer.get('name') ==='geolayer').forEach(layer => map.removeLayer(layer));
		console.log(map.getLayers().getArray())
		$("#geoLayer-legend1").attr("style","visibility:hidden")
		$("#geoLayer-legend2").attr("style","visibility:hidden")
	})
		
	$("#selBtn1").on("click", function(){
		//console.log("레이어 선택 버튼")
		removeLayer();
		var geolayer = new ol.layer.Tile({
			source : new ol.source.TileWMS({
				url : 'http://localhost:8080/geoserver/cite/wms?service=WMS&version=1.1.0&request=GetMap&layers=cite:cctv_cnt&styles=&bbox=1.4126983E7,4505629.5,1.4135596E7,4511282.5&srs=EPSG:3857&format=image/png'
			}),
			name : 'geolayer'
		})
		map.addLayer(geolayer);	
		$("#geoLayer-legend1").attr("style","visibility:visible")
		$("#geoLayer-legend2").attr("style","visibility:hidden")
	})
	
	$("#selBtn2").on("click", function(){
		//console.log("레이어 선택 버튼")
		removeLayer();
		var geolayer = new ol.layer.Tile({
			source : new ol.source.TileWMS({
				url : 'http://localhost:8080/geoserver/cite/wms?service=WMS&version=1.1.0&request=GetMap&layers=cite:cnt_light&styles=&bbox=1.4126983E7,4505629.5,1.4135694E7,4511048.5&srs=EPSG:3857&format=image/png'
			}),
			name : 'geolayer'
		})
		map.addLayer(geolayer);	
		$("#geoLayer-legend2").attr("style","visibility:visible")
		$("#geoLayer-legend1").attr("style","visibility:hidden")
	})
	
	$("#selBtn3").on("click", function(){
		//console.log("레이어 선택 버튼")
		removeLayer();
		var geolayer = new ol.layer.Tile({
			source : new ol.source.TileWMS({
				url : 'http://localhost:8080/geoserver/cite/wms?service=WMS&version=1.1.0&request=GetMap&layers=cite:dongjak_ent&styles=&bbox=1.4126983E7,4505629.5,1.4135596E7,4511282.5&srs=EPSG:3857&format=image/png'
			}),
			name : 'geolayer'
		})
		map.addLayer(geolayer);	
		$("#geoLayer-legend1").attr("style","visibility:hidden")
		$("#geoLayer-legend2").attr("style","visibility:hidden")
	})
	
	$("#selBtn4").on("click", function(){
		//console.log("레이어 선택 버튼")
		removeLayer();
		var geolayer = new ol.layer.Tile({
			source : new ol.source.TileWMS({
				url : 'http://localhost:8080/geoserver/cite/wms?service=WMS&version=1.1.0&request=GetMap&layers=cite:dongjak_conv&styles=&bbox=1.4126983E7,4505629.5,1.4135596E7,4511282.5&srs=EPSG:3857&format=image/png'
			}),
			name : 'geolayer'
		})
		map.addLayer(geolayer);
		$("#geoLayer-legend1").attr("style","visibility:hidden")
		$("#geoLayer-legend2").attr("style","visibility:hidden")
	})
	
	$("#selBtn5").on("click", function(){
		//console.log("레이어 선택 버튼")
		removeLayer();
		var geolayer = new ol.layer.Tile({
			source : new ol.source.TileWMS({
				url : 'http://localhost:8080/geoserver/cite/wms?service=WMS&version=1.1.0&request=GetMap&layers=cite:dongjak_police&styles=&bbox=1.4126983E7,4505629.5,1.4135596E7,4511282.5&srs=EPSG:3857&format=image/png'
			}),
			name : 'geolayer'
		})
		map.addLayer(geolayer);	
		$("#geoLayer-legend1").attr("style","visibility:hidden")
		$("#geoLayer-legend2").attr("style","visibility:hidden")
	})
	
	
	/* 벡터 레이어 그리기 */
	function drawlayer(info){
		//이전 벡터 레이어 지우기
		map.getLayers().getArray().filter(layer => layer.get('name') ==='vLayer').forEach(layer => map.removeLayer(layer));
		map.getLayers().getArray().filter(layer => layer.get('name') ==='pLayer').forEach(layer => map.removeLayer(layer));
		map.getLayers().getArray().filter(layer => layer.get('name') ==='eLayer').forEach(layer => map.removeLayer(layer));
		map.getLayers().getArray().filter(layer => layer.get('name') ==='conLayer').forEach(layer => map.removeLayer(layer));
		map.getLayers().getArray().filter(layer => layer.get('name') ==='ccLayer').forEach(layer => map.removeLayer(layer));
		map.getLayers().getArray().filter(layer => layer.get('name') ==='lLayer').forEach(layer => map.removeLayer(layer));
		
		//center, zoom 변경
		map.getView().setCenter([info.x, info.y]);
		map.getView().setZoom(18);
		
		var vectorSource = new ol.source.Vector();
		
		//검색 위치 표시
		var feature = new ol.Feature({
			geometry : new ol.geom.Point([info.x, info.y])
		});
		vectorSource.addFeature(feature);
		
		//대로에 닿는 원 그리기
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
			}),
			name : "pLayer"
		});
		
		map.addLayer(policeLayer); 
		
		
		
		//cctv위치 표시
		var cctvSource = new ol.source.Vector();
		console.log(info.cctvList.length);
		for(i=0; i<info.cctvList.length; i++){
			var feature = new ol.Feature({
				geometry : new ol.geom.Point([info.cctvList[i].cctvX, info.cctvList[i].cctvY])
			});
			cctvSource.addFeature(feature);
			
		}
		
		var cctvLayer = new ol.layer.Vector({
			source : cctvSource,
			style : new ol.style.Style({
				image : new ol.style.Icon({
					opacity : 1,
					scale : 0.5,
					src : './resources/img/cctv.png'
				})
			}),
			name:"ccLayer"
		});
		
		map.addLayer(cctvLayer); 
		
		//보안등위치 표시
		var lightSource = new ol.source.Vector();
		console.log(info.lightList.length);
		for(i=0; i<info.lightList.length; i++){
			var feature = new ol.Feature({
				geometry : new ol.geom.Point([info.lightList[i].lightX, info.lightList[i].lightY])
			});
			lightSource.addFeature(feature);
			
		}
		
		var lightLayer = new ol.layer.Vector({
			source : lightSource,
			style : new ol.style.Style({
				image : new ol.style.Icon({
					opacity : 1,
					scale : 0.5,
					src : './resources/img/light.png'
				})
			}),
			name:"lLayer"
		});
		
		map.addLayer(lightLayer); 
		
		//유흥주점위치 표시
		var entSource = new ol.source.Vector();
		console.log(info.entList.length);
		for(i=0; i<info.entList.length; i++){
			var feature = new ol.Feature({
				geometry : new ol.geom.Point([info.entList[i].entX, info.entList[i].entY])
			});
			entSource.addFeature(feature);
			
		}
		
		var entLayer = new ol.layer.Vector({
			source : entSource,
			style : new ol.style.Style({
				image : new ol.style.Icon({
					opacity : 1,
					scale : 0.5,
					src : './resources/img/ent.png'
				})
			}),
			name:"eLayer"
		});
		
		map.addLayer(entLayer); 
		
		
		//여성안심지킴이집 위치 표시
		var convSource = new ol.source.Vector();
		console.log(info.convList.length);
		for(i=0; i<info.convList.length; i++){
			var feature = new ol.Feature({
				geometry : new ol.geom.Point([info.convList[i].convX, info.convList[i].convY])
			});
			convSource.addFeature(feature);
			
		}
		
		var convLayer = new ol.layer.Vector({
			source : convSource,
			style : new ol.style.Style({
				image : new ol.style.Icon({
					opacity : 1,
					scale : 0.35,
					src : './resources/img/conv.png'
				})
			}),
			name:"conLayer"
		});
		
		map.addLayer(convLayer); 
		
		
		//벡터레이어 추가
		var vectorLayer = new ol.layer.Vector({
			source : vectorSource,
			name : "vLayer"
		});
		
		map.addLayer(vectorLayer); 
		
		$("#legend").attr("style","visibility:visible")

	}
	
	function showInfo(info){
		//console.log(info);
		
		var rankAvg = (info.roadRank*$("#input-road").val()/100)+(info.policeRank*$("#input-police").val()/100)+(info.cctvRank*$("#input-cctv").val()/100)
		  	  +(info.lightRank*$("#input-light").val()/100)+(info.entRank*$("#input-ent").val()/100)+(info.convRank*$("#input-conv").val()/100);
		info.rankAvg = rankAvg;
		
		var str = '';
		str += ' <div id="sel-addr">'+info.addr+' (<span id="sel-avg">'+rankAvg.toFixed(2)+'</span>위)</div>';
		str += ' <div id="sel-info">';
		str += ' 	<ul>';
		str += ' 		<li class="sel">대로(도로 폭 20m 이상)에서 거리 <span id="sel-road">'+info.dRoad.toFixed(2)+'</span>m (<span id="sel-road-rank">'+info.roadRank+'</span>위)</li>';
		str += ' 		<li class="sel">파출소/지구대에서 거리 <span id="sel-police">'+info.dPolice.toFixed(2)+'</span>m (<span id="sel-police-rank">'+info.policeRank+'</span>위)</li>';
		str += ' 		<li class="sel">반경 <span class="sel-road">'+info.dRoad.toFixed(2)+'</span>m 내 CCTV <span id="sel-cctv">'+info.cntCctv+'</span>개 (<span id="sel-cctv-rank">'+info.cctvRank+'</span>위)</li>';
		str += ' 		<li class="sel">반경 <span class="sel-road">'+info.dRoad.toFixed(2)+'</span>m 내 보안등 <span id="sel-light">'+info.cntLight+'</span>개 (<span id="sel-light-rank">'+info.lightRank+'</span>위)</li>';
		str += ' 		<li class="sel">반경 <span class="sel-road">'+info.dRoad.toFixed(2)+'</span>m 내 유흥주점 <span id="sel-ent">'+info.cntEnt+'</span>개 (<span id="sel-ent-rank">'+info.entRank+'</span>위)</li>';
		str += ' 		<li class="sel">반경 <span class="sel-road">'+info.dRoad.toFixed(2)+'</span>m 내 여성안심지킴이집 <span id="sel-ent">'+info.cntConv+'</span>개 (<span id="sel-ent-rank">'+info.convRank+'</span>위)</li>';
		str += ' 	</ul>';
		str += ' 	<div class="desc">* 순위 : 동작구 내 백분위 순위.</div>'
		str += ' </div>';
		str += ' <button id="add-btn" class="btn btn-outline-primary">My List 추가</button>'
		
		$("#searched-bld").html(str);
	
	}
	
	function addMyList(info){
		drawList(info, listNum);
		addMarker(info, listNum);
		addTable(info, listNum);
		myList[listNum] = info;
		//console.log(myList);
		listNum = listNum+1;
		//주소검색결과 초기화
		$("#searched-bld").html('');
	}
	
	function drawList(info, num){
		var str = '';
		str += ' <div class="accordion-item">';
		str += ' 	<h2 class="accordion-header" id="heading'+num+'">';
		str += ' 		<button id="acco-btn'+num+'"class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse'+num+'" ';
		str += ' 		aria-expanded="flase" aria-controls="collapse'+num+'" data-no="'+num+'">'+info.addr+'(<span class="myListRankAvg">'+info.rankAvg.toFixed(2)+'</span>위)</button>';
		str += ' 	</h2>';
		str += ' 	<div id="collapse'+num+'" class="accordion-collapse collapse" aria-labelledby="heading'+num+'">';
		str += ' 		<div class="accordion-body">';
		str += ' 			<div class="mark-info">';
		str += ' 				<ul>';
		str += ' 					<li class="mark">대로(도로 폭 20m 이상)에서 거리 <span class="mark-road">'+info.dRoad.toFixed(2)+'</span>m (<span class="mark-road-rank">'+info.roadRank+'</span>위)</li>';
		str += ' 					<li class="mark">파출소/지구대에서 거리 <span	class="mark-police">'+info.dPolice.toFixed(2)+'</span>m(<span class="mark-police-rank">'+info.policeRank+'</span>위)</li>';
		str += ' 					<li class="mark">반경 <span class="mark-road">'+info.dRoad.toFixed(2)+'</span>m	내 CCTV <span class="mark-cctv">'+info.cntCctv+'</span>개(<span class="mark-cctv-rank">'+info.cctvRank+'</span>위)</li>';
		str += ' 					<li class="mark">반경 <span class="mark-road">'+info.dRoad.toFixed(2)+'</span>m 내 보안등 <span class="mark-light">'+info.cntLight+'</span>개(<span class="mark-light-rank">'+info.lightRank+'</span>위)</li>';
		str += ' 					<li class="mark">반경 <span class="mark-road">'+info.dRoad.toFixed(2)+'</span>m	내 유흥주점 <span class="mark-ent">'+info.cntEnt+'</span>개(<span class="mark-ent-rank">'+info.entRank+'</span>위)	</li>';
		str += ' 					<li class="mark">반경 <span class="mark-road">'+info.dRoad.toFixed(2)+'</span>m	내 여성안심지킴이집 <span class="mark-ent">'+info.cntConv+'</span>개(<span class="mark-conv-rank">'+info.convRank+'</span>위)	</li>';
		str += ' 				</ul>';
		str += ' 			</div>';
		str += ' 		</div>';
		str += ' 	</div>';
		str += ' </div>';
		
		$("#myListAccordion").append(str);
	}
	
	function addMarker(info, num){
		var rank = info.rankAvg.toFixed(2);
		var code = 0;
		if(rank <=20){
			code=1;
		} else if(rank <= 40){
			code=2;
		} else if(rank <= 60){
			code=3;
		} else if(rank <= 80){
			code=4;
		} else {
			code = 5;
		}
		var url =  './resources/img/marker'+code+'.png'
		console.log(url);

		var feature = new ol.Feature({
			geometry : new ol.geom.Point([info.x, info.y]),
			num : num,
			
		});
		
		var markerSource = new ol.source.Vector();
		markerSource.addFeature(feature);
		
		var markerLayer = new ol.layer.Vector({
			source : markerSource,
			style : [
				new ol.style.Style({
					image : new ol.style.Icon({
						opacity : 1,
						scale : 1.5,
						src : url
					}),
					zindex:99
				}),
				new ol.style.Style({
					text : new ol.style.Text({
						 font: '28px Calibri,sans-serif',
					     overflow: true,
					     fill: new ol.style.Fill({
					       color: '#000'
					     }),
					     stroke: new ol.style.Stroke({
					       color: '#fff',
					       width: 3
					     }),
					     offsetY: -12,
					     text: rank
					})
				})],
			name:"markerLayer"
		});
		
		map.addLayer(markerLayer); 
		$("#marker-legend").attr("style","visibility:visible")
		
	}
	
/* 	반영 비율 변경 */
	function changeRankAvg(){
		//이전 벡터 레이어 지우기
		map.getLayers().getArray().filter(layer => layer.get('name') ==='markerLayer').forEach(layer => map.removeLayer(layer));

		
		//주소검색결과 초기화
		$("#searched-bld").html('');
		
		//반영비율 적용 rank avg 계산, 화면에 반영		
		for(i=0; i<listNum; i++){
			var info = myList[i];
			var rankAvg = (info.roadRank*$("#input-road").val()/100)+(info.policeRank*$("#input-police").val()/100)+(info.cctvRank*$("#input-cctv").val()/100)
		  	 			  +(info.lightRank*$("#input-light").val()/100)+(info.entRank*$("#input-ent").val()/100)+(info.convRank*$("#input-conv").val()/100);
			$("#heading"+i+"").find(".myListRankAvg").html(rankAvg.toFixed(2));
			myList[i].rankAvg = rankAvg;
			addMarker(myList[i], i);
			$("#rankavg"+i+"").html(rankAvg.toFixed(2));
			
		}
		
		//비교 table 반영비율 변경
		$("#td-road").html($("#input-road").val());
		$("#td-police").html($("#input-police").val());
		$("#td-cctv").html($("#input-cctv").val());
		$("#td-light").html($("#input-light").val());
		$("#td-ent").html($("#input-ent").val());
		$("#td-conv").html($("#input-conv").val());
	
	}
	
	
	/* mylist 순위 비교 테이블에 추가 */
	function addTable(info,num){
		var str = ''
		str += ' <tr>';
		str += ' 	<td>'+info.addr+'</td>';
		str += ' 	<td'+classVf(info.roadRank)+'>'+info.roadRank+'</td>';
		str += ' 	<td'+classVf(info.policeRank)+'>'+info.policeRank+'</td>';
		str += ' 	<td'+classVf(info.cctvRank)+'>'+info.cctvRank+'</td>';
		str += ' 	<td'+classVf(info.lightRank)+'>'+info.lightRank+'</td>';
		str += ' 	<td'+classVf(info.entRank)+'>'+info.entRank+'</td>';
		str += ' 	<td'+classVf(info.convRank)+'>'+info.convRank+'</td>';
		str += ' 	<td id="rankavg'+num+'"'+classVf(info.rankAvg)+'>'+info.rankAvg.toFixed(2)+'</td>';
		str += ' </tr>';
		
		$("#modal-table").append(str);
		
		function classVf(value){
			console.log(value)
			var verify = ""
			if(value<=30){
				verify = ' class="blue"'
			} else if(value >=70){
				verify = ' class="red"'
			}
			console.log(verify)
			return verify;
		}	
	}
	
	/* 레이어 초기화 */
	function removeLayer(){
		map.getLayers().getArray().filter(layer => layer.get('name') ==='vLayer').forEach(layer => map.removeLayer(layer));
		map.getLayers().getArray().filter(layer => layer.get('name') ==='pLayer').forEach(layer => map.removeLayer(layer));
		map.getLayers().getArray().filter(layer => layer.get('name') ==='eLayer').forEach(layer => map.removeLayer(layer));
		map.getLayers().getArray().filter(layer => layer.get('name') ==='conLayer').forEach(layer => map.removeLayer(layer));
		map.getLayers().getArray().filter(layer => layer.get('name') ==='ccLayer').forEach(layer => map.removeLayer(layer));
		map.getLayers().getArray().filter(layer => layer.get('name') ==='lLayer').forEach(layer => map.removeLayer(layer));
		map.getLayers().getArray().filter(layer => layer.get('name') ==='geolayer').forEach(layer => map.removeLayer(layer));
		
	}
	
</script>
</html>