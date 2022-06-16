<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<c:set var="a" value="test" />
<c:set var="kor" value="90" />
<c:set var="eng" value="80" />
<c:set var="hap" value="${kor+eng}" />
<c:set var="str" value="javascript" />

국어점수 : ${kor} <br>
영어점수 : ${eng} <br>
합계1 : ${kor } + ${eng } <br>
합계2 : ${kor + eng } <br>
합계3 : ${hap } <br>

문자열 길이 : ${fn:length(str)  } <br>
치환 : ${fn:replace(str,"java","oracle") } <br>
범위설정 : ${fn:substring(str,0,4) } <br>

<c:set var="kor" value="90" />
<c:set var="eng" value="80" />

<c:if var="result" test="${kor == '90' }">
	result = ${result }
</c:if>


 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>

	table {
	width:400px;
	border-collapse:collapse; /* 셀 사이의 간격 없앰 */
	}
	
	th, td {
		boarder:1px solid #cccccc;
		padding:5px;
	}

</style>


<body>

<form name="frm" method="post" action="deptWriteSave.do">
<table>
	<tr>
		<th>부서번호</th>
		<td><input type="text" name="deptno"></td>
	</tr>
	<tr>
		<th>부서이름</th>
		<td><input type="text" name="dname"></td>
	</tr>
	<tr>
		<th>부서위치</th>
		<td><input type="text" name="loc"></td>
	</tr>
	<tr>
		<th colspan="2">
		<button type="submit">저장</button>			
		</th>
	</tr>

</table>


</form>


</body>
</html>