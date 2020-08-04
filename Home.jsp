<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
     <style>
     body
     {
       background-image : url("https://comps.canstockphoto.com/business-concept-online-banking-on-drawing_csp16956748.jpg");
       background-repeat : no-repeat;
       background-size:cover;
     }
     </style>
<body>
     <h1 align="center" style="color:white"><strong>Welcome to online Banking</strong></h1><br><br>
     <h2 align="center" style="color:white"><font><strong>Transfer Amount Rs.1000 </strong></font></h2>
     <form method="get" action="Action.jsp">
        <table align="center" cellpadding="5" cellspacing="5" border="1">
        <tr>
          <td style="color:white"><strong>From A/C No</strong></td>
          <td><input type="text" readonly value="56789347" name="from_account"/></td>
        </tr>
        <tr>
          <td style="color:white"><strong>To A/C No</strong></td>
          <td><input type="text" readonly value="12345678" name="to_account"/></td>
        </tr> 
        <tr>
          <td  colspan="2" align="center"><input type= "submit" name="transfer" style="width:150px" value="Transfer"/></td>
        </tr>

        </table>
     </form>
</body>
</html>