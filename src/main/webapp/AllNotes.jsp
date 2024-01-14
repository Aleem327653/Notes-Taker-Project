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
<title>All Notes</title>
</head>
<body>
    <div class="container-fluid m-0 p-0">
    <%@include file="navbar.jsp" %>
    </div>
    <h1 class="text-center"> All Notes:</h1>
    <div class="container text-center">
    <%
    Session s=FactoryProvider.getFactory().openSession();
    Query q=s.createQuery("from Notes");
    List<Notes> list=q.list();
    for(Notes note:list){
    	%>
    	<div class="card mt-3">
  <img src="img/icon.png" class="card-img-top mx-auto" alt="" style="max-width:100px;">
  <div class="card-body">
    <h3 class="card-title"><%= note.getTitle() %></h3>
    <p class="card-text"><%= note.getContent() %></p>
    <p class="card-text text-primary"><%= note.getAddDate() %></p>
    <div class="container text-center mt-3">
    <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
    <a href="UpdateNotes.jsp?noteid=<%= note.getId() %>" class="btn btn-primary">Update</a>
    </div>
  </div>
</div>
    	<% 
    }
    s.close();
    %>
    </div>

</body>
</html>