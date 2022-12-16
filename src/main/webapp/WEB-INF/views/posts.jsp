<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@page import="com.mycom.myapp.BoardDAO"%>
<%@ page import="com.mycom.myapp.BoardDAO" %>
<%@ page import="com.mycom.myapp.BoardVO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deleteok/' + id;
	}
</script>
</head>
<body>
<h1>자유게시판</h1>
<p>관리자님 안녕하세요~ <a href="../login/logout">logout</a></p>
<%--<%--%>
<%--	BoardDAO boardDAO = new BoardDAO();--%>
<%--	List<BoardVO> list = boardDAO.getBoardList();--%>
<%--	request.setAttribute("list",list);--%>
<%--%>--%>
<table id="list" width="90%">
<tr>
	<th>Subjectcode</th>
	<th>Course</th>
	<th>Professor</th>
	<th>Classroom</th>
	<th>ClassHour</th>
	<th>LectureIntro</th>
	<th>ClassCapacity</th>
	<th>Credit</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
<c:forEach items="${posts}" var="u">
	<tr>
		<td>${u.getSubjectCode()}</td>
		<td>${u.getCourse()}</td>
		<td>${u.getProfessor()}</td>
		<td>${u.getClassroom()}</td>
		<td>${u.getClassHour()}</td>
		<td>${u.getLectureIntro()}</td>
		<td>${u.getClassCapacity()}</td>
		<td>${u.getCredit()}</td>
		<td><a href="editform/${u.subjectCode}">Edit</a></td>
		<td><a href="javascript:delete_ok('${u.getSubjectCode()}')">Delete</a></td>
	</tr>
</c:forEach>
</table>
<br/><a href="add">Add New Post</a>
</body>
</html>