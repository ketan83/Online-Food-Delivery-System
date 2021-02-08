<%@ page import="java.sql.*"%>
<%
    int id=0;
    String action=request.getParameter("action");
    if(action.equals("Change")){
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String cpassword=request.getParameter("cpassword");
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/takeaway","root","Saurabh@9915");
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select cust_id from customer where username='"+username+"'");
            if(rs.last()){
                    id=rs.getInt("cust_id");
                    stmt.executeUpdate("update customer set password='"+cpassword+"' where cust_id='"+id+"'");
                    stmt.executeUpdate("update login set password='"+cpassword+"' where username='"+username+"'");
                    response.sendRedirect("index.jsp");
                 }
            else{
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Incorrect Username');");
                    out.println("location='forgot.jsp';");
                    out.println("</script>");
            }
            con.close();
        }catch(Exception e){out.println(e);}
    }
%> 