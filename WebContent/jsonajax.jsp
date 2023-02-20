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
<button onclick="jsonajax()">클릭</button>

<script>
var data = {
		username: "ssar",
		password: "1234"
	}
	/* console.log(data);
	var jsonData = JSON.stringify(data);
	console.log(jsonData); */
	// JSON.stringify() => 자바스크립트 오브젝트를 JSON으로 변경
	// json 처럼 생긴 string임
	// JSON.parse() => JSON을 자바스크립트 오브젝트로 변경
	
/* class Data{ // 자바에서는 이렇게 사용
private String username = "ssar";
private String password = "1234";
} */
function jsonajax(){
	$.ajax({
		type: "POST",
		url: "/ajax/ajax2", 
		data: JSON.stringify(data),
		contentType:"application/json",
		dataType: "json" 
	})
	.done(function(result){ // 응답의 결과를 파라미터로 가짐
		console.log(result);
		console.log(result.username);		
	}) // ajax 통신 완료후에 정상이면 done이 가지고 있는 함수 호출
	.fail(function(error){
	}); // ajax 통신 완료후에 비정상이면 fail이 가지고 있는 함수 호출
}

	
</script>
</body>
</html>
