
<%@ page import="java.sql.*" %>
<%
try{  

Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");  
String username=request.getParameter("userdata");
String password=request.getParameter("passdata");
PreparedStatement psmt=con.prepareStatement("select user_id,password from login where user_id = ? and password = ? ");  

psmt.setString(1,username);
psmt.setString(2,password);

ResultSet rs=psmt.executeQuery();  
if(rs.next()){
	RequestDispatcher rd=request.getRequestDispatcher("HomePage.html");
	rd.forward(request,response);
}
else{
	RequestDispatcher rd=request.getRequestDispatcher("error.html");
	rd.forward(request,response);
}
con.close();  
}
catch(Exception e)
{ 
out.println(e);
}  
%>

