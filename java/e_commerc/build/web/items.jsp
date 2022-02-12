<%-- 
    Document   : items
    Created on : Nov 24, 2021, 12:19:56 AM
    Author     : KORISNIK
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<form action="items" method="POST">
        <div class="mb-3" >
          <label for="itemNaziv" class="form-label">Naziv Proizvoda</label>
          <input type="text" class="form-control" id="itemNaziv" name="itemNaziv" aria-describedby="itemNaziv" >
          <div id="nazivItem" class="form-text">ovo moze vidjeti samo admin.</div>
        </div>
        <div class="mb-3" >
          <label for="itemCijena" class="form-label">Cijena</label>
          <input type="number" class="form-control" id="itemCijena" name="itemCijena">
        </div>
        <div class="mb-3 form-check" >
          <input type="checkbox" class="form-check-input" id="exampleCheck1">
          <label class="form-check-label" for="exampleCheck1">Potvrdi dodavanje</label>
        </div>
        <button type="submit" value="submit" class="btn btn-primary">Dodaj</button>
        <button type="submit" value="submit" class="btn btn-primary" href="home.jsp">Nazad</button>
</form>

