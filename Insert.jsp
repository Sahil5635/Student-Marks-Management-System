
	<%@ page import="java.sql.*" %>
	<%
	
	try{  
	
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");  
	int id=Integer.parseInt(request.getParameter("sid"));
	String name=request.getParameter("sname");
	String batch=request.getParameter("sbatch");
	int age=Integer.parseInt(request.getParameter("sage"));
	String gender=request.getParameter("sgender");
	
	PreparedStatement psmt=con.prepareStatement("insert into student(stu_ID,stu_name,Batch,stu_Age,Gender)VALUES ( ? , ? , ? ,  ? , ?  );");  
	psmt.setInt(1,id);
	psmt.setString(2,name);
	psmt.setString(3,batch);
	psmt.setInt(4,age);
	psmt.setString(5,gender);
	int x = psmt.executeUpdate();
	

	if(x>0){
		RequestDispatcher rd=request.getRequestDispatcher("insert1.html");
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
	
	






























