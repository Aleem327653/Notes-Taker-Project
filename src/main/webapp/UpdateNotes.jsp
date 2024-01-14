<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="com.helper.FactoryProvider" %>
    <%@page import="org.hibernate.*" %>
    <%@page import="java.util.*" %>
    <%@page import="com.entities.Notes" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="css_file.jsp" %>
<title>Update Notes</title>
</head>
<body>
    <div class="container-fluid m-0 p-0">
    <%@include file="navbar.jsp" %>
    <% 
    int noteId=Integer.parseInt(request.getParameter("noteid"));
    Session s=FactoryProvider.getFactory().openSession();
    Notes note=(Notes)s.get(Notes.class, noteId);
    
    %>
    </div>
    <br>
    <h1 class="text-center"> Edit Your Notes Here</h1>
    <br>
    <div class="container card p-4">
    <form action="UpdateServlet" method="post">
  <div class="mb-3">
    <input type="hidden" value="<%=note.getId() %>"  name="noteId"/>
    <label for="title" class="form-label"><h5>Title</h5></label>
    <input type="text" name="title" 
    required class="form-control" 
    id="title" placeholder="Enter Title Here"
    value="<%= note.getTitle() %>"
    />
  </div>
  
  <div class="mb-3">
    <label for="content" class="form-label"><h5>Content</h5></label>
    <TextArea name="content" class="form-control" 
    required id="content" style="height:200px;"><%= note.getContent() %>
    </TextArea>
  </div>
  <div class="container text-center">
  <button type="submit" class="btn btn-success">Update</button>
  </div>
</form>
</div>
    

</body>
</html>