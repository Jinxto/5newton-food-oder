        <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </head>
    <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-secondary">
      <a class="navbar-brand" href="/javaWebApplication/">5 Newton(1)</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
        <%if(session.getAttribute("user")== null) {%>
          <li class="nav-item active">
            <a class="nav-link" href="/javaWebApplication/LoginCTL">Login</a>
          </li>
          
          
          
          <%} %>
          
          
          <% 
          if(session.getAttribute("user")!= null)
          {%>
            <li class="nav-item active">
              <a class="nav-link" href="/javaWebApplication/LoginCTL?operation=logout">Logout</a>
            </li>  
             <li class="nav-item">
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/javaWebApplication/OrderCTL">My orders</a>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="/javaWebApplication/UserListCtl"> orders</a>
          </li>
            
          <%}
          %>
           
        </ul>
      </div>
    </nav>