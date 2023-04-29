<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=77921f061bd46b57984341b2088b9406"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">

	$(function() {
		$("#b1").click(function() {
			$("#result").empty()
			$.ajax({
				url: "oneSearch",
				data: {
					id: $("#id").val()
				},
				dataType: "json",
				success: function(json) {
					console.log(json)
					if (json.id != null) {
						id = json.id
						pw = json.pw
						name = json.name
						tel = json.tel
						
						$("#result").html("아이디는 " + id + "<br>" +
											"비밀번호는 " + pw + "<br>" +
											"이름은 " + name + "<br>" +
											"전화번호 " + name + "<br>")
					} else if (json.id = null) {
						$("#result").html('존재하지 않는 아이디입니다.')
					}
				}
			})
		})
		
		$("#b2").click(function() {
			$("#result").empty()
			$("#map").empty()
			$.ajax({
				url: "listSearch",
				dataType: "json",
				success: function(json) {
					console.log(json)
					tableStart = "<table border='1'><tr><th>아이디</th><th>비밀번호</th><th>이름</th><th>전화번호</th></tr>"
					
					/* table 붙이기 */
					let html ='';
					html += tableStart;
					for (var i = 0; i < json.length; i++) {
						id = json[i].id
						pw = json[i].pw
						name = json[i].name
						tel = json[i].tel
						
						table = "<tr><td>" + id + "</td><td>" + pw + "</td><td>" + name + "</td><td>" + tel + "</td></tr>"
						html += table;
					}
					html += "</table>";
					
					$("#result").append(html);
				}
			})
		})
		
		$("#b3").click(function() {
			$("#result").empty()
			$.ajax({
				url: "map2",
				dataType: "json",
				success: function(json) {
					lat = json.lat
					lon = json.lon
					loc = json.loc
					
					var mapContainer = document.getElementById('result'), // 지도를 표시할 div 
				    mapOption = { 
				        center: new kakao.maps.LatLng(lat, lon), // 지도의 중심좌표
				        level: 3 // 지도의 확대 레벨
				    };

					var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
					// 마커가 표시될 위치입니다 
					var markerPosition  = new kakao.maps.LatLng(lat, lon); 
	
					// 마커를 생성합니다
					var marker = new kakao.maps.Marker({
					    position: markerPosition
					});
	
					// 마커가 지도 위에 표시되도록 설정합니다
					marker.setMap(map);
				}
			})
		})
		
		$("#b4").click(function() {
			$("#result").empty()
			$("#map").empty()
			$.ajax({
				url: "chart",
				dataType: "json",
				success: function(json) {
					google.charts.load('current', {'packages':['corechart']});
				    google.charts.setOnLoadCallback(drawChart);

				      function drawChart() {

				        var data = google.visualization.arrayToDataTable([
				          ['Task', 'Hours per Day'],
				          [json[0].doing, json[0].time],
				          [json[1].doing, json[1].time],
				          [json[2].doing, json[2].time],
				          [json[3].doing, json[3].time],
				        ]);

				        var options = {
				          title: 'My Daily Activities'
				        };

				        var chart = new google.visualization.PieChart(document.getElementById('result'));

				        chart.draw(data, options);
				      }
				}

			})
		})
	})
</script>
</head>
<body>
<input id ="id">
<button id="b1">회원정보찾기</button>
<hr>
<button id="b2">전체회원정보</button>
<hr>
<button id="b3">내 현재 위치는?</button>
<hr>
<button id="b4">구글 차트</button>
<hr>
<div id="result" style="width: 900px; height: 500px;" ></div>
<div id="map" style="width:100%; height:350px;"></div>

</body>
</html>