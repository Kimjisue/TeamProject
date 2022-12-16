<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.mycom.myapp.BoardDAO, com.mycom.myapp.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<%--<%--%>
<%--	BoardDAO boardDAO = new BoardDAO();--%>
<%--	String id=request.getParameter("id");	--%>
<%--	BoardVO u=boardDAO.getBoard(Integer.parseInt(id));--%>
<%--%>--%>

<h1>Edit Form</h1>
<%--@elvariable id="boardVO" type=""--%>
<%--@elvariable id="u" type=""--%>
<form:form modelAttribute="u" method="POST" action="../editok">
  <form:hidden path="subjectCode"/>
 <table id="edit">
  <tr><td>Course:</td><td><form:input path ="Course"/></td></tr>
  <tr><td>Professor:</td><td><form:input path ="Professor"/></td></tr>
  <tr><td>Classroom:</td><td><form:input path ="Classroom"/></td></tr>
  <tr><td>ClassHour:</td><td><form:input path ="ClassHour"/></td></tr>
  <tr><td>LectureIntro:</td><td><form:textarea cols="50" rows="5" path="LectureIntro"/></td></tr>
  <tr><td>ClassCapacity:</td><td><form:input path ="ClassCapacity"/></td></tr>
  <tr><td>Credit:</td><td><select name="Credit">
   <option value="3"> 3
   <option value="2"> 2
   <option value="1" selected> 1
   </select>
 </table>

 <input type="submit" value="수정하기"/>
 <input type="button" value="취소하기" onclick="history.back()"/>
</form:form>

</body>
</html>