
	<%@ page import="java.sql.*" %>
	<%
	
	try{  
	
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");  
	int id=Integer.parseInt(request.getParameter("sid"));
	String courseid=request.getParameter("scouid");
    int mark4=Integer.parseInt(request.getParameter("smark4"));
	
	
	PreparedStatement psmt=con.prepareStatement("insert into info1(stu_ID,cource_ID,MarkS)VALUES ( ? , ? , ? );");  
	psmt.setInt(1,id);
	psmt.setString(2,courseid);
    psmt.setInt(3,mark4);
   
	int x = psmt.executeUpdate();
	

	if(x>0){
		RequestDispatcher rd=request.getRequestDispatcher("success.html");
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
	
	






























