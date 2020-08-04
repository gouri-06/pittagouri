<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%
	String id = request.getParameter("userid");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "Gowri";
	String userid = "root";
	String pass = "Gowri@123";
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
	e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	int amount=1000;
	int toAccount=0;
	int remainingBal=0;
	connection = DriverManager.getConnection(connectionUrl+database, userid, pass);
	statement=connection.createStatement();
	if (request.getParameter("transfer") != null) {	
	   	   toAccount = Integer.parseInt(request.getParameter("to_account"));			 
	   	   PreparedStatement pstate = null;
	       int update = 0;
	       String query = "insert into Transactions(Amount,TransferredAccount) values('"+amount+"','"+toAccount+"')";
	       pstate = connection.prepareStatement(query);
	       update = pstate.executeUpdate();
	   if (update > 0)
	   { 
	     String  sql = "select * from Accountdetails where Accountno=56789347 ";
         resultSet = statement.executeQuery(sql);
         while(resultSet.next()){
 	     remainingBal = Integer.parseInt(resultSet.getString("Balance")) - amount ; 
 	     String dec = "UPDATE  accountdetails set Balance='"+remainingBal+"' where Accountno=56789347";
		 pstate = connection.prepareStatement(dec);
		 update = pstate.executeUpdate();
	     }
         out.println("<h1 align = center>Amount Transferred Successfully!");
         out.println("<h1>Remaining Balance :" +remainingBal);
     %>
      
     <%
	   }
	   else 
	   {
		  out.println("<h1>Error, Not Sent!");
	   }
	  
   }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transactions</title>
</head>
<body>
	<h1>The last five Transactions : </h1>
	<table border="2">
	<tr>
	  <td>Transaction ID</td>
      <td>Date of Transaction</td>
      <td>Amount</td>
      <td>Transferred Account Number</td>
    </tr>
<%
	try{
	connection = DriverManager.getConnection(connectionUrl+database, userid, pass);
	statement=connection.createStatement();
	String sql ="select * from Transactions order by Transactionid desc limit 5";
	resultSet = statement.executeQuery(sql);
	while(resultSet.next()){
%>
	<tr>
	  <td><%=resultSet.getString("Transactionid") %></td>
      <td><%=resultSet.getString("DateofTransaction") %></td>
      <td><%=resultSet.getString("Amount") %></td>
      <td><%=resultSet.getString("TransferredAccount") %></td>
    </tr>
<%
    }
    connection.close();
    } catch (Exception e) {
      e.printStackTrace();
    }
%>
</table>
</body>
</html>