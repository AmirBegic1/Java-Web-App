<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Mini E-Commerce</a>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home.jsp">Home</a>
        </li>
        <c:if test="${user.role == 1}">
          <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="items.jsp">Add Item</a>
        </li>
        </c:if>
        <c:if test="${user.role == 2}">
          <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="AddToCard.jsp">Ordred Items</a>
        </li>
        </c:if>
        
      </ul>     
        
      <c:if test="${user.role != 3}">
        <form action="Logout" method="POST" class="d-flex">
            <span class="navbar-text" style="margin-right: 10px">username: ${user.username}</span>  
            <button class="btn btn-outline-danger" type="submit">Log out</button>
        </form>
            
      </c:if>
      <c:if test="${user.role == 3}">
        <form action="Logout" method="POST" class="d-flex">
            <span class="navbar-text" style="margin-right: 10px">username: ${user.username}</span>  
            <button class="btn btn-outline-success" type="submit">Login</button>
        </form>
      </c:if>   
        
    </div>
  </div>
</nav>
<hr>









    




