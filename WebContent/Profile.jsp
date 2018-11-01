<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "online_shopping_store.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>profile</title>
    <link href="css/profile.css" rel ="stylesheet" type="text/css">

</head>
<body>

<div id="wrapper">    	
	<jsp:include page="/Header.jsp"></jsp:include>
	<div id = "profile-content">
            <div class="image-con"><img src = "${imgURL}"> <br>
                </div>
            <div class = "profile-details">
                <h1>Welcome to largest online shopping store in Sri Lanka</h1>
                <table class="details-table">
                	<tr>
                		<td>Name</td>
                		<td>${cName}</td>
                	</tr>
                    <tr>
                        <td>Email</td>
                        <td>${email}</td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td>${address}</td>
                    </tr>
                </table>
            </div>
            <div class ="editbar"><a href="EditProfile">Edit Profile Details</a></div>
            <br><br><br><br><br><br><br><br><br>
            <div>
                <table class ="Order-Details">
                   
                    <tr>
                        <td width = 5%>#</td>
                        <td width = 60%>Item Name</td>
                        <td width = 15%>Quntity</td>
                        <td width = 20%>States</td>
                    </tr>
                    <tr>
                        <td width = 5%>1</td>
                        <td width = 60%>Mobile Phone</td>
                        <td width = 15%>2</td>
                        <td width = 20%>Shiped</td>
                    </tr>
                </table>
            </div>
        </div>

            
    </div>
</body>
</html>