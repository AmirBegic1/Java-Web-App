<%-- 
    Document   : list_DB2
    Created on : Nov 26, 2021, 3:19:14 PM
    Author     : KORISNIK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Items from DB</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    </head>
    
    <body>
         <ul class="list-group" action="deleteDB2" >
            <c:forEach items="${items}" var="items">    
               <div class="container mt-100">
                    <div class="row">
                        <div class="col-md-4 col-sm-6">
                            <div class="card mb-30"><a class="card-img-tiles" href="#" data-abc="true">

                                </a>
                                <div class="card-body text-center">
                                    <h4 class="card-title"> ${items.getItemNaziv()}</h4>
                                    <form action="AddToCard" method="POST">
                                    <p class="text-muted">Starting from ${items.getItemCijena()} KM</p><a class="btn btn-outline-primary btn-sm" data-abc="true" >Kupi Sada!</a>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </ul>
    </body> 
    <a type="button" class="btn btn-danger" href="home.jsp">BACK TO HOME PAGE</a>
</html>
