<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
    
    
        <%@include file = "common/navigation.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file = "common/base.jsp" %>
</head>
<body>
	


<div class = "container mt-3">
<div class="row">
		<div class = "col-md-6 offset-md-3">
		<h1 class = "text-center mb-3">Change Product Detail Here</h1>
		
		<form action="${pageContext.request.contextPath}/handle-blog" method = "post">
		<input type = "hidden" value="${blog.id}" name="id"/>
		
		<div class = "form-group">
			<label for = "name">Enter your name</label>
			<input type = "text" 
			class = "form-control" 
			id="name" 
			aria-describedly="emailHelp" 
			name="name" 
			placeholder="Enter the name here"
			value="${blog.name}">
			</div>
			
			<div class = "form-group">
				<label for="description"> Description</label>
				<textarea class = "form-control" name = "description" id="description" row = "5" placeholder="Enter the description">${blog.description}</textarea>
			</div>
		
		
				<div class ="form-group">
					<label for = "place">Place</label>
					<input type = "text" placeholder="Enter place " name="place" 
					class="form-control" id="place" value="${blog.place}">
				</div>
				
				 
				<div class = "text-center">
					<a href = "${pageContext.request.contextPath}/"
					class="btn btn-outline-danger">Back</a>
					<button type = "submit" class="btn btn-warning">Update</button>
				</div>
				
		</form>
		</div>
	</div>
</div>
</body>

</html>