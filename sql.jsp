<%@page import="java.sql.DriverManager"%> <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%> <%@page import="java.sql.Connection"%> <%
String id = request.getParameter("userId"); String driverName =
"com.mysql.jdbc.Driver"; String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "goku"; String userId = "root"; String password = "gokul"; try {
Class.forName(driverName); } catch (ClassNotFoundException e) {
e.printStackTrace(); } Connection connection = null; Statement statement = null;
ResultSet resultSet = null; %>
<h2 align="center">
  <font><strong>Retrieve students data from goku database in jsp</strong></font>
</h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
  <tr></tr>
  <tr bgcolor="#D91C9K">
    <td><b>name</b></td>
    <td><b>id</b></td>
  </tr>
  <% try{ connection = DriverManager.getConnection(connectionUrl+dbName, userId,
  password); statement=connection.createStatement(); String sql ="SELECT * FROM
  goku"; resultSet = statement.executeQuery(sql); while(resultSet.next()){ %>
  <tr bgcolor="#DEB796">
    <td><%=resultSet.getString("name") %></td>
    <td><%=resultSet.getString("id") %></td>
  </tr>
  <% } } catch (Exception e) { e.printStackTrace(); } %>
</table>
