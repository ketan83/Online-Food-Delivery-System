<%@ page import="java.sql.*"%>
<%
    int id=0;
    int count;
    String action=request.getParameter("action");
    if(action.equals("submit")){
        String name=request.getParameter("name");
        String address=request.getParameter("address");
        String phone_no=request.getParameter("phone");
        String username=request.getParameter("username");
        String password=request.getParameter("cpassword"); 
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/takeaway","root","Saurabh@9915");
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select count(*) from customer where username='"+username+"'");
            rs.next();
            count=rs.getInt("count(*)");
            if(count==0){
                    rs=stmt.executeQuery("select cust_id from customer");
                    if(rs.last()){
                         id=rs.getInt("cust_id")+1;
                    }
                    stmt.executeUpdate("insert into customer values('"+id+"','"+name+"','"+address+"','"+phone_no+"','"+username+"','"+password+"')");
                    stmt.executeUpdate("insert into login values('"+username+"','"+password+"')");
                    response.sendRedirect("index.jsp");
                 }
            else{
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Username or password incorrect');");
                    out.println("location='register.jsp';");
                    out.println("</script>");
            }
        }catch(Exception e){out.println(e);}
    }
%> 