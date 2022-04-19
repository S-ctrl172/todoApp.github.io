<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    
    <%@include file = "common/navigation.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file = "common/base.jsp" %>
<style>
body  {

  background-color: #cccccc;
}
</style>
</head>
<body>
	


<div class = "container mt-3">


<div class="row">

		<div class = "col-md-6 offset-md-3">
			<h1 class = "text-center mb-3">Welcome to our blog channel</h1>
		
		
		
		
	<form action="handle-blog" method = "post">
		<div class = "form-group">
			<label for = "name">Enter your name</label>
			<input type = "text" 
			class = "form-control" 
			id="name" 
			aria-describedly="emailHelp" 
			name="name" 
			placeholder="Enter the name here" required>
			</div>
			
			<div class = "form-group">
				<label for="description"> Description</label>
				<textarea class = "form-control" name = "description" id="description"
				row = "5" placeholder="Enter the description" required ></textarea>
			</div>
		
		
				<div class ="form-group">
					<label for = "place">Place</label>
					<input type = "text" placeholder="Enter place " name="place" 
					class="form-control" id="place" required >
				</div>
				
				 
				<div class = " text-center">
					<a href = "${pageContext.request.contextPath}/"
					class="btn btn-outline-danger">Back</a>
					<button type = "submit" class="btn btn-outline-success">Add</button>
				</div>
				
		</form>
		</div>
	</div>
</div>
</body>

</html>