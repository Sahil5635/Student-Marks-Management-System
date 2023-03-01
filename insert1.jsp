
	<%@ page import="java.sql.*" %>
	<%
	
	try{  
	
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");  
	int id=Integer.parseInt(request.getParameter("sid"));
	String rollno=request.getParameter("srollno");
    int mark1=Integer.parseInt(request.getParameter("smark1"));
	int mark2=Integer.parseInt(request.getParameter("smark2"));
	int mark3=Integer.parseInt(request.getParameter("smark3"));
	
	PreparedStatement psmt=con.prepareStatement("insert into info(stu_ID,Roll_no,Mark1,Mark2,Mark3)VALUES ( ? , ? , ? ,  ? , ?  );"); 
	PreparedStatement psmt1=con.prepareStatement("insert into info1(stu_ID,cource_ID,Marks)VALUES ( ? , 'CAI_01' , ? );");   
	PreparedStatement psmt2=con.prepareStatement("insert into info1(stu_ID,cource_ID,Marks)VALUES ( ? , 'CAI_02' , ? );");   
	PreparedStatement psmt3=con.prepareStatement("insert into info1(stu_ID,cource_ID,Marks)VALUES ( ? , 'CAI_03', ? );");   
	psmt.setInt(1,id);
	psmt.setString(2,rollno);
    psmt.setInt(3,mark1);
    psmt.setInt(4,mark2);
    psmt.setInt(5,mark3);
	psmt1.setInt(1,id);
	psmt1.setInt(2,mark1);

	psmt2.setInt(1,id);
	psmt2.setInt(2,mark2);

	psmt3.setInt(1,id);
	psmt3.setInt(2,mark3);
	int x = psmt.executeUpdate();
	int y = psmt1.executeUpdate();
	int z = psmt2.executeUpdate();
	int t = psmt3.executeUpdate();

	if(x>0 && y>0 && z>0 && t>0){
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
	
	






























