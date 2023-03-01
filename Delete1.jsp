
<%@ page import="java.sql.*" %>
<%
try{  
	
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");  
	int id=Integer.parseInt(request.getParameter("sid"));
	
	PreparedStatement psmt=con.prepareStatement("DELETE FROM info WHERE stu_ID=?");  
	psmt.setInt(1,id);
	PreparedStatement psmt1=con.prepareStatement("DELETE FROM info1 WHERE stu_ID=?");  
	psmt1.setInt(1,id);
	PreparedStatement psmt2=con.prepareStatement("DELETE FROM student WHERE stu_ID=?");  
	psmt2.setInt(1,id);

	
	
	int x = psmt.executeUpdate();
	int y = psmt1.executeUpdate();
	int z = psmt2.executeUpdate();
	

	if(x>0 && y>0 && z>0){
		RequestDispatcher rd=request.getRequestDispatcher("successd.html");
	    rd.forward(request,response);
	}
	else{
		RequestDispatcher rd=request.getRequestDispatcher("errord.html");
	    rd.forward(request,response);
	}


	con.close();  
	}
	catch(Exception e)
	{ 
	out.println(e);
	}  
	%>