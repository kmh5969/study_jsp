<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertanswerform</title>
</head>
<body>

	<h1>답글 달기</h1>
	
	<form action="an.do">
		<input type="hidden" name="command" value="insertanswerres" />
		<input type="hidden" name="parentno" value="${dto.boardno }" />
		<table border="1">
			<tr>
				<th>작성자</th>
				<td><input type="text" name="writer"></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" value="${dto.title }"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea rows="10" cols="60" name="content">${dto.content }</textarea></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="확인"/>
					<input type="button" value="취소" onclick="location.href='an.do?command=selectone&boardno=${dto.boardno}'"/>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>