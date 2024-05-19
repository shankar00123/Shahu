<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Users</title>
</head>
<body style="background-image: linear-gradient(red, yellow)">
<jsp:include page="menu.jsp" />
<br>

<table class="table table-striped table-dark">
  <thead>
    <tr>
     
      <th scope="col">USER NAME</th>
      <th scope="col">LAST NAME</th>
      <th scope="col">PASSWORD</th>
      
      <th scope="col">GENDER</th>
      <th scope="col">MAIL</th>
      <th scope="col">PHONE</th>
      
       <th scope="col">QUESTION</th>
      <th scope="col">ANSWER</th> 
      <th scope="col">ACTION</th>
      
      
      
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${users}" var="u">
    <tr>
    <td><c:out value="${u.userName}"></c:out></td>
     <td><c:out value="${u.lastName}"></c:out></td>
     <td><c:out value="${u.password}"></c:out></td>
     <td><c:out value="${u.gender}"></c:out></td>
     <td><c:out value="${u.mail}"></c:out></td>
     <td><c:out value="${u.phone}"></c:out></td>
     <td><c:out value="${u.question}"></c:out></td>
     <td><c:out value="${u.answer}"></c:out></td>
     
     <td> 
     <a href="delete-user-by-id?username=<c:out value="${u.userName}"></c:out>">Delete</a> |
      <a href="get-user-by-id?username=<c:out value="${u.userName}"></c:out>">Edit</a>
     </td>
    </tr>
    
    </c:forEach>
   
  </tbody>
</table>
 <jsp:include page="footer.jsp" />
</body>
</html>