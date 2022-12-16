<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="POST">
    <table id="posts">
        <tr><td>Course:</td><td><input type="text" name="Course"/></td></tr>
        <tr><td>Professor:</td><td><input type="text" name="Professor"/></td></tr>
        <tr><td>Classroom:</td><td><input type="text" name="Classroom"/></td></tr>
        <tr><td>ClassHour:</td><td><input type="text" name="ClassHour"/></td></tr>
        <tr><td>LectureIntro:</td><td><textarea cols="50" rows="5" type="text" name="LectureIntro"></textarea></td></tr>
        <tr><td>ClassCapacity:</td><td><input type="number" name ="ClassCapacity"/></td></tr>
        <tr><td>Credit:</td><td><select name="Credit">
            <option value="3"> 3
            <option value="2"> 2
            <option value="1" selected> 1
        </select>
    </table>
    <button type="button" onclick="location.href='posts'">목록보기</button>
    <button type="submit">등록하기</button>
</form>

</body>
</html>