<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>아티스트 등록</h3>
<form:form method="post" modelAttribute="artistCommand" enctype="multipart/form-data">	
	<label>이메일 : </label>
	<form:input path="email1"/>@
	<form:select path="email2">
		<option value="unknown">--선택--</option>
		<form:options itemValue="emailHost"
		 			itemLabel="emailCode"
		 			items="${emailProviderList}"/>
	</form:select><br>
	<label>비밀번호 : </label><form:input path="passwd" type="password" required="required"/>
	<br>	
	<label>성함 : </label><form:input path="name" required="required"/>
	<br>
	<label>주민등록번호 : </label><form:input path="ssn" required="required"/>
	<br>
		<label>연락처</label>
	<form:select path="phone1" required="required">
	<option value="unknown">--선택--</option>
		<form:options items="${phoneProviderList}"/>
	</form:select>
	-<form:input path="phone2"/>
	-<form:input path="phone3"/><br>
	<br>
	<label>장르 : </label><form:input path="genre" required="required"/>
	<br>
	<label>경력 : </label><form:input path="career" required="required"/>
	<br>
<label>MY 프로필 이미지 : </label>
<input type="file" name="imgFile"/>
<input type="submit" value="등록">
</form:form>
</body>
</html>