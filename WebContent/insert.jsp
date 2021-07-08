<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@page import="java.util.List" %>
<%@page import="com.javaex.dao.PhoneDao" %>
<%@page import="com.javaex.vo.PersonVo" %>

<%	
	request.setCharacterEncoding("UTF-8");

	PhoneDao phoneDao = new PhoneDao();

	
	/* 주소창에 쓰는 양식임!!!
	http://localhost:8088/phonebook1/
	insert.jsp?name=유재석&hp=010-2222-2222&company=02-2222-2222
	*/
	//파라미터에서 꺼내기
	String name =request.getParameter("name");
	String hp =request.getParameter("hp");
	String company =request.getParameter("company");
	
	
	System.out.println(name + ", " + hp + ", " + company);
	
	
	//PersonVo로 묶기
	PersonVo personVo = new PersonVo(name, hp, company);
	
	
	//저장하기
	phoneDao.personInsert(personVo);
	
	
// 	//리스트가져오기
// 	List<PersonVo> personList = phoneDao.getPersonList();
	
	
// 	//콘솔창에 출력
// 	System.out.println(personList.toString());

	//리다이렉트 - 두번 돌아서 리스트.jsp를 보여주는것
	response.sendRedirect("./list.jsp");
	
%>
    
<%--
리다이렉트

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전화번호 리스트-Insert</h1>
	
	<p>입력한 정보 내역입니다.</p>
	
	
	<%
		for(int i=0; i<personList.size(); i++) {
	%>
			<table border="">
				<tr>
					<td>이름</td>
					<td><%=personList.get(i).getName() %></td>
				</tr>
				<tr>
					<td>핸드폰</td>
					<td><%=personList.get(i).getHp() %></td>
				</tr>
				<tr>
					<td>회사</td>
					<td><%=personList.get(i).getCompany() %></td>
				</tr>
			
			
			</table>
			<br>
	<%
		}
	%>
	
</body>
</html>
 --%>