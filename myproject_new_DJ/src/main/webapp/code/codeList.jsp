<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코드목록</title>
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
<table>
	<caption>코드목록</caption>
	<colgroup> <!-- 테이블 넓이 -->
		<col width="20%"/>
		<col width="40%"/>
		<col width="40%"/>
	</colgroup>
	<tr>
		<th>번호</th>
		<th>그룹명</th>
		<th>코드명</th>
	</tr>
	
	<c:set var="count" value="1" /> <!-- JSTL로 변수 생성 -->	
	<c:forEach var="list" items="${resultList}">
	
		<tr align="center">
			<td><c:out value="${count }" /></td>			
			<td>${list.gid }</td>
			<td>${list.name }</td>
		</tr>	
		<c:set var="count" value="${count+1 }"/>
	</c:forEach>
	
</table>


</body>
</html>