<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file = "common/base.jsp" %>
    <%@include file = "common/navigation.jsp" %>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<meta charset="ISO-8859-1">



  
<title>BlogPost</title>

<style>
body  {

  background-color: #CCEEFF;
}
</style>
</head>
<body>



<nav class="navbar navbar-inverse">
  <div class="container-fluid">
   <!--  <a class="navbar-brand" href="#">Navbar scroll</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Link
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled">Link</a>
        </li>
      </ul>-->
      <div class="dropdown show">
  <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    TaskBar
  </a>

  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    <a class="dropdown-item" href="add-blog">Add Blog</a>
    <!-- <a class="dropdown-item" href="#">Another action</a>-->
    <a class="dropdown-item" href="${pageContext.request.contextPath}/">List</a>
  </div>
</div>
      <form class="d-flex">
        <input class="form-control me-2" type="search" onKeyUp="search()" id="searchArea"
        placeholder="Search" aria-label="Search">
       <!--  <button class="btn btn-outline-success" type="submit">Search</button>-->
      </form>
  
  </div>
</nav>
<script>
function search(){
    const filter = document.getElementById("searchArea").value.toUpperCase();

    const list = document.getElementById("list");
    const box = list.getElementsByTagName("div");

    for(let i = 0; i < box.length ; i++){
        const availableDocumentName = box[i].getElementsByTagName("h5")[0];

        if(availableDocumentName){
            const name = availableDocumentName.innerText || availableDocumentName.innerHTML;
            if(name.toUpperCase().indexOf(filter) > -1){
                box[i].style.display = "";
            }
            else{
                box[i].style.display = "none";
            }
        }
    }
}

</script>





<div class = "container text-center mt-5">
<div class="row" id="list">




 <c:forEach items = "${blogs}" var = "b">
   <div class="col">
 
	<div class="card mb-5"  style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">${b.id}</h5>
    <h6 class="card-subtitle mb-2 text-muted">${b.name}</h6>
    <p class="card-text">${b.description}</p>
  <!--   <a href="#" class="card-link">Card link</a>
    <a href="#" class="card-link">Another link</a>-->
    
 
    

    
    
    
    <a href="delete/${b.id}"><i class="fa-solid fa-trash text text-danger" ></i></a>
      	<a href="update/${b.id}"><i class="fas fa-pen-nib text text-primary" ></i></a>
  </div>
</div>
</div>
</c:forEach>
</div>
</div>

<div class = "container text-center">
<a href ="add-blog" class = "btn btn-outline-primary">Add Blog</a>
<a href = "${pageContext.request.contextPath}/" class="btn btn-outline-danger">Back</a>
</div>






</body>
</html>