<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<form method="post">

<table border="2">
   <tr>
        <th>Item ID</th>
        <th>Item Name</th>
        <th>Item Amount</th>
   </tr>
   <%
   try
   {
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/takeaway","root","Saurabh@9915");
       Statement stmt=con.createStatement();
       ResultSet rs=stmt.executeQuery("select * from menu");
       while(rs.next())
       {
   %>
   <td><%= rs.getInt("item_id")%></td>
   <td><%= rs.getString("item_name")%></td>
           <td><%= rs.getInt("item_amt")%></td>
   <%
       }
   %>
   </table>
   <%
        rs.close();
        stmt.close();
        con.close();
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>
</form>