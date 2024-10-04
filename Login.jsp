<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<html>
<head> <title>The Publishers Database Table </title> </head>
<body>
<h1>The Publishers Database Table </h1>
<% Connection con=
DriverManager.getConnection("jdbc:mysql://localhost:3306/hero","root","hero");
Statement stmt = con.createStatement();
ResultSet resultset = stmt.executeQuery("select * from login") ; %>
<table border="1">
<tr>
<th>Name</th>
<th>Email</th>
<th>Password</th>
</tr>
<% while(resultset.next()){ %>
<tr>
<td> <%= resultset.getString(1) %></td>
<td> <%= resultset.getString(2) %></td>
<td> <%= resultset.getString(3) %></td>
</tr>
<% } %>
<% con.close(); %>
</table>
</body>
</html>