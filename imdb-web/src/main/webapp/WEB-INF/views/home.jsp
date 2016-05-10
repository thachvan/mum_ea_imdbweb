<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>IMDB - EA project</title>
	
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" />
</head>

<body>
	<h1>IMDB</h1>
	
	<form class="form-horizontal" role="form"> 
   <div class="form-group"> 
      <label for="firstname" class="col-sm-2 control-label">First Name</label> 
      <div class="col-sm-10"> 
         <input type="text" class="form-control" id="firstname"  
            placeholder="Enter First Name"> 
      </div> 
   </div> 
   <div class="form-group"> 
      <label for="lastname" class="col-sm-2 control-label">Last Name</label> 
      <div class="col-sm-10"> 
         <input type="text" class="form-control" id="lastname"  
            placeholder="Enter Last Name"> 
      </div> 
   </div> 
   <div class="form-group"> 
      <div class="col-sm-offset-2 col-sm-10">
       <div class="checkbox"> 
            <label> 
               <input type="checkbox"> Remember me 
            </label> 
         </div> 
      </div> 
   </div> 
   <div class="form-group"> 
      <div class="col-sm-offset-2 col-sm-10"> 
         <button type="submit" class="btn btn-default">Sign in</button> 
      </div> 
   </div> 
</form> 
</body>

</html>