<%@page import="java.sql.*"%> <%@page import="java.sql.ResultSet"%> <%@page
import="java.sql.Statement"%> <%@page import="java.sql.Connection"%> <% String
driverName = "com.mysql.jdbc.Driver"; String conUrl =
"jdbc:mysql://localhost:3306/ex"; String userId = "root"; String password =
"gokul"; try { Class.forName(driverName); } catch (ClassNotFoundException e) {
e.printStackTrace(); } Connection con = null; Statement st = null; ResultSet rs
= null; %>
<h2 align="center">
  <font><strong>Login authentication</strong></font>
</h2>
<% try { con = DriverManager.getConnection(conUrl, userId, password); String
name = request.getParameter("username"); String pass =
request.getParameter("password"); st = con.createStatement(); String sql =
"SELECT * FROM ex WHERE name = '" + name + "' AND id = '" + pass + "'"; rs =
st.executeQuery(sql); int rowCount = 0; while (rs.next()) { rowCount++; } if
(rowCount > 0) { %> Login Successful <% } else { %> Login failed <% } } catch
(Exception ex) { System.out.println("Statement Error: " + ex.getMessage()); }
finally { try { if (rs != null) rs.close(); if (st != null) st.close(); if (con
!= null) con.close(); } catch (SQLException e) { e.printStackTrace(); } } %>
