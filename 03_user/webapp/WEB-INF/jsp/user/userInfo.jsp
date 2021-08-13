<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/taglibMenu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userInfo</title>
</head>
<body>
<jsp:include page="../inc/header.jsp"></jsp:include>
<h3>상세정보조회</h3>
<form action="/user/updateUserInfo" method="post">
<table>
	<tr>
		<td>아이디</td>
		<td><input type="text" name="userId" value="${dto.userId}" readOnly=readOnly></td>
	</tr>
	
	<tr>
		<td>비밀번호</td>
		<td>
			<input type="password" name="userPw" value="${dto.userPw}"/>
		</td>
	</tr>
	
	<tr>
		<td>이름</td>
		<td><input type="text" name="userName" value="${dto.userName}"></td>
	</tr>
	
	<tr>
		<td>휴대폰</td>
		<td><input type="text" name="phone" value="${dto.phone}"></td>
	</tr>

	<tr>
		<td>이메일</td>
		<td><input type="text" name="email" value="${dto.email}"></td>
	</tr>

	<tr>
		<td>질환</td>
		<td>
			<c:choose>
				<c:when test="${dto.diseaseNo == '00'}">
					<select name="diseaseNo">
						<option value="00">해당없음</option>
						<option value="01">당뇨</option>
						<option value="02">간질환</option>
						<option value="03">심장질환</option>
						<option value="04">신장질환</option>
						<option value="05">뇌질환</option>
						<option value="06">암</option>
					</select>
				</c:when>
				<c:when test="${dto.diseaseNo == '01'}">
					<select name="diseaseNo">
						<option value="01">당뇨</option>
						<option value="02">간질환</option>
						<option value="03">심장질환</option>
						<option value="04">신장질환</option>
						<option value="05">뇌질환</option>
						<option value="06">암</option>
						<option value="00">해당없음</option>
					</select>
				</c:when>
				<c:when test="${dto.diseaseNo == '02'}">
					<select name="diseaseNo">
						<option value="02">간질환</option>
						<option value="01">당뇨</option>
						<option value="03">심장질환</option>
						<option value="04">신장질환</option>
						<option value="05">뇌질환</option>
						<option value="06">암</option>
						<option value="00">해당없음</option>
					</select>
				</c:when>
				<c:when test="${dto.diseaseNo == '03'}">
					<select name="diseaseNo">
						<option value="03">심장질환</option>
						<option value="01">당뇨</option>
						<option value="02">간질환</option>
						<option value="04">신장질환</option>
						<option value="05">뇌질환</option>
						<option value="06">암</option>
						<option value="00">해당없음</option>
					</select>
				</c:when>
				<c:when test="${dto.diseaseNo == '04'}">
					<select name="diseaseNo">
						<option value="04">신장질환</option>
						<option value="01">당뇨</option>
						<option value="02">간질환</option>
						<option value="03">심장질환</option>
						<option value="05">뇌질환</option>
						<option value="06">암</option>
						<option value="00">해당없음</option>
					</select>
				</c:when>
				<c:when test="${dto.diseaseNo == '05'}">
					<select name="diseaseNo">
						<option value="05">뇌질환</option>
						<option value="01">당뇨</option>
						<option value="02">간질환</option>
						<option value="03">심장질환</option>
						<option value="04">신장질환</option>
						<option value="06">암</option>
						<option value="00">해당없음</option>
					</select>
				</c:when>
				<c:when test="${dto.diseaseNo == '06'}">
					<select name="diseaseNo">
						<option value="06">암</option>
						<option value="01">당뇨</option>
						<option value="02">간질환</option>
						<option value="03">심장질환</option>
						<option value="04">신장질환</option>
						<option value="05">뇌질환</option>
						<option value="00">해당없음</option>
					</select>
				</c:when>
			</c:choose>
		</td>
	</tr>

	<tr>
		<td>생년월일</td>
		<td><input type="date" name="birth" value="${dto.birth}"></td>
	</tr>

	<tr>
		<td>키</td>
		<td><input type="text" name="height" value="${dto.height}"></td>
	</tr>
	
	<tr>
		<td>체중</td>
		<td><input type="text" name="weight" value="${dto.weight}"></td>
	</tr>
</table>
<input type="submit" value="수정">
</form>
</body>
</html>