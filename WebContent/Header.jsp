<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "online_shopping_store.*" %>
<%@ page import = "java.util.ArrayList" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>::Sliit Store::</title>
    <link href="css/style.css" rel ="stylesheet" type="text/css">
    </head>
<body>
    <div id="wrapper">
    <div id="header">
        <div id="subheader">
            <div class="container">
                <p>Online java web application</p>
                
                <a href="#">Sale here</a>
                <a href="#">About us</a>
                <a href="#">Home</a>
            </div>
        </div>
        <div id="mainheader">
            <div id="logo">
            <!-- logo here-->
            <img alt="logo" src="WEB-IMG/LOGO.png" width ="100px" height = "100px">
            
            </div>
            <div id="search_bar">
            <form action="post">
                <input class="searchbox" type="text" name="text" placeholder="Search items">
                <input class="searchbutton" type="submit" name="submit" value="SEARCH"> 
                </form>
            </div>
            
            <div id="action-panel">
            	
                <li><%if(User.isLogged()){ %>
                		<img alt="Login" src="WEB-IMG/login.png" width="40px" height="40px"><br>
                		<a href="Profile">Profile</a> | <a href = "logout" >Logout</a>
                	<%}else{ %>
                		<img alt="Login" src="WEB-IMG/login.png" width="40px" height="40px"><br>
                		<a href="Login.jsp">Login</a> | <a href="SignUp.jsp">Sign up </li>
                		<%} %>
                <li><a href="#"><img alt="Cart" src="WEB-IMG/shopping_cart.png" width="40px" height="40px"><br>Cart</a>  </li>
            
            </div>
            
        </div>
    </div>
        <div id="nevigation-bar">
        <div class="dropdown" id="Categories">
                <button class="dropbtn">Categories</button>
                    <div class="dropdown-content" id="Categories-list">
                        <!--conect categories database-->
                     	<%!ArrayList <String> cat1 = new ArrayList(); %>
    					<%Class.forName("com.mysql.jdbc.Driver");%>
    					<%cat1= categories.getCategories() ; %>
    					<%for(int i=0; i<cat1.size();i++){ %>
    						
    						<a href="#"><%=cat1.get(i) %></a>
    					<%} %>
                      	
                        	
                        
                        
                        
                    </div>
        </div>
        
        
        
        </div>
    		
    </div>
  
    </body>
</html>