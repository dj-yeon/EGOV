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
<title>Insert title here</title>
</head>

<style>
	table {
	width:400px;
	border-collapse:collapse; /* 셀 사이의 간격 없앰 */
	}
	
	th, td {
		border:1px solid #cccccc;
		padding:5px;
	}
</style>

<script language="javascript">
	function fn_delete(code) {		
		if( confirm("정말 삭제하시겠습니까?") ) {
			location = "codeDelete.do?code="+code;		
		}
	}
	
	function fn_update(code) {
		location = "codeModifyWrite.do?code="+code;
	}
</script>

<body>
<table>
<div class="div1">일반게시판 목록</div>
<div class="div2">Total: ${total }</div>
<div class="div2">

<form name="searchFrm" method="post" action="boardList.do">
	<select name="searchGubun" id="searchGubun">
		<option value="title">제목</option>
		<option value="name">글쓴이</option>
		<option value="content">내용</option>		
	</select>
	<input type="text" name="searchText" id="searchText">
	<button type="submit">검색</button>
</form>
</div>
	
	<tr>
		<th width="15%">번호</th>
		<th width="45%">제목</th>
		<th width="15%">글쓴이</th>
		<th width="15%">등록일</th>
		<th width="15%">조회수</th>
	</tr>
	
	<c:set var="cnt" value="${rowNumber }" /> 
	
	<c:forEach var="result" items="${resultList }">	
		
		<tr align="center">
			<td><c:out value="${cnt }" /></td>
			<td align="left"><c:out value="${result.title }"/></td>
			<td><c:out value="${result.name }" /></td>
			<td><c:out value="${result.rdate }"/></td>
			<td><c:out value="${result.hits }"/></td>
		</tr>	
	
		<c:set var="cnt" value="${cnt-1 }"/>
		
	</c:forEach>
	 
</table>

<div style="width:600px;margin-top:5px; text-align:center;"> 

	<c:forEach var="i" begin="1" end="${totalPage }">
		
		<a href="boardList.do?viewPage=${i }">${i }</a> 
	
	</c:forEach>

</div>


<div style="width:600px;margin-top:5px; text-align:right;"> 
	<button type="button" onclick="location='boardWrite.do'">글쓰기</button>
</div>



</body>
</html>