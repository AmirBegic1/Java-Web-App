<%-- 
    Document   : AddToCard
    Created on : Nov 28, 2021, 2:30:11 PM
    Author     : KORISNIK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

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


            <c:forEach items="${items}" var="items">    
               <div class="container mt-100">
                    <div class="row">
                        <div class="col-md-4 col-sm-6">
                            <div class="card mb-30"><a class="card-img-tiles" href="#" data-abc="true">

                                </a>
                                <div class="card-body text-center">
                                    <h4 class="card-title"> ${items.getItemNaziv()}</h4>
                                    
                                    <p class="text-muted">Starting from ${items.getItemCijena()} KM</p>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        

 
