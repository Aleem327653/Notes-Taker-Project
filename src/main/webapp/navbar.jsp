
<nav class="navbar navbar-expand-lg navbar-dark " style="background-color:blue">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp">NoteTaker</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="AddNotes.jsp">Add Notes</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" href="AllNotes.jsp">Show All Notes</a>
        </li>
      </ul>
      <form class="d-flex"  action="Search" method="post">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="srch">
        <button class="btn btn-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>