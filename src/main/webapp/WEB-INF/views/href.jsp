<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><a id="ajaxtest">링크</a> 테스트</h1>
	<table border = "1" id="additive"><tr><th>aaa</th></tr></table>
	
	<c:forEach var = "stu" items="${tList}">
         # 학번: ${stu.id}, 국어: ${stu.kor}, 영어: ${stu.eng},
			수학: ${stu.math}, 총점: ${stu.tot}, 평균: ${stu.avg}
     </c:forEach>
	
	<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
	
	<script>
		$("#ajaxtest").click(function(){
			var v = {'key' : 'test'}
			$.ajax({
				type: "POST",
				url: "href",
				data: JSON.stringify(v),
				contentType: 'application/json',
				datatype: "json",
				
			success: function(result){
				alert("결과값: " + result);
				$("#additive").append("<tr><th>" + result + "</th></tr>");
				$("#additive").append("<tr><th>" + "<img src='https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1gTpBc.img?h=269&w=270&m=6&q=60&o=f&l=f&x=403&y=136'>" + "</th></tr>");
				console.log('test');
				
			},
			error: function(){
				alert("서버와 통신 안됨");
			}
				
				
			})
		}); // 아작스 끝
	</script>
</body>
</html>