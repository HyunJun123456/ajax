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
<button onclick="postajax()">클릭</button>

<script>
function postajax(){
	// POST로 key=value 데이터를 전송하고 응답을 json으로 받아보기
	
	$.ajax({
		type: "POST",
		url: "/ajax/ajax1?username=ssar&password=1234", // http://localhost:8080/ajax/ajax1?username=ssar&password=1234
		data: "username=ssar&password=1234", // key=value
		contentType:"application/x-www-form-urlencoded",
		dataType: "json" 
	})
	.done(function(result){ // 응답의 결과를 파라미터로 가짐
		// json으로 받게되면 파싱을 해줘야하는데 파싱이 없으면 text로 받게됨
		// json으로 들어오면 자바스크립트 오브젝트로 파싱해줌
		console.log(result);
		console.log(result.username);		
	}) // ajax 통신 완료후에 정상이면 done이 가지고 있는 함수 호출
	.fail(function(error){
	}); // ajax 통신 완료후에 비정상이면 fail이 가지고 있는 함수 호출
}

	
</script>
</body>
</html>
