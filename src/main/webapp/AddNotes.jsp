<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="css_file.jsp" %>
<title>Add Notes</title>
</head>
<body>
    <div class="container-fluid m-0 p-0">
    <%@include file="navbar.jsp" %>
    </div>
    <br>
    <h1 class="text-center"> Please Add Notes Here</h1>
    <div class="container card p-4">
    <form action="AddNoteServlet" method="post">
  <div class="mb-3">
    <label for="title" class="form-label"><h5>Title</h5></label>
    <input type="text" name="title" required class="form-control" id="title" placeholder="Enter Title Here"/>
  </div>
  
  <div class="mb-3">
    <label for="content" class="form-label"><h5>Content</h5></label>
    <TextArea name="content" class="form-control" required id="content" style="height:200px;"></TextArea>
  </div>
  <div class="container text-center">
  <button type="submit" class="btn btn-primary">Submit</button>
  </div>
</form>
</div>

</body>
</html>