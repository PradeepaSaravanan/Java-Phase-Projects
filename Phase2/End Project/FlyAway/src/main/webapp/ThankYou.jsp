<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="model.Search" %>
<%@ page import="model.Booking" %>
<%
    Booking.name_on_card = request.getParameter("name_on_card");
    Booking.card_details = request.getParameter("card_details");

    if (Booking.name_on_card.equals("") || Booking.card_details.equals("")) {
        out.println("Please enter valid card details");
    }
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thank You</title>
</head>
<body>


     <h1 style="color:red" align="center"><span><strong>Thank You</strong></span></h1>
       
        <h3 style="color:mediumSeaGreen" align="center"><span><strong>Flight ticket  has booked succesfully !!!!</strong></span></h3>
        <center>
    <div style="border:2px solid black;width:50%;border-radius:20px;padding:20px" align="center">
    <table>
    <tr><td>
    <h3 style="color:blue">Ticket Details</h3>
        <h4><strong><%=Search.source%> to <%=Search.destination%> | <%=Search.date%> (<%=Search.day%>)</strong></h4>
        <p align="left"><%=Booking.flight_booking_id%> - <%=Booking.flight_name%> (Travellers <%=Search.persons%>)</p><br>
    </td></tr>
    
    <tr><td>
    <h3 style="color:blue"><strong>Passenger Summary</strong></h3>
        <h3>Booking Name-<%=Booking.passenger_name%> | Email- <%=Booking.passenger_email%> | Phone- <%=Booking.passenger_phone%></h3>
    </td></tr>
    
    <tr><td>
      <h3 style="color:blue"><strong>Payment Summary</strong></h3>
        <h4>Payment By-<%=Booking.name_on_card%> | Card No- <%=Booking.card_details%></h4><br>
        <h2 align="right"><strong>Total Paid- Rs.<%=Search.persons*Booking.ticket_price%></strong></h2><br><br>
    </td></tr>
    
    <tr>
    <td> <p><button onclick="window.print()" >Print Ticket</button></p>
    </td></tr>
<!--  
<tr><td>
<h2 align="left">  
<a href="ULogin.jsp">Go to Login</a> </h2> 

</td></tr>
  
<tr><td>
<h2 align="right">
<a href="logout.jsp">exit from the session</a> </h2>
</td></tr>-->
    </table>
    </div>
  <h2>
  
   <a href="ULogin.jsp">Go to Login</a> </h2>
  <h2><a href="logout.jsp">Exit from the session</a> </h2>
  <h2> <a href="Index.jsp"> Go to welcome page</a> 
 </center>

</body>
</html>