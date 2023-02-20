<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
</head>
<body>
<button onclick="getajax()">클릭</button>

<script>
function getajax(){
	// $.ajax("주소").done(); -> GET 요청시 생략이 많이 가능
	
	// GET으로 key=value 데이터를 전송하고 응답을 text/plain을 받을 예정
	$.ajax({
		//type: "GET", // 기본전략이 GET
		url: "/ajax/ajax1?username=ssar&password=1234" // http://localhost:8080/ajax/ajax1?username=ssar&password=1234
		//data: get은 전송할 http의 body가 없음. 그래서 data 필드가 필요없음.
		//contentType: 전송할 data가 없으니까 그 data를 설명할 필드가 필요없음.
		//dataType: "text" // 응답되는 데이터를 자바스크립트 오브젝트로 파싱하는 용도
	})
	.done(function(result){ // 응답의 결과를 파라미터로 가짐
		// json으로 받게되면 파싱을 해줘야하는데 파싱이 없으면 text로 받게됨
		// json으로 들어오면 자바스크립트 오브젝트로 파싱해줌
		alert(result);
	}) // ajax 통신 완료후에 정상이면 done이 가지고 있는 함수 호출
	.fail(function(error){
	}); // ajax 통신 완료후에 비정상이면 fail이 가지고 있는 함수 호출
}

	
</script>
</body>
</html>
