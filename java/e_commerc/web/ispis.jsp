<%-- 
    Document   : ispis
    Created on : Nov 25, 2021, 6:06:36 PM
    Author     : KORISNIK
--%>

<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    List<String> lista;
        Object listaObject = request.getSession().getAttribute("lista");
        if(listaObject == null){
            lista = new ArrayList<String>();
            
        }else{
            lista = (ArrayList<String>) listaObject;
        }
            
%>


    <ul class="list-group">
        <c:forEach items="${lista}" var="listaItems">
            <li class="list-group-items">${listaItems}></li>
        </c:forEach>
</ul>
    <hr>

    <form action="GetItems" method="GET">
        <input type="submit" class="btn btn-success" value="Dobavi iz baze" />
        
    </form>