<%@ page import="java.sql.*"%>
<%
String firstName=request.getParameter("firstName");
String lastName=request.getParameter("lastName");
String email=request.getParameter("email");
String password=request.getParameter("password");
String number=request.getParameter("number");
String gender=request.getParameter("gender");

try{
    class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
    preparedStatement ps=conn.prepareStatement("insert into registration(firstName,lastName,email,password,number,gender)");
     ps.setString(1,firstName);
     ps.setString(2,lastName);
     ps.setString(3,email);
     ps.setString(4,password);
     ps.setString(5,number);
     ps.setString(6,gender);
     int x=ps.executeUpdate();
     if(x>0){
        out.println("Registration done Successfully....");
     }else{
       out.println("Registration Failed...")
     }
     


    catch(Exception e){
        out.println(e);
    }
}
%>