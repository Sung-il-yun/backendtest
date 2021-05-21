<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <table id="list">
 <caption>
   <button type="button" id="btnAdd">
     추가
   </button>
 </caption> 
</table>

<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>

<script>

$(function(){
	  $("#btnAdd").click(function(){ //btnAdd라는 버튼을 눌렀을때 ->이벤트 등록
	     var d = new Date(); //date를 d에 대입, 날짜변수 만듦
	     var curTime = d.toLocaleTimeString(); //현재 시간을 대입
	     
	     var html = '<tr><td>' + curTime + '</td>'; //tr, td를 열고 + 문자열로 바꾸고 +td 닫기
	     html += '<td><button type="button" class="btnDel">Del</button>'; //html변수에 삭제버튼을 대입
	     html += '</td></tr>';
	     
	     $("#list").append(html); //list라는 아이디에 html을 추가해라
	  });
	  
	  $("#list").on("click", ".btnDel", function() { //list안의 btnDel을 선택
	    $(this).parent().parent().remove(); //this(btnDel)의 부모(td)의 부모(tr)를 삭제
	  });  

	})

</script>

</body>
</html>