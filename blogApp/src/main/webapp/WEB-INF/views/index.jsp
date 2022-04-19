<html>
<head>
	<%@include file = "common/base.jsp" %>
	    <%@include file = "common/navigation.jsp" %>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<style>
body  {

  background-color: #FFFF00;
}
</style>
</head>
<body>



	<div class = "container mt-3">
		
		<div class ="row">
			<div class ="col-md-12">
				<h1 class="text-center mb-3">POST</h1>
	
					<table class="table">
  <thead class="thead-dark">
    <tr>
    
      <th scope="col">S.NO</th>
      <th scope="col">Title</th>
      <th scope="col">Description</th>
      <th scope="col">Place</th>
      <th scope="col">Action</th>
      
    </tr>
  </thead>
  <tbody>
 
  
  <c:forEach items = "${blogs}" var = "b">
    <tr>
      <th scope="row">${b.id}</th>
      <td>${b.name}</td>
      <td>${b.description}</td>
      <td>${b.place}</td>
      <td>
      	<a href="delete/${b.id}"><i class="fa-solid fa-trash text text-danger" style="font-size:10px;"></i></a>
      	<a href="update/${b.id}"><i class="fas fa-pen-nib text text-primary" style="font-size:10px;"></i></a>
      </td>
    </tr>
</c:forEach>

	</tbody>
</table>


	<div class = "container text-center">
	
		<a href ="add-blog" class = "btn btn-outline-primary">Add Blog</a>
		<a href ="blog-posts" class = "btn btn-outline-secondary">List</a>
	</div>
			
			</div>
		</div>
		
	</div>
</body>
</html>
